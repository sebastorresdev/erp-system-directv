namespace ErpSystemDirectv.Contracts.Authentication;
public record AuthenticationResponse(
    Guid Id,
    string FullName,
    string UserName,
    string Token);