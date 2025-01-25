using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class StockLocation
{
    public Guid Id { get; set; }

    public Guid? WarehouseId { get; set; }

    public Guid LocationTypeId { get; set; }

    public bool? Active { get; set; }

    public DateTime? CreateDate { get; set; }

    public Guid? ParentLocationId { get; set; }

    public TimeOnly? WriteDate { get; set; }

    public string? Name { get; set; }

    public virtual ICollection<StockLocation> InverseParentLocation { get; set; } = new List<StockLocation>();

    public virtual StockLocationType LocationType { get; set; } = null!;

    public virtual StockLocation? ParentLocation { get; set; }

    public virtual ICollection<StockPicking> StockPickingLocationDests { get; set; } = new List<StockPicking>();

    public virtual ICollection<StockPicking> StockPickingLocations { get; set; } = new List<StockPicking>();

    public virtual ICollection<StockQuant> StockQuants { get; set; } = new List<StockQuant>();

    public virtual Warehouse? Warehouse { get; set; }
}
