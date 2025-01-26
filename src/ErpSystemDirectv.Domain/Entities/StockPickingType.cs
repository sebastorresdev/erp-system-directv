using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class StockPickingType
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string Code { get; set; } = null!;

    public string Description { get; set; } = null!;
}
