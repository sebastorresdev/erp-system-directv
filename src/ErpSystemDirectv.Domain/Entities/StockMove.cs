using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class StockMove
{
    public Guid Id { get; set; }

    public Guid StockMoveStatusId { get; set; }

    public decimal? Quantity { get; set; }

    public Guid ProductId { get; set; }

    public Guid? LotId { get; set; }

    public Guid PickingId { get; set; }

    public virtual StockProductionLot? Lot { get; set; }

    public virtual StockPicking Picking { get; set; } = null!;

    public virtual Product Product { get; set; } = null!;

    public virtual StockPickingStatus StockMoveStatus { get; set; } = null!;
}
