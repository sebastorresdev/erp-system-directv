using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class UserCompany
{
    public Guid Id { get; set; }

    public Guid UserId { get; set; }

    public Guid CompanyId { get; set; }

    public virtual Company Company { get; set; } = null!;

    public virtual User User { get; set; } = null!;
}
