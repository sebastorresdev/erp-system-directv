using ErpSystemDirectv.Application.Common.Interfaces;
using ErrorOr;
using MediatR;

namespace ErpSystemDirectv.Application.Login.Queries;

public class LoginQueryHandle : IRequestHandler<LoginQuery, ErrorOr<LoginResult>>
{
    private readonly IJwtTokenGenerator _jwtTokenGenerator;
    private readonly IUserRepository _userRepository;

    public LoginQueryHandle(IJwtTokenGenerator jwtTokenGenerator, IUserRepository userRepository)
    {
        _jwtTokenGenerator = jwtTokenGenerator;
        _userRepository = userRepository;
    }

    public async Task<ErrorOr<LoginResult>> Handle(LoginQuery query, CancellationToken cancellationToken)
    {
        var user = await _userRepository.GetUserByUsername(query.Username);

        if (user == null)
        {
            return Error.NotFound(description: "Usuario no encontrado");
        }

        if (user.Password != query.Password)
        {
            return Error.Unauthorized(description: "Contraseña incorrecta");
        }

        var permissions = user.UserRoles.SelectMany(ur => ur.Role.RolePermissions
                .Select(rp => rp.Permission.Name))
                .Distinct()
                .ToList();

        var roles = user.UserRoles.Select(ur => ur.Role.Name).ToList();

        var token = _jwtTokenGenerator.GenerateToken(user.Id, query.Username, permissions, roles);

        return new LoginResult(
            user.Id,
            token
        );
    }
}