using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Module
{
    public Guid Id { get; set; }

    public string Routes { get; set; } = null!;

    public string Description { get; set; } = null!;

    public DateTime RegistrationDate { get; set; }
}
