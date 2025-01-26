using ErpSystemDirectv.Application.Common.Interfaces;
using ErpSystemDirectv.Domain.Entities;
using ErrorOr;
using MediatR;

namespace ErpSystemDirectv.Application.Users.Commands.CreateUser;

public class CreateUserCommandHandler : IRequestHandler<CreateUserCommand, ErrorOr<User>>
{
    private readonly IUserRepository _userRepository;
    private readonly IPasswordHasher _passwordHasher;

    public CreateUserCommandHandler(IUserRepository userRepository, IPasswordHasher passwordHasher)
    {
        _userRepository = userRepository;
        _passwordHasher = passwordHasher;
    }

    public async Task<ErrorOr<User>> Handle(CreateUserCommand request, CancellationToken cancellationToken)
    {
        // Validacion de usuario si ya existe en la base de datos
        if (await _userRepository.GetUserByUsername(request.Username) is not null)
        {
            return Error.Conflict(description: "Usuario ya existe");
        }

        if (await _userRepository.GetUserByEmail(request.Email) is not null)
        {
            return Error.Conflict(description: "Email ya existe");
        }

        var password = request.Password == null ? null : _passwordHasher.HashPassword(request.Password);

        var user = new User
        {
            Id = Guid.NewGuid(),
            Username = request.Username,
            Password = password,
            Email = request.Email,
            EmployeeId = request.EmployeeId,
            Img = request.Image,
        };

        await _userRepository.CreateUser(user);

        return user;
    }
}