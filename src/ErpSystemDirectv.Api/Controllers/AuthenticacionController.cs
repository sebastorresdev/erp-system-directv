using ErpSystemDirectv.Application.Services.Authentication;
using ErpSystemDirectv.Contracts.Authentication;
using Microsoft.AspNetCore.Mvc;

namespace ErpSystemDirectv.Api.Controllers;

[ApiController]
[Route("auth")]
public class AuthenticacionController : ControllerBase
{
    private readonly IAuthenticationService _authenticationService;

    public AuthenticacionController(IAuthenticationService authenticationService)
    {
        _authenticationService = authenticationService;
    }

    [Route("login")]
    public IActionResult Login(LoginRequest request)
    {
        var result = _authenticationService.LoginService(request.Username, request.Password);

        AuthenticationResponse response = new(
            result.Id,
            result.FullName,
            result.UserName,
            result.Token);

        return Ok(response);
    }
}
