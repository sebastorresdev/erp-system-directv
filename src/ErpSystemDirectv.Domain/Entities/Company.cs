using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Company
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public string? Address { get; set; }

    public string? Code { get; set; }

    public Guid? UbigeoId { get; set; }

    public string? Email { get; set; }

    public bool Active { get; set; }

    public DateTime CreateDate { get; set; }

    public string? Website { get; set; }

    public string? CompanyRegistry { get; set; }

    public string? Fax { get; set; }

    public string? Ruc { get; set; }

    public string? Logo { get; set; }

    public string? PhoneNumber1 { get; set; }

    public string? PhoneNumber2 { get; set; }

    public virtual ICollection<RhDepartment> RhDepartments { get; set; } = new List<RhDepartment>();

    public virtual ICollection<UserCompany> UserCompanies { get; set; } = new List<UserCompany>();

    public virtual ICollection<Warehouse> Warehouses { get; set; } = new List<Warehouse>();
}
