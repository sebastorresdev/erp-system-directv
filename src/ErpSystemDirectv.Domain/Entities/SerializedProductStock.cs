using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class SerializedProductStock
{
    public Guid Id { get; set; }

    public string SerialNumber { get; set; } = null!;

    public string? CardNumber { get; set; }

    public string? RidNumber { get; set; }

    public Guid ProductId { get; set; }

    public Guid WarehousesStorageId { get; set; }

    public bool IsActive { get; set; }

    public DateTime RegistrationDate { get; set; }

    public virtual Product Product { get; set; } = null!;

    public virtual ICollection<SerializedProductMovementDetail> SerializedProductMovementDetails { get; set; } = new List<SerializedProductMovementDetail>();

    public virtual WarehousesStorage WarehousesStorage { get; set; } = null!;
}
