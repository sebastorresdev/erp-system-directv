namespace ErpSystemDirectv.Application.Common.Interfaces;
public interface IJwtTokenGenerator
{
    string GenerateToken(
        Guid userId,
        string userName,
        List<string> permissions,
        List<string> roles);
}
