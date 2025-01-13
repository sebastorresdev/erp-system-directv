using System.Net;
using System.Text.Json;
using FluentValidation;
using Microsoft.AspNetCore.Diagnostics;

namespace ErpSystemDirectv.Api.Middleware;

public class GlobalExceptionHandler : IExceptionHandler
{
    private readonly ILogger<GlobalExceptionHandler> _logger;

    public GlobalExceptionHandler(ILogger<GlobalExceptionHandler> logger)
    {
        _logger = logger;
    }

    public async ValueTask<bool> TryHandleAsync(
        HttpContext httpContext, 
        Exception exception, 
        CancellationToken cancellationToken)
    {
        await HandleExceptionAsync(httpContext, exception, cancellationToken);

        return true;
    }

    private static Task HandleExceptionAsync(HttpContext context, Exception exception, CancellationToken cancellationToken)
    {
        var code = HttpStatusCode.InternalServerError;
        string? result;
        
        if (exception is ValidationException)
        {
            code = HttpStatusCode.BadRequest;
            result = JsonSerializer.Serialize(new { error = exception.Message });
        }
        else
        {
            result = JsonSerializer.Serialize(new { error = "An error occurred" });
        }

        context.Response.ContentType = "application/json";
        context.Response.StatusCode = (int)code;

        return context.Response.WriteAsync(result, cancellationToken);
    }
}