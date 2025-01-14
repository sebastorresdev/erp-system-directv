using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Role
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string Description { get; set; } = null!;

    public bool IsActive { get; set; }

    public DateTime RegistrationDate { get; set; }

    public virtual ICollection<RolePermission> RolePermissions { get; set; } = new List<RolePermission>();

    public virtual ICollection<UserRoleBranch> UserRoleBranches { get; set; } = new List<UserRoleBranch>();

    public virtual ICollection<UserRole> UserRoles { get; set; } = new List<UserRole>();
}
