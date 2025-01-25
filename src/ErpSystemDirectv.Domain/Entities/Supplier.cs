using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Supplier
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string? Ruc { get; set; }

    public Guid? UbigeoId { get; set; }

    public string? Address { get; set; }

    public string? Email { get; set; }

    public string? Website { get; set; }

    public bool? Active { get; set; }

    public DateTime? CreateDate { get; set; }

    public DateTime? WriteDate { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();

    public virtual Ubigeo? Ubigeo { get; set; }
}
