using System;
using System.Collections;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class PhoneNumber
{
    public Guid Id { get; set; }

    public BitArray? Number { get; set; }

    public Guid? PhoneTypeId { get; set; }

    public bool? Primary { get; set; }

    public bool? Active { get; set; }

    public DateTime? WriteDate { get; set; }

    public DateTime? CreateDate { get; set; }

    public Guid? CreateUid { get; set; }

    public Guid? WriteUid { get; set; }

    public virtual User? CreateU { get; set; }

    public virtual ICollection<PhoneCompany> PhoneCompanies { get; set; } = new List<PhoneCompany>();

    public virtual PhoneType? PhoneType { get; set; }

    public virtual User? WriteU { get; set; }
}
