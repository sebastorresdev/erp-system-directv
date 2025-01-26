using System;
using System.Collections;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class PhoneNumber
{
    public Guid Id { get; set; }

    public BitArray? Number { get; set; }

    public Guid WoCustomerId { get; set; }

    public bool? Primary { get; set; }

    public bool Active { get; set; }

    public DateTime WriteDate { get; set; }

    public DateTime CreateDate { get; set; }

    public Guid CreateUid { get; set; }

    public Guid WriteUid { get; set; }

    public string? Comment { get; set; }

    public virtual User CreateU { get; set; } = null!;

    public virtual WoCustomer WoCustomer { get; set; } = null!;

    public virtual User WriteU { get; set; } = null!;
}
