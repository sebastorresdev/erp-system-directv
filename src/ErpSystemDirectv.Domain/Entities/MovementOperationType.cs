using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class MovementOperationType
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string Code { get; set; } = null!;

    public string Description { get; set; } = null!;

    public DateTime RegistrationDate { get; set; }

    public virtual ICollection<ProductMovement> ProductMovements { get; set; } = new List<ProductMovement>();
}
