using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class StockPickingStatus
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string? Description { get; set; }

    public virtual ICollection<StockMove> StockMoves { get; set; } = new List<StockMove>();

    public virtual ICollection<StockPicking> StockPickingPickingStatuses { get; set; } = new List<StockPicking>();

    public virtual ICollection<StockPicking> StockPickingPickingTypes { get; set; } = new List<StockPicking>();
}
