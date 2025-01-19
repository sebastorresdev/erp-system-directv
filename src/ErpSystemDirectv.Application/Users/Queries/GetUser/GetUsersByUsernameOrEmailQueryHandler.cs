using ErpSystemDirectv.Application.Common.Interfaces;
using ErpSystemDirectv.Domain.Entities;
using ErrorOr;
using MediatR;

namespace ErpSystemDirectv.Application.Users.Queries.GetUser;
public class GetUsersByUsernameOrEmailQueryHandler : IRequestHandler<GetUsersByUsernameOrEmailQuery, ErrorOr<List<User>>>
{
    private readonly IUserRepository _userRepository;

    public GetUsersByUsernameOrEmailQueryHandler(IUserRepository userRepository)
    {
        _userRepository = userRepository;
    }

    public async Task<ErrorOr<List<User>>> Handle(GetUsersByUsernameOrEmailQuery request, CancellationToken cancellationToken)
    {
        if (string.IsNullOrEmpty(request.Search))
        {
            return Error.Validation(description: "El campo de búsqueda no puede estar vacío.");
        }

        var users = await _userRepository.GetUsersByUsernameOrEmail(request.Search.Trim());

        return users;
    }
}
