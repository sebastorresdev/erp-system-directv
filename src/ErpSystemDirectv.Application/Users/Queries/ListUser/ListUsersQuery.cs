using ErpSystemDirectv.Domain.Entities;
using ErrorOr;
using MediatR;

namespace ErpSystemDirectv.Application.Users.Queries.ListUser;
public record ListUsersQuery() : IRequest<ErrorOr<List<User>>>;
