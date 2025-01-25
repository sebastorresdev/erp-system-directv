using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class StockProductionLot
{
    public Guid Id { get; set; }

    public string SerialNumber { get; set; } = null!;

    public string? CardNumber { get; set; }

    public string? RidNumber { get; set; }

    public Guid ProductId { get; set; }

    public bool? Active { get; set; }

    public DateTime? CreateDate { get; set; }

    public DateTime? ExpirationDate { get; set; }

    public DateTime? WriteDate { get; set; }

    public Guid? CreateUid { get; set; }

    public Guid? WriteUid { get; set; }

    public virtual User? CreateU { get; set; }

    public virtual Product Product { get; set; } = null!;

    public virtual ICollection<StockMove> StockMoves { get; set; } = new List<StockMove>();

    public virtual ICollection<StockQuant> StockQuants { get; set; } = new List<StockQuant>();

    public virtual User? WriteU { get; set; }
}
