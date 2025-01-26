using ErpSystemDirectv.Domain.Entities;

namespace ErpSystemDirectv.Application.Common.Interfaces;

public interface IUserRepository
{
    Task<User?> GetUserByUsername(string username);
    Task<User?> GetUserByEmail(string email);
    Task<User> CreateUser(User user);
    Task<List<User>> GetAllUsers();
    Task<List<User>> GetUsersByUsernameOrEmail(string search);
    Task<User?> GetUserWithRolesAndPermissionsAsync(string username);
}