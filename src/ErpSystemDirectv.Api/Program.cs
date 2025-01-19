using ErpSystemDirectv.Api.Middleware;
using ErpSystemDirectv.Application;
using ErpSystemDirectv.Infrastructure;

var builder = WebApplication.CreateBuilder(args);
{
    builder.Services.AddCors(options =>
    {
        options.AddPolicy("AllowSpecificOrigin",
            builder =>
            {
                builder.WithOrigins("http://localhost:4200")
                    .AllowAnyHeader()
                    .AllowAnyOrigin()
                    .AllowAnyMethod();
            });
    });

    builder.Services
        .AddApplication()
        .AddInfrastructure(builder.Configuration);
    
    builder.Services.AddControllers();
    builder.Services.AddExceptionHandler<GlobalExceptionHandler>();
}

var app = builder.Build();
{
    app.UseCors("AllowSpecificOrigin");
    app.UseHttpsRedirection();
    app.MapControllers();
    app.Run();
}