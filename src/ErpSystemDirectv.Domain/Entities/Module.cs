using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Module
{
    public Guid Id { get; set; }

    public string Routes { get; set; } = null!;

    public string? Description { get; set; }

    public string Name { get; set; } = null!;

    public Guid? ModuleGroupId { get; set; }

    public virtual ModuleGroup? ModuleGroup { get; set; }

    public virtual ICollection<Role> Roles { get; set; } = new List<Role>();
}
