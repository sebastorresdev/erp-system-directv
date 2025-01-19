using ErpSystemDirectv.Domain.Entities;
using ErrorOr;
using MediatR;

namespace ErpSystemDirectv.Application.Users.Queries.GetUser;
public record GetUsersByUsernameOrEmailQuery(
    string Search) 
    : IRequest<ErrorOr<List<User>>>;