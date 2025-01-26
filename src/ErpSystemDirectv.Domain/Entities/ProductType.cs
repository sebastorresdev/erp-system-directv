using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class ProductType
{
    public Guid Id { get; set; }

    public string? Name { get; set; }

    public virtual ICollection<ProductTemplate> ProductTemplates { get; set; } = new List<ProductTemplate>();
}
