using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class WoInteractionType
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string? Description { get; set; }

    public DateTime CreateDate { get; set; }

    public bool Active { get; set; }

    public Guid? InteractionAreaId { get; set; }

    public virtual ICollection<WoInteraction> WoInteractions { get; set; } = new List<WoInteraction>();
}
