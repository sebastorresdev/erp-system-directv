using ErpSystemDirectv.Application.Login.Queries;
using ErpSystemDirectv.Contracts.Login;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace ErpSystemDirectv.Api.Controllers;

[Route("auth")]
public class AuthenticacionController : ApiController
{
    private readonly ISender _mediator;

    public AuthenticacionController(ISender mediator)
    {
        _mediator = mediator;
    }

    [Route("login")]
    public async Task<IActionResult> Login(LoginRequest request)
    {
        var query = new LoginQuery(request.Username, request.Password);

        var authResult = await _mediator.Send(query);

        return authResult.Match(
            result => Ok(MapAuthResult(result)),
            Problem);
    }

    private LoginResponse MapAuthResult(LoginResult result)
    {
        return new LoginResponse(
                    result.Id,
                    result.Token);
    }

}
