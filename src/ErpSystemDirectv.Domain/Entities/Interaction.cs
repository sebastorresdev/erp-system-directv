using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Interaction
{
    public Guid Id { get; set; }

    public Guid InteractionTypeId { get; set; }

    public string? Comment { get; set; }

    public Guid UserId { get; set; }

    public Guid TaskId { get; set; }

    public bool IsActive { get; set; }

    public DateTime RegistrationDate { get; set; }

    public virtual InteractionType InteractionType { get; set; } = null!;

    public virtual Order Task { get; set; } = null!;

    public virtual User User { get; set; } = null!;
}
