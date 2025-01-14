using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class SerializedProductMovementItem
{
    public Guid Id { get; set; }

    public string? LinkedCardNumber { get; set; }

    public Guid ProductMovementId { get; set; }

    public Guid SerializedProductStockId { get; set; }

    public DateTime? UpdateDate { get; set; }

    public bool IsReceived { get; set; }

    public virtual ProductMovement ProductMovement { get; set; } = null!;

    public virtual SerializedProductStock SerializedProductStock { get; set; } = null!;
}
