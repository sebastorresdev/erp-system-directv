using ErpSystemDirectv.Application.Common.Interfaces.Authentication;

namespace ErpSystemDirectv.Application.Services.Authentication;
public class AuthenticationService : IAuthenticationService
{
    private readonly IJwtTokenGenerator _jwtTokenGenerator;

    public AuthenticationService(IJwtTokenGenerator jwtTokenGenerator)
    {
        _jwtTokenGenerator = jwtTokenGenerator;
    }

    public AuthenticationResult LoginService(string userName, string password)
    {
        // obtener el id del usuario logeado
        var userId = Guid.NewGuid();

        var token = _jwtTokenGenerator.GenerateToken(userId, userName);

        return new AuthenticationResult(
            userId,
            "Sebastian Torres",
            userName,
            token);
    }
}
