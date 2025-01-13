using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Client
{
    public Guid Id { get; set; }

    public string ClientCode { get; set; } = null!;

    public string ClientName { get; set; } = null!;

    public string Dni { get; set; } = null!;

    public Guid UbigeoId { get; set; }

    public string Address { get; set; } = null!;

    public string? AddressNote { get; set; }

    public string? Email { get; set; }

    public Guid ProviderId { get; set; }

    public bool IsActive { get; set; }

    public DateTime RegistrationDate { get; set; }

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();

    public virtual Ubigeo Ubigeo { get; set; } = null!;
}
