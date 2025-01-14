using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class StockProduct
{
    public Guid Id { get; set; }

    public Guid ProductId { get; set; }

    public Guid BodegaId { get; set; }

    public int Stock { get; set; }

    public DateTime RegistrationDate { get; set; }

    public virtual Bodega Bodega { get; set; } = null!;

    public virtual Product Product { get; set; } = null!;
}
