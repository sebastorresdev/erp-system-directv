namespace ErpSystemDirectv.Application.Services.Authentication;
public record AuthenticationResult(
    Guid Id,
    string FullName,
    string UserName,
    string Token);
