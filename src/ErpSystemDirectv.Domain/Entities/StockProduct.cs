using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class StockProduct
{
    public Guid Id { get; set; }

    public Guid ProductId { get; set; }

    public Guid WarehousesStorageId { get; set; }

    public int Stock { get; set; }

    public DateTime RegistrationDate { get; set; }

    public virtual Product Product { get; set; } = null!;

    public virtual WarehousesStorage WarehousesStorage { get; set; } = null!;
}
