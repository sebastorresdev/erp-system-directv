using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class UserRoleBranch
{
    public Guid Id { get; set; }

    public Guid UserId { get; set; }

    public Guid RoleId { get; set; }

    public Guid BranchId { get; set; }

    public virtual Branch Branch { get; set; } = null!;

    public virtual Role Role { get; set; } = null!;

    public virtual User User { get; set; } = null!;
}
