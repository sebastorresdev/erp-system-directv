using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class PhoneCompany
{
    public Guid Id { get; set; }

    public Guid CompanyId { get; set; }

    public Guid PhoneNumberId { get; set; }

    public virtual Company Company { get; set; } = null!;

    public virtual PhoneNumber PhoneNumber { get; set; } = null!;
}
