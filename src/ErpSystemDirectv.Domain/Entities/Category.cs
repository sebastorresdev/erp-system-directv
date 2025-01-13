using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Category
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string? Description { get; set; }

    public bool IsActive { get; set; }

    public DateTime CreationDate { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
