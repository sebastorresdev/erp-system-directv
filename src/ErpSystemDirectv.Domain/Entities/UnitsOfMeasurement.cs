using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class UnitsOfMeasurement
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string Abbreviation { get; set; } = null!;

    public string? Description { get; set; }

    public bool IsActive { get; set; }

    public DateTime RegistrationDate { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
