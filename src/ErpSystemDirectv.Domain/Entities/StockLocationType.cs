using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class StockLocationType
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public virtual ICollection<StockLocation> StockLocations { get; set; } = new List<StockLocation>();
}
