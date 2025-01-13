namespace ErpSystemDirectv.Contracts.Users;

public record UserResponse(
    Guid Id,
    string Username,
    string Email);