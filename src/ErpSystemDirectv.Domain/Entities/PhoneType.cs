using System;
using System.Collections.Generic;

namespace ErpSystemDirectv.Domain.Entities;

public partial class PhoneType
{
    public Guid Id { get; set; }

    public string Name { get; set; } = null!;

    public DateTime? CreateDate { get; set; }

    public DateTime? WriteDate { get; set; }

    public Guid? CreateUid { get; set; }

    public Guid? WriteUid { get; set; }

    public virtual User? CreateU { get; set; }

    public virtual ICollection<PhoneNumber> PhoneNumbers { get; set; } = new List<PhoneNumber>();

    public virtual User? WriteU { get; set; }
}
