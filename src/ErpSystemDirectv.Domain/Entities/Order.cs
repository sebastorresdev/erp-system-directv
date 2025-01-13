using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Order
{
    public Guid Id { get; set; }

    public Guid ClientId { get; set; }

    public string WorkOrder { get; set; } = null!;

    public string? SerialNumber { get; set; }

    public string? ServiceType { get; set; }

    public string? OrderType { get; set; }

    public Guid OrderStatusId { get; set; }

    public DateTime CreationDate { get; set; }

    public DateTime? ScheduledDate { get; set; }

    public DateTime? AttentionDate { get; set; }

    public DateTime? StartDate { get; set; }

    public DateTime? EndDate { get; set; }

    public Guid? TechnicianUserId { get; set; }

    public Guid? BackofficeUserId { get; set; }

    public bool IsActive { get; set; }

    public DateTime RegistrationDate { get; set; }

    public virtual User? BackofficeUser { get; set; }

    public virtual Client Client { get; set; } = null!;

    public virtual ICollection<Interaction> Interactions { get; set; } = new List<Interaction>();

    public virtual OrdersStatus OrderStatus { get; set; } = null!;

    public virtual ICollection<ProductMovement> ProductMovements { get; set; } = new List<ProductMovement>();

    public virtual User? TechnicianUser { get; set; }
}
