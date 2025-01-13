using ErpSystemDirectv.Application.Common.Behaviors;
using ErpSystemDirectv.Application.Common.Interfaces;
using ErpSystemDirectv.Application.Login.Services;
using FluentValidation;
using Microsoft.Extensions.DependencyInjection;

namespace ErpSystemDirectv.Application;
public static class DependencyInjection
{
    public static IServiceCollection AddApplication(this IServiceCollection services)
    {
        services.AddMediatR(options =>
        {
            options.RegisterServicesFromAssembly(typeof(DependencyInjection).Assembly);

            options.AddOpenBehavior(typeof(AuthorizationBehavior<,>));
            options.AddOpenBehavior(typeof(ValidationBehavior<,>));
        });

        services.AddValidatorsFromAssemblyContaining(typeof(DependencyInjection));

        services.AddScoped<IPasswordHasher, PasswordHasher>();

        return services;
    }
}
