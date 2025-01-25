using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Employee
{
    public Guid Id { get; set; }

    public string Dni { get; set; } = null!;

    public string? Gender { get; set; }

    public DateTime? BirthDate { get; set; }

    public Guid? UbigeoId { get; set; }

    public string Address { get; set; } = null!;

    public string? Email { get; set; }

    public string? JobPosition { get; set; }

    public DateTime? HireDate { get; set; }

    public DateTime? EndDate { get; set; }

    public string? MaritalStatus { get; set; }

    public decimal? Salary { get; set; }

    public bool Active { get; set; }

    public DateTime CreateDate { get; set; }

    public string FirstName { get; set; } = null!;

    public string LastName { get; set; } = null!;

    public string? Image { get; set; }

    public Guid? DepartamentId { get; set; }

    public virtual RhDepartment? Departament { get; set; }

    public virtual ICollection<RhDepartment> RhDepartments { get; set; } = new List<RhDepartment>();

    public virtual Ubigeo? Ubigeo { get; set; }

    public virtual ICollection<User> Users { get; set; } = new List<User>();
}
