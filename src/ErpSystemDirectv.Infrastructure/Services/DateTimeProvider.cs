using ErpSystemDirectv.Application.Common.Services;

namespace ErpSystemDirectv.Infrastructure.Services;
public class DateTimeProvider : IDateTimeProvider
{
    public DateTime UtcNow => DateTime.UtcNow;
}
