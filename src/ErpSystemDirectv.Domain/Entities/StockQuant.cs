using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class StockQuant
{
    public Guid Id { get; set; }

    public Guid ProductId { get; set; }

    public Guid LocationId { get; set; }

    public decimal? Quantity { get; set; }

    public DateTime? CreateDate { get; set; }

    public Guid? LotId { get; set; }

    public DateTime? WriteDate { get; set; }

    public virtual StockLocation Location { get; set; } = null!;

    public virtual StockProductionLot? Lot { get; set; }

    public virtual Product Product { get; set; } = null!;
}
