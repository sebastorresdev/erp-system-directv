using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class ProductMovementItem
{
    public Guid Id { get; set; }

    public Guid ProductMovementId { get; set; }

    public Guid ProductId { get; set; }

    public int CreatedQuantity { get; set; }

    public int? ReceivedQuantity { get; set; }

    public DateTime UpdateDate { get; set; }

    public virtual Product Product { get; set; } = null!;

    public virtual ProductMovement ProductMovement { get; set; } = null!;
}
