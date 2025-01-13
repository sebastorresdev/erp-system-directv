using ErpSystemDirectv.Application.Common.Interfaces;
using ErpSystemDirectv.Infrastructure.Persistence;
using ErpSystemDirectv.Infrastructure.Repositories;
using ErpSystemDirectv.Infrastructure.Services;
using ErpSystemDirectv.Infrastructure.TokenGenerator;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace ErpSystemDirectv.Infrastructure;
public static class DependecyInjection
{
    public static IServiceCollection AddInfrastructure(this IServiceCollection services, IConfiguration configuration)
    {
        services.Configure<JwtSettings>(configuration.GetSection(JwtSettings.SectionName));
        services.AddSingleton<IJwtTokenGenerator, JwtTokenGenerator>();
        services.AddSingleton<IDateTimeProvider, DateTimeProvider>();

        services.AddScoped<IUserRepository, UserRepository>();

        var connectionString = configuration.GetConnectionString("DefaultConnection");
        services.AddDbContext<AppDbContext>(options =>
            options.UseNpgsql(connectionString));

        return services;
    }
}
