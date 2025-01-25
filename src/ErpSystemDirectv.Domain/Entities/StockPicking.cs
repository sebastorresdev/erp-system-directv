using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class StockPicking
{
    public Guid Id { get; set; }

    public Guid PickingTypeId { get; set; }

    public Guid LocationId { get; set; }

    public Guid LocationDestId { get; set; }

    public DateTime? CreateDate { get; set; }

    public DateTime? WriteDate { get; set; }

    public bool? Active { get; set; }

    public TimeOnly? ReceivedDate { get; set; }

    public Guid? CreateUid { get; set; }

    public Guid? ReceivedUid { get; set; }

    public Guid? WriteUid { get; set; }

    public Guid PickingStatusId { get; set; }

    public string? Code { get; set; }

    public string? DocumentNumber { get; set; }

    public string? ReferencesNumber { get; set; }

    public virtual User? CreateU { get; set; }

    public virtual StockLocation Location { get; set; } = null!;

    public virtual StockLocation LocationDest { get; set; } = null!;

    public virtual StockPickingStatus PickingStatus { get; set; } = null!;

    public virtual StockPickingStatus PickingType { get; set; } = null!;

    public virtual User? ReceivedU { get; set; }

    public virtual ICollection<StockMove> StockMoves { get; set; } = new List<StockMove>();

    public virtual User? WriteU { get; set; }
}
