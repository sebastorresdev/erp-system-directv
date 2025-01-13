namespace ErpSystemDirectv.Infrastructure.TokenGenerator;
public class JwtSettings
{
    public const string SectionName = "JwtSettings";
    public required string Secret { get; init; }
    public int TokenExpirationInMinutes { get; init; }
    public required string Issuer { get; init; } = null!;
    public required string Audience { get; init; } = null!;

}
