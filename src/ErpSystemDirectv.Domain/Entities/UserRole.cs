﻿using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class UserRole
{
    public Guid Id { get; set; }

    public Guid UserId { get; set; }

    public Guid RoleId { get; set; }

    public DateTime? CreateDate { get; set; }

    public bool? Active { get; set; }

    public DateTime? WriteDate { get; set; }

    public Guid? CreateUid { get; set; }

    public Guid? WriteUid { get; set; }

    public virtual User? CreateU { get; set; }

    public virtual Role Role { get; set; } = null!;

    public virtual User User { get; set; } = null!;

    public virtual User? WriteU { get; set; }
}
