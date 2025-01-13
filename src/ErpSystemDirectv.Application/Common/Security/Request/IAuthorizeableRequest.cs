using MediatR;

namespace ErpSystemDirectv.Application.Common.Security.Request;

public interface IAuthorizeableRequest<T> : IRequest<T>
{
    Guid UserId { get; }
}