using ErpSystemDirectv.Api.Extensions;
using ErpSystemDirectv.Application.Users.Commands.CreateUser;
using ErpSystemDirectv.Contracts.Users;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace ErpSystemDirectv.Api.Controllers;

[Route("api")]
public class UserController : ApiController
{
    private readonly ISender _mediator;

    public UserController(ISender mediator)
    {
        _mediator = mediator;
    }

    [Route("user")]
    public async Task<IActionResult> CreateUser(CreateUserRequest request)
    {
        var query = new CreateUserCommand(request.Username, request.Password, request.Email, request.EmployeeId);

        var userResult = await _mediator.Send(query);

        return userResult.Match(
            result => Ok(result.MapToUserResponse()),
            Problem);
    }
}