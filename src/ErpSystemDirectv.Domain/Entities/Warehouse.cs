using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Warehouse
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string Code { get; set; } = null!;

    public string? Address { get; set; }

    public bool? Active { get; set; }

    public DateTime? CreateDate { get; set; }

    public Guid CompanyId { get; set; }

    public Guid? PartnerId { get; set; }

    public DateTime? WriteId { get; set; }

    public virtual Company Company { get; set; } = null!;

    public virtual ICollection<Warehouse> InversePartner { get; set; } = new List<Warehouse>();

    public virtual Warehouse? Partner { get; set; }

    public virtual ICollection<ProductCompany> ProductCompanies { get; set; } = new List<ProductCompany>();

    public virtual ICollection<StockLocation> StockLocations { get; set; } = new List<StockLocation>();
}
