using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class ProductMovement
{
    public Guid Id { get; set; }

    public int? MovementCode { get; set; }

    public Guid OperationTypeId { get; set; }

    public Guid OriginWarehousesStorageId { get; set; }

    public Guid DestinationWarehousesStorageId { get; set; }

    public Guid? SupplierId { get; set; }

    public Guid? TaskId { get; set; }

    public Guid OperationStatusId { get; set; }

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

    public virtual WarehousesStorage DestinationWarehousesStorage { get; set; } = null!;

    public virtual OperationStatus OperationStatus { get; set; } = null!;

    public virtual OperationType OperationType { get; set; } = null!;

    public virtual WarehousesStorage OriginWarehousesStorage { get; set; } = null!;

    public virtual ICollection<ProductMovementDetail> ProductMovementDetails { get; set; } = new List<ProductMovementDetail>();

    public virtual User? ReceivedUser { get; set; }

    public virtual ICollection<SerializedProductMovementDetail> SerializedProductMovementDetails { get; set; } = new List<SerializedProductMovementDetail>();

    public virtual Supplier? Supplier { get; set; }

    public virtual Order? Task { get; set; }
}
