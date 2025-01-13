namespace ErpSystemDirectv.Domain.Entities;

public partial class User
{
    public Guid Id { get; set; }

    public string Username { get; set; } = null!;

    public string Password { get; set; } = null!;

    public Guid EmployeeId { get; set; }

    public bool IsActive { get; set; } = true;

    public DateTime RegistrationDate { get; set; }

    public string? Email { get; set; }

    public bool IsDeleted { get; set; }

    public virtual Employee Employee { get; set; } = null!;

    public virtual ICollection<Interaction> Interactions { get; set; } = new List<Interaction>();

    public virtual ICollection<Order> OrderBackofficeUsers { get; set; } = new List<Order>();

    public virtual ICollection<Order> OrderTechnicianUsers { get; set; } = new List<Order>();

    public virtual ICollection<ProductMovement> ProductMovementCreatedUsers { get; set; } = new List<ProductMovement>();

    public virtual ICollection<ProductMovement> ProductMovementReceivedUsers { get; set; } = new List<ProductMovement>();

    public virtual ICollection<UserRole> UserRoles { get; set; } = new List<UserRole>();

    public virtual ICollection<WarehousePermission> WarehousePermissions { get; set; } = new List<WarehousePermission>();

    public virtual ICollection<WarehousesStorage> WarehousesStorages { get; set; } = new List<WarehousesStorage>();
}
