﻿using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class ModuleGroup
{
    public Guid Id { get; set; }

    public string Description { get; set; } = null!;

    public virtual ICollection<Module> Modules { get; set; } = new List<Module>();
}
