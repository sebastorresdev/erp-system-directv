using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Ubigeo
{
    public Guid Id { get; set; }

    public string Code { get; set; } = null!;

    public string Department { get; set; } = null!;

    public string Province { get; set; } = null!;

    public string District { get; set; } = null!;

    public virtual ICollection<Client> Clients { get; set; } = new List<Client>();

    public virtual ICollection<Company> Companies { get; set; } = new List<Company>();

    public virtual ICollection<Employee> Employees { get; set; } = new List<Employee>();

    public virtual ICollection<Supplier> Suppliers { get; set; } = new List<Supplier>();

    public virtual ICollection<Warehouse> Warehouses { get; set; } = new List<Warehouse>();
}
