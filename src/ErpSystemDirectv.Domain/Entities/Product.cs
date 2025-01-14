using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Product
{
    public Guid Id { get; set; }

    public string SkuCode { get; set; } = null!;

    public string Name { get; set; } = null!;

    public string? Description { get; set; }

    public Guid? CategoryId { get; set; }

    public string? Model { get; set; }

    public decimal? Price { get; set; }

    public Guid UnitOfMeasurementId { get; set; }

    public Guid SupplierId { get; set; }

    public string Type { get; set; } = null!;

    public string Family { get; set; } = null!;

    public string? Image { get; set; }

    public bool IsSerializable { get; set; }

    public bool IsActive { get; set; }

    public DateTime RegistrationDate { get; set; }

    public virtual Category? Category { get; set; }

    public virtual ICollection<ProductMovementItem> ProductMovementItems { get; set; } = new List<ProductMovementItem>();

    public virtual ICollection<SerializedProductStock> SerializedProductStocks { get; set; } = new List<SerializedProductStock>();

    public virtual ICollection<StockProduct> StockProducts { get; set; } = new List<StockProduct>();

    public virtual Supplier Supplier { get; set; } = null!;

    public virtual UnitsOfMeasurement UnitOfMeasurement { get; set; } = null!;

    public virtual ICollection<WarehouseProduct> WarehouseProducts { get; set; } = new List<WarehouseProduct>();
}
