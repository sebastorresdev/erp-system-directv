using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Branch
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string Address { get; set; } = null!;

    public string? Code { get; set; }

    public Guid UbigeoId { get; set; }

    public string? Phone { get; set; }

    public string? Email { get; set; }

    public bool? IsActive { get; set; }

    public bool? IsDeleted { get; set; }

    public DateTime? RegistrationDate { get; set; }

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();

    public virtual ICollection<UserPermissionBranch> UserPermissionBranches { get; set; } = new List<UserPermissionBranch>();

    public virtual ICollection<UserRoleBranch> UserRoleBranches { get; set; } = new List<UserRoleBranch>();

    public virtual ICollection<Warehouse> Warehouses { get; set; } = new List<Warehouse>();
}
