using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class PhoneEmployee
{
    public Guid Id { get; set; }

    public Guid? EmployeeId { get; set; }

    public Guid? CreateUid { get; set; }

    public DateTime? CreateDate { get; set; }
}
