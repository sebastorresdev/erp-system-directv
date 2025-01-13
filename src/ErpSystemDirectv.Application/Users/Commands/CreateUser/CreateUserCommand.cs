using ErpSystemDirectv.Domain.Entities;
using ErrorOr;
using MediatR;

namespace ErpSystemDirectv.Application.Users.Commands.CreateUser;

public record CreateUserCommand(
    string Username,
    string Password,
    string Email,
    Guid EmployeeId)
    : IRequest<ErrorOr<User>>;