using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Sequencial
{
    public Guid Id { get; set; }

    public string DocumentType { get; set; } = null!;

    public int Counter { get; set; }
}
