using ErpSystemDirectv.Application.Common.Interfaces;
using ErpSystemDirectv.Domain.Entities;
using ErpSystemDirectv.Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;

namespace ErpSystemDirectv.Infrastructure.Repositories;

public class UserRepository : IUserRepository
{
    private readonly AppDbContext _context;

    public UserRepository(AppDbContext context)
    {
        _context = context;
    }

    public async Task<User?> GetUserByUsername(string userName)
    {
        return await _context.Users
            .FirstOrDefaultAsync(u => u.Active == true && u.Username == userName);
            
    }

    public async Task<User> CreateUser(User user)
    {
        await _context.Users.AddAsync(user);
        await _context.SaveChangesAsync();
        return user;
    }

    public async Task<List<User>> GetUsersByUsernameOrEmail(string search)
    {
        var query = _context.Users.Where(u => u.Active == true);

        query = query.Where(u =>
            u.Username.Contains(search) ||
            u.Email.Contains(search));

        return await query.ToListAsync();
    }

    public async Task<List<User>> GetAllUsers()
    {
        return await _context.Users.Where(u => u.Active == true).ToListAsync();
    }

    public async Task<User?> GetUserWithRolesAndPermissionsAsync(string username)
    {
        return await _context.Users
            .Include(u => u.UserRoleUsers)
            .ThenInclude(ur => ur.Role)
            .ThenInclude(r => r.RolePermissions)
            .ThenInclude(rp => rp.Permission)
            .FirstOrDefaultAsync(u => u.Username == username);
    }
}