using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class WarehousesStorage
{
    public Guid Id { get; set; }

    public Guid? WarehouseId { get; set; }

    public Guid? TechnicianUserId { get; set; }

    public Guid LocationTypeId { get; set; }

    public bool IsActive { get; set; }

    public DateTime RegistrationDate { get; set; }

    public virtual LocationType LocationType { get; set; } = null!;

    public virtual ICollection<ProductMovement> ProductMovementDestinationWarehousesStorages { get; set; } = new List<ProductMovement>();

    public virtual ICollection<ProductMovement> ProductMovementOriginWarehousesStorages { get; set; } = new List<ProductMovement>();

    public virtual ICollection<SerializedProductStock> SerializedProductStocks { get; set; } = new List<SerializedProductStock>();

    public virtual ICollection<StockProduct> StockProducts { get; set; } = new List<StockProduct>();

    public virtual User? TechnicianUser { get; set; }

    public virtual Warehouse? Warehouse { get; set; }
}
