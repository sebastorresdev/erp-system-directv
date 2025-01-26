using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class WoInteraction
{
    public Guid Id { get; set; }

    public Guid InteractionTypeId { get; set; }

    public string? Comment { get; set; }

    public Guid CreateUid { get; set; }

    public Guid WoId { get; set; }

    public bool Active { get; set; }

    public DateTime CreateDate { get; set; }

    public string? ContactPhone { get; set; }

    public DateTime? WriteDate { get; set; }

    public Guid? WriteUid { get; set; }

    public virtual User CreateU { get; set; } = null!;

    public virtual WoInteractionType InteractionType { get; set; } = null!;

    public virtual WorkOrder Wo { get; set; } = null!;

    public virtual User? WriteU { get; set; }
}
