using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class ProductTemplate
{
    public Guid Id { get; set; }

    public Guid? CategoryId { get; set; }

    public string? Description { get; set; }

    public string Name { get; set; } = null!;

    public string? Color { get; set; }

    public Guid TypeId { get; set; }

    public Guid? UomId { get; set; }

    public string? DefaultCode { get; set; }

    public decimal? ListPrice { get; set; }

    public bool Active { get; set; }

    public DateTime CreateDate { get; set; }

    public decimal? Weight { get; set; }

    public decimal? Volume { get; set; }

    public bool? PurcharseOk { get; set; }

    public bool? SaleOk { get; set; }

    public decimal? CostPrice { get; set; }

    public Guid CreateUid { get; set; }

    public virtual User CreateU { get; set; } = null!;

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();

    public virtual ProductType Type { get; set; } = null!;

    public virtual Uom? Uom { get; set; }
}
