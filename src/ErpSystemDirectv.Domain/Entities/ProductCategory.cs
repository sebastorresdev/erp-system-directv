using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class ProductCategory
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string? Note { get; set; }

    public bool? Active { get; set; }

    public DateTime? CreationDate { get; set; }

    public Guid? ParentId { get; set; }

    public Guid? WriteUid { get; set; }

    public Guid? CreateUid { get; set; }

    public DateTime? WriteDate { get; set; }

    public string? Color { get; set; }

    public virtual User? CreateU { get; set; }

    public virtual ICollection<ProductCategory> InverseParent { get; set; } = new List<ProductCategory>();

    public virtual ProductCategory? Parent { get; set; }

    public virtual User? WriteU { get; set; }
}
