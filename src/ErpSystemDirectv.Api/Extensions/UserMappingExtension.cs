using ErpSystemDirectv.Contracts.Users;
using ErpSystemDirectv.Domain.Entities;

namespace ErpSystemDirectv.Api.Extensions;

public static class UserMappingExtension
{
    public static UserResponse MapToUserResponse(this User result)
    {
        return new UserResponse(
                    result.Id,
                    result.Username,
                    result.Email,
                    result.IsActive? "Activo" : "Inactivo",
                    result.Img,
                    result.EmployeeId,
                    result.LastAuthentication?.ToString("dd/MM/yyyy HH:mm:ss")
                    );
    }
}