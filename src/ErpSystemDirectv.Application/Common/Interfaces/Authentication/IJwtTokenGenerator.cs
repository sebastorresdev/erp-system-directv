namespace ErpSystemDirectv.Application.Common.Interfaces.Authentication;
public interface IJwtTokenGenerator
{
    string GenerateToken(Guid userId, string userName);
}
