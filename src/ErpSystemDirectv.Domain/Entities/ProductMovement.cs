using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class ProductMovement
{
    public Guid Id { get; set; }

    public string? MovementCode { get; set; }

    public Guid MovementOperationTypeId { get; set; }

    public Guid OriginBodegaId { get; set; }

    public Guid DestinationBodegaId { get; set; }

    public Guid? SupplierId { get; set; }

    public Guid? OrderId { get; set; }

    public Guid MovementOperationStatusId { get; set; }

    public Guid CreatedUserId { get; set; }

    public Guid? ReceivedUserId { get; set; }

    public string? DeliveryNote { get; set; }

    public string? Description { get; set; }

    public string? Image { get; set; }

    public DateTime? MovementDate { get; set; }

    public DateTime? LastUpdated { get; set; }

    public DateTime RegistrationDate { get; set; }

    public bool IsActive { get; set; }

    public virtual User CreatedUser { get; set; } = null!;

    public virtual Bodega DestinationBodega { get; set; } = null!;

    public virtual MovementOperationStatus MovementOperationStatus { get; set; } = null!;

    public virtual MovementOperationType MovementOperationType { get; set; } = null!;

    public virtual Order? Order { get; set; }

    public virtual Bodega OriginBodega { get; set; } = null!;

    public virtual ICollection<ProductMovementItem> ProductMovementItems { get; set; } = new List<ProductMovementItem>();

    public virtual User? ReceivedUser { get; set; }

    public virtual ICollection<SerializedProductMovementItem> SerializedProductMovementItems { get; set; } = new List<SerializedProductMovementItem>();

    public virtual Supplier? Supplier { get; set; }
}
