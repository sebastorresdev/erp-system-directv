using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Uom
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string Symbol { get; set; } = null!;

    public string? Description { get; set; }

    public bool Active { get; set; }

    public DateTime CreateDate { get; set; }

    public decimal? Rounding { get; set; }

    public Guid? ParentId { get; set; }

    public virtual ICollection<Uom> InverseParent { get; set; } = new List<Uom>();

    public virtual Uom? Parent { get; set; }

    public virtual ICollection<ProductTemplate> ProductTemplates { get; set; } = new List<ProductTemplate>();

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
