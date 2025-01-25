using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class User
{
    public Guid Id { get; set; }

    public string Username { get; set; } = null!;

    public string? Password { get; set; }

    public Guid? EmployeeId { get; set; }

    public bool? Active { get; set; }

    public DateTime? CreateDate { get; set; }

    public string Email { get; set; } = null!;

    public string? Img { get; set; }

    public DateTime? LastAuthentication { get; set; }

    public DateTime? WriteDate { get; set; }

    public Guid? CreateUid { get; set; }

    public Guid? WriteUid { get; set; }

    public virtual User? CreateU { get; set; }

    public virtual Employee? Employee { get; set; }

    public virtual ICollection<User> InverseCreateU { get; set; } = new List<User>();

    public virtual ICollection<User> InverseWriteU { get; set; } = new List<User>();

    public virtual ICollection<PhoneNumber> PhoneNumberCreateUs { get; set; } = new List<PhoneNumber>();

    public virtual ICollection<PhoneNumber> PhoneNumberWriteUs { get; set; } = new List<PhoneNumber>();

    public virtual ICollection<PhoneType> PhoneTypeCreateUs { get; set; } = new List<PhoneType>();

    public virtual ICollection<PhoneType> PhoneTypeWriteUs { get; set; } = new List<PhoneType>();

    public virtual ICollection<ProductCategory> ProductCategoryCreateUs { get; set; } = new List<ProductCategory>();

    public virtual ICollection<ProductCategory> ProductCategoryWriteUs { get; set; } = new List<ProductCategory>();

    public virtual ICollection<Product> ProductCreateUs { get; set; } = new List<Product>();

    public virtual ICollection<Product> ProductWriteUs { get; set; } = new List<Product>();

    public virtual ICollection<StockPicking> StockPickingCreateUs { get; set; } = new List<StockPicking>();

    public virtual ICollection<StockPicking> StockPickingReceivedUs { get; set; } = new List<StockPicking>();

    public virtual ICollection<StockPicking> StockPickingWriteUs { get; set; } = new List<StockPicking>();

    public virtual ICollection<StockProductionLot> StockProductionLotCreateUs { get; set; } = new List<StockProductionLot>();

    public virtual ICollection<StockProductionLot> StockProductionLotWriteUs { get; set; } = new List<StockProductionLot>();

    public virtual ICollection<UserCompany> UserCompanies { get; set; } = new List<UserCompany>();

    public virtual ICollection<UserRole> UserRoleCreateUs { get; set; } = new List<UserRole>();

    public virtual ICollection<UserRole> UserRoleUsers { get; set; } = new List<UserRole>();

    public virtual ICollection<UserRole> UserRoleWriteUs { get; set; } = new List<UserRole>();

    public virtual ICollection<WoInteraction> WoInteractionCreateUs { get; set; } = new List<WoInteraction>();

    public virtual ICollection<WoInteraction> WoInteractionWriteUs { get; set; } = new List<WoInteraction>();

    public virtual ICollection<WorkOrder> WorkOrderAttentionUs { get; set; } = new List<WorkOrder>();

    public virtual ICollection<WorkOrder> WorkOrderEndUs { get; set; } = new List<WorkOrder>();

    public virtual ICollection<WorkOrder> WorkOrderScheduledUs { get; set; } = new List<WorkOrder>();

    public virtual User? WriteU { get; set; }
}
