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
                    result.Email is null ? string.Empty : result.Email);
    }
}