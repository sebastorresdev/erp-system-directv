using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class Employee
{
    public Guid Id { get; set; }

    public string Dni { get; set; } = null!;

    public string Gender { get; set; } = null!;

    public DateTime BirthDate { get; set; }

    public Guid UbigeoId { get; set; }

    public string Address { get; set; } = null!;

    public string Phone1 { get; set; } = null!;

    public string? Phone2 { get; set; }

    public string? Email { get; set; }

    public string JobPosition { get; set; } = null!;

    public DateTime StartDate { get; set; }

    public DateTime? EndDate { get; set; }

    public string MaritalStatus { get; set; } = null!;

    public decimal Salary { get; set; }

    public bool IsActive { get; set; }

    public DateTime RegistrationDate { get; set; }

    public string FirstName { get; set; } = null!;

    public string LastName { get; set; } = null!;

    public virtual Ubigeo Ubigeo { get; set; } = null!;

    public virtual ICollection<User> Users { get; set; } = new List<User>();
}
