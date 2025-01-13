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
            .Where(u => !u.IsDeleted && u.Username == userName)
            .Include(u => u.Employee)
            .Include(u => u.UserRoles)
                .ThenInclude(ur => ur.Role)
                    .ThenInclude(r => r.RolePermissions)
                        .ThenInclude(rp => rp.Permission)
            .FirstOrDefaultAsync();
    }

    public async Task<User> CreateUser(User user)
    {
        await _context.Users.AddAsync(user);
        await _context.SaveChangesAsync();
        return user;
    }
}