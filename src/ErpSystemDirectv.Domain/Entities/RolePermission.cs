﻿using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class RolePermission
{
    public Guid Id { get; set; }

    public Guid PermissionId { get; set; }

    public Guid RoleId { get; set; }

    public TimeOnly CreateDate { get; set; }

    public bool Active { get; set; }

    public virtual Permission Permission { get; set; } = null!;

    public virtual Role Role { get; set; } = null!;
}
