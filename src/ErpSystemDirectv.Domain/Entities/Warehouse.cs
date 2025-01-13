using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Warehouse
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string ShortName { get; set; } = null!;

    public Guid UbigeoId { get; set; }

    public string Address { get; set; } = null!;

    public bool IsActive { get; set; }

    public DateTime RegistrationDate { get; set; }

    public virtual Ubigeo Ubigeo { get; set; } = null!;

    public virtual ICollection<WarehousePermission> WarehousePermissions { get; set; } = new List<WarehousePermission>();

    public virtual ICollection<WarehouseProduct> WarehouseProducts { get; set; } = new List<WarehouseProduct>();

    public virtual ICollection<WarehousesStorage> WarehousesStorages { get; set; } = new List<WarehousesStorage>();
}
