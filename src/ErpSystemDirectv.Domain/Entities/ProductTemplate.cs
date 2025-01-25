using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class ProductTemplate
{
    public Guid Id { get; set; }

    public Guid? CategoryId { get; set; }

    public string? Description { get; set; }

    public string? Name { get; set; }

    public string? Color { get; set; }

    public Guid? Type { get; set; }

    public Guid? UomId { get; set; }

    public string? DefaultCode { get; set; }

    public decimal? ListPrice { get; set; }

    public bool? Active { get; set; }

    public DateTime? CreateDate { get; set; }

    public DateTime? WriteDate { get; set; }

    public decimal? Weight { get; set; }

    public decimal? Volume { get; set; }

    public bool? PurcharseOk { get; set; }

    public bool? SaleOk { get; set; }

    public decimal? CostPrice { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
