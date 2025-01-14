using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class LocationType
{
    public Guid Id { get; set; }

    public string Code { get; set; } = null!;

    public string Description { get; set; } = null!;

    public virtual ICollection<Bodega> Bodegas { get; set; } = new List<Bodega>();
}
