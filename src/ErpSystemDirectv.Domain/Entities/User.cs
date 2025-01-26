using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class User
{
    public Guid Id { get; set; }

    public string Username { get; set; } = null!;

    public string? Password { get; set; }

    public Guid? EmployeeId { get; set; }

    public bool Active { get; set; }  = true;

    public DateTime CreateDate { get; set; }

    public string Email { get; set; } = null!;

    public string? Img { get; set; }

    public DateTime? LastAuthentication { get; set; }

    public virtual Employee? Employee { get; set; }

    public virtual ICollection<PhoneNumber> PhoneNumberCreateUs { get; set; } = new List<PhoneNumber>();

    public virtual ICollection<PhoneNumber> PhoneNumberWriteUs { get; set; } = new List<PhoneNumber>();

    public virtual ICollection<ProductCategory> ProductCategories { get; set; } = new List<ProductCategory>();

    public virtual ICollection<ProductTemplate> ProductTemplates { get; set; } = new List<ProductTemplate>();

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();

    public virtual ICollection<StockPicking> StockPickingCreateUs { get; set; } = new List<StockPicking>();

    public virtual ICollection<StockPicking> StockPickingReceivedUs { get; set; } = new List<StockPicking>();

    public virtual ICollection<StockPicking> StockPickingWriteUs { get; set; } = new List<StockPicking>();

    public virtual ICollection<StockProductionLot> StockProductionLots { get; set; } = new List<StockProductionLot>();

    public virtual ICollection<UserCompany> UserCompanies { get; set; } = new List<UserCompany>();

    public virtual ICollection<UserRole> UserRoles { get; set; } = new List<UserRole>();

    public virtual ICollection<WoInteraction> WoInteractionCreateUs { get; set; } = new List<WoInteraction>();

    public virtual ICollection<WoInteraction> WoInteractionWriteUs { get; set; } = new List<WoInteraction>();

    public virtual ICollection<WorkOrder> WorkOrderAttentionUs { get; set; } = new List<WorkOrder>();

    public virtual ICollection<WorkOrder> WorkOrderEndUs { get; set; } = new List<WorkOrder>();

    public virtual ICollection<WorkOrder> WorkOrderScheduledUs { get; set; } = new List<WorkOrder>();
}
