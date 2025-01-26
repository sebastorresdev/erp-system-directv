using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class ProductCompany
{
    public Guid Id { get; set; }

    public Guid WarehouseId { get; set; }

    public Guid ProductId { get; set; }

    public bool Active { get; set; }

    public DateTime CreateDate { get; set; }

    public virtual Product Product { get; set; } = null!;

    public virtual Warehouse Warehouse { get; set; } = null!;
}
