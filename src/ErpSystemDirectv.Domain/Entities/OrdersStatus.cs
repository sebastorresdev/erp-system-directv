using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class OrdersStatus
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string Description { get; set; } = null!;

    public DateTime RegistrationDate { get; set; }

    public bool IsActive { get; set; }

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
}
