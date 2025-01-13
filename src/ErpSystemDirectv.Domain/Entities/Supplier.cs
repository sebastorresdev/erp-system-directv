using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Supplier
{
    public Guid Id { get; set; }

    public string BusinessName { get; set; } = null!;

    public string Ruc { get; set; } = null!;

    public Guid UbigeoId { get; set; }

    public string Address { get; set; } = null!;

    public string Phone1 { get; set; } = null!;

    public string? Phone2 { get; set; }

    public string? Email { get; set; }

    public string? Website { get; set; }

    public bool IsActive { get; set; }

    public DateTime RegistrationDate { get; set; }

    public virtual ICollection<ProductMovement> ProductMovements { get; set; } = new List<ProductMovement>();

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();

    public virtual Ubigeo Ubigeo { get; set; } = null!;
}
