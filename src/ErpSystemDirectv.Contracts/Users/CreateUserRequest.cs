namespace ErpSystemDirectv.Contracts.Users;

public record CreateUserRequest(
    string Username,
    string Password,
    string Email,
    Guid EmployeeId
);