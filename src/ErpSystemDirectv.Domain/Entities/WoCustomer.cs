using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class WoCustomer
{
    public Guid Id { get; set; }

    public string? CustomerCode { get; set; }

    public string? Name { get; set; }

    public string? Dni { get; set; }

    public Guid? CodePostal { get; set; }

    public string? Address { get; set; }

    public string? AddressNote { get; set; }

    public string? Email { get; set; }

    public Guid? ProviderId { get; set; }

    public bool? Active { get; set; }

    public DateTime? CreateDate { get; set; }

    public string? City { get; set; }

    public string? District { get; set; }

    public string? Departamet { get; set; }

    public string? ServiceType { get; set; }

    public Guid? CompanyId { get; set; }

    public virtual ICollection<WorkOrder> WorkOrders { get; set; } = new List<WorkOrder>();
}
