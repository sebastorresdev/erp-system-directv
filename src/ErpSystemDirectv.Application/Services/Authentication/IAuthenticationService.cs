namespace ErpSystemDirectv.Application.Services.Authentication;
public interface IAuthenticationService
{
    AuthenticationResult LoginService(string username, string password);
}
