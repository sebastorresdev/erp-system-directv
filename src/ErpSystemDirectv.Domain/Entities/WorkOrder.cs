using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class WorkOrder
{
    public Guid Id { get; set; }

    public Guid WocustomerId { get; set; }

    public string? WorkOrder1 { get; set; }

    public string? SerialNumber { get; set; }

    public string? ServiceType { get; set; }

    public string? OrderType { get; set; }

    public Guid? WoStatusId { get; set; }

    public DateTime? WoCreateDate { get; set; }

    public DateTime? ScheduledDate { get; set; }

    public DateTime? AttentionDate { get; set; }

    public DateTime? StartTask { get; set; }

    public DateTime? EndTask { get; set; }

    public Guid? AttentionUid { get; set; }

    public Guid? ScheduledUid { get; set; }

    public bool Active { get; set; }

    public DateTime CreateDate { get; set; }

    public Guid? EndUid { get; set; }

    public DateTime? EndDate { get; set; }

    public string? SerialModel { get; set; }

    public virtual User? AttentionU { get; set; }

    public virtual User? EndU { get; set; }

    public virtual User? ScheduledU { get; set; }

    public virtual ICollection<WoInteraction> WoInteractions { get; set; } = new List<WoInteraction>();

    public virtual WoStatus? WoStatus { get; set; }

    public virtual WoCustomer Wocustomer { get; set; } = null!;
}
