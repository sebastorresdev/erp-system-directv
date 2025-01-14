using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class UserPermissionBranch
{
    public Guid Id { get; set; }

    public Guid UserId { get; set; }

    public Guid PermissionId { get; set; }

    public Guid BranchId { get; set; }

    public bool? IsActive { get; set; }

    public virtual Branch Branch { get; set; } = null!;

    public virtual Permission Permission { get; set; } = null!;

    public virtual User User { get; set; } = null!;
}
