namespace ErpSystemDirectv.Contracts.Users;

public record UserResponse(
    Guid Id,
    string Username,
    string Email,
    string Status,
    string? Img,
    Guid? EmployeId,
    string? LastAuthentication);