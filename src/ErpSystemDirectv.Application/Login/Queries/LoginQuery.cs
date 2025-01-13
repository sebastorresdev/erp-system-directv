using ErrorOr;
using MediatR;

namespace ErpSystemDirectv.Application.Login.Queries;

public record LoginQuery(
    string Username,
    string Password) : IRequest<ErrorOr<LoginResult>>;