using ErpSystemDirectv.Api.Extensions;
using ErpSystemDirectv.Application.Users.Commands.CreateUser;
using ErpSystemDirectv.Application.Users.Queries.GetUser;
using ErpSystemDirectv.Application.Users.Queries.ListUser;
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

    [HttpGet("user")]
    public async Task<IActionResult> GetUsersByUsernameOrEmail([FromQuery] string search)
    {
        var query = new GetUsersByUsernameOrEmailQuery(search);

        var result = await _mediator.Send(query);

        return result.Match(
            response => Ok(response.Select(r => r.MapToUserResponse())),
            Problem);
    }

    [HttpGet("user/all")]
    public async Task<IActionResult> GetAllUsers()
    {
        var query = new ListUsersQuery();

        var result = await _mediator.Send(query);

        return result.Match(
            response => Ok(response.Select(r => r.MapToUserResponse())),
            Problem);
    }
}