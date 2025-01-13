using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class WarehousePermission
{
    public Guid Id { get; set; }

    public Guid UserId { get; set; }

    public Guid WarehouseId { get; set; }

    public DateTime? RegistrationDate { get; set; }

    public bool IsActive { get; set; }

    public virtual User User { get; set; } = null!;

    public virtual Warehouse Warehouse { get; set; } = null!;
}
