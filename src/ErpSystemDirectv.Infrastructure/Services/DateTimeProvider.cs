using ErpSystemDirectv.Application.Common.Interfaces;

namespace ErpSystemDirectv.Infrastructure.Services;
public class DateTimeProvider : IDateTimeProvider
{
    public DateTime UtcNow => DateTime.UtcNow;
}
