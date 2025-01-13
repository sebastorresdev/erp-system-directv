using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class RolesModule
{
    public Guid Id { get; set; }

    public Guid RoleId { get; set; }

    public Guid ModuleId { get; set; }

    public bool CanView { get; set; }

    public DateTime RegistrationDate { get; set; }

    public bool IsActive { get; set; }

    public virtual Module Module { get; set; } = null!;

    public virtual Role Role { get; set; } = null!;
}
