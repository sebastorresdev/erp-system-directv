using ErpSystemDirectv.Application.Common.Interfaces.Authentication;
using ErpSystemDirectv.Application.Common.Services;
using ErpSystemDirectv.Infrastructure.Authentication;
using ErpSystemDirectv.Infrastructure.Services;

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

        return services;
    }
}
