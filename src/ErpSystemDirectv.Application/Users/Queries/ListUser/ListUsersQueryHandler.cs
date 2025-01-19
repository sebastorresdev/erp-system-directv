using ErpSystemDirectv.Application.Common.Interfaces;
using ErpSystemDirectv.Domain.Entities;
using ErrorOr;
using MediatR;

namespace ErpSystemDirectv.Application.Users.Queries.ListUser;
public class ListUsersQueryHandler : IRequestHandler<ListUsersQuery, ErrorOr<List<User>>>
{
    private readonly IUserRepository _userRepository;
    public ListUsersQueryHandler(IUserRepository userRepository)
    {
        _userRepository = userRepository;
    }

    public async Task<ErrorOr<List<User>>> Handle(ListUsersQuery request, CancellationToken cancellationToken)
    {
        var users = await _userRepository.GetAllUsers();

        return users;
    }
}
