using System;
using System.Collections;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Product
{
    public Guid Id { get; set; }

    public string? Sku { get; set; }

    public string Name { get; set; } = null!;

    public BitArray? Description { get; set; }

    public Guid ProductTemplateId { get; set; }

    public string? Model { get; set; }

    public decimal? SalePrice { get; set; }

    public Guid? UomId { get; set; }

    public Guid? SupplierId { get; set; }

    public string? Image { get; set; }

    public bool Active { get; set; }

    public DateTime CreateDate { get; set; }

    public string? Color { get; set; }

    public decimal? PurchasePrice { get; set; }

    public string? Barcode { get; set; }

    public Guid CreateUid { get; set; }

    public virtual User CreateU { get; set; } = null!;

    public virtual ICollection<ProductCompany> ProductCompanies { get; set; } = new List<ProductCompany>();

    public virtual ProductTemplate ProductTemplate { get; set; } = null!;

    public virtual ICollection<StockMove> StockMoves { get; set; } = new List<StockMove>();

    public virtual ICollection<StockProductionLot> StockProductionLots { get; set; } = new List<StockProductionLot>();

    public virtual ICollection<StockQuant> StockQuants { get; set; } = new List<StockQuant>();

    public virtual Supplier? Supplier { get; set; }

    public virtual Uom? Uom { get; set; }
}
