namespace ErpSystemDirectv.Domain.Entities;

public partial class User
{
    public Guid Id { get; set; }

    public string Username { get; set; } = null!;

    public string Password { get; set; } = null!;

    public Guid? EmployeeId { get; set; }

    public bool IsActive { get; set; }

    public DateTime RegistrationDate { get; set; }

    public string Email { get; set; } = null!;

    public bool IsDeleted { get; set; }

    public string? Img { get; set; }

    public DateTime? LastAuthentication { get; set; }

    public virtual ICollection<Bodega> Bodegas { get; set; } = new List<Bodega>();

    public virtual Employee? Employee { get; set; }

    public virtual ICollection<Interaction> Interactions { get; set; } = new List<Interaction>();

    public virtual ICollection<Order> OrderBackofficeUsers { get; set; } = new List<Order>();

    public virtual ICollection<Order> OrderTechnicianUsers { get; set; } = new List<Order>();

    public virtual ICollection<ProductMovement> ProductMovementCreatedUsers { get; set; } = new List<ProductMovement>();

    public virtual ICollection<ProductMovement> ProductMovementReceivedUsers { get; set; } = new List<ProductMovement>();

    public virtual ICollection<UserPermissionBranch> UserPermissionBranches { get; set; } = new List<UserPermissionBranch>();

    public virtual ICollection<UserRoleBranch> UserRoleBranches { get; set; } = new List<UserRoleBranch>();

    public virtual ICollection<UserRole> UserRoles { get; set; } = new List<UserRole>();
}
