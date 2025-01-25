using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class RhDepartment
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public Guid? ParentId { get; set; }

    public Guid? ManagerId { get; set; }

    public string? Code { get; set; }

    public Guid? CompanyId { get; set; }

    public string? Color { get; set; }

    public bool? Active { get; set; }

    public DateTime? CreateDate { get; set; }

    public DateTime? UpdatedDate { get; set; }

    public virtual Company? Company { get; set; }

    public virtual ICollection<Employee> Employees { get; set; } = new List<Employee>();

    public virtual ICollection<RhDepartment> InverseParent { get; set; } = new List<RhDepartment>();

    public virtual Employee? Manager { get; set; }

    public virtual RhDepartment? Parent { get; set; }
}
