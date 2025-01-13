using ErpSystemDirectv.Domain.Entities;

namespace ErpSystemDirectv.Application.Common.Interfaces;

public interface IUserRepository
{
    Task<User?> GetUserByUsername(string username);
    Task<User> CreateUser(User user);
}