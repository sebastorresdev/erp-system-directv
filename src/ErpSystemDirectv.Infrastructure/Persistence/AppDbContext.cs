using ErpSystemDirectv.Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace ErpSystemDirectv.Infrastructure.Persistence;

public partial class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Company> Companies { get; set; }

    public virtual DbSet<Employee> Employees { get; set; }

    public virtual DbSet<Module> Modules { get; set; }

    public virtual DbSet<ModuleGroup> ModuleGroups { get; set; }

    public virtual DbSet<Permission> Permissions { get; set; }

    public virtual DbSet<PhoneNumber> PhoneNumbers { get; set; }

    public virtual DbSet<Product> Products { get; set; }

    public virtual DbSet<ProductCategory> ProductCategories { get; set; }

    public virtual DbSet<ProductCompany> ProductCompanies { get; set; }

    public virtual DbSet<ProductTemplate> ProductTemplates { get; set; }

    public virtual DbSet<ProductType> ProductTypes { get; set; }

    public virtual DbSet<RhDepartment> RhDepartments { get; set; }

    public virtual DbSet<Role> Roles { get; set; }

    public virtual DbSet<RolePermission> RolePermissions { get; set; }

    public virtual DbSet<Sequencial> Sequencials { get; set; }

    public virtual DbSet<StockLocation> StockLocations { get; set; }

    public virtual DbSet<StockLocationType> StockLocationTypes { get; set; }

    public virtual DbSet<StockMove> StockMoves { get; set; }

    public virtual DbSet<StockPicking> StockPickings { get; set; }

    public virtual DbSet<StockPickingStatus> StockPickingStatuses { get; set; }

    public virtual DbSet<StockPickingType> StockPickingTypes { get; set; }

    public virtual DbSet<StockProductionLot> StockProductionLots { get; set; }

    public virtual DbSet<StockQuant> StockQuants { get; set; }

    public virtual DbSet<Supplier> Suppliers { get; set; }

    public virtual DbSet<Tag> Tags { get; set; }

    public virtual DbSet<Ubigeo> Ubigeos { get; set; }

    public virtual DbSet<Uom> Uoms { get; set; }

    public virtual DbSet<User> Users { get; set; }

    public virtual DbSet<UserCompany> UserCompanies { get; set; }

    public virtual DbSet<UserRole> UserRoles { get; set; }

    public virtual DbSet<Warehouse> Warehouses { get; set; }

    public virtual DbSet<WoCustomer> WoCustomers { get; set; }

    public virtual DbSet<WoInteraction> WoInteractions { get; set; }

    public virtual DbSet<WoInteractionArea> WoInteractionAreas { get; set; }

    public virtual DbSet<WoInteractionType> WoInteractionTypes { get; set; }

    public virtual DbSet<WoStatus> WoStatuses { get; set; }

    public virtual DbSet<WorkOrder> WorkOrders { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.HasPostgresExtension("pgcrypto");

        modelBuilder.Entity<Company>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("branches_pkey");

            entity.ToTable("company");

            entity.HasIndex(e => e.Code, "branches_code_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.Address)
                .HasMaxLength(200)
                .HasColumnName("address");
            entity.Property(e => e.Code)
                .HasMaxLength(20)
                .HasColumnName("code");
            entity.Property(e => e.CompanyRegistry)
                .HasMaxLength(255)
                .HasColumnName("company_registry");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .HasColumnName("email");
            entity.Property(e => e.Fax)
                .HasMaxLength(20)
                .HasColumnName("fax");
            entity.Property(e => e.Logo)
                .HasMaxLength(255)
                .HasColumnName("logo");
            entity.Property(e => e.Name)
                .HasMaxLength(100)
                .HasColumnName("name");
            entity.Property(e => e.PhoneNumber1)
                .HasMaxLength(20)
                .HasColumnName("phone_number1");
            entity.Property(e => e.PhoneNumber2)
                .HasMaxLength(20)
                .HasColumnName("phone_number2");
            entity.Property(e => e.Ruc)
                .HasMaxLength(20)
                .HasColumnName("ruc");
            entity.Property(e => e.UbigeoId).HasColumnName("ubigeo_id");
            entity.Property(e => e.Website)
                .HasMaxLength(255)
                .HasColumnName("website");
        });

        modelBuilder.Entity<Employee>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("employees_pkey");

            entity.ToTable("employee");

            entity.HasIndex(e => e.Dni, "employees_dni_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.Address)
                .HasMaxLength(128)
                .HasColumnName("address");
            entity.Property(e => e.BirthDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("birth_date");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.DepartamentId).HasColumnName("departament_id");
            entity.Property(e => e.Dni)
                .HasMaxLength(16)
                .HasColumnName("dni");
            entity.Property(e => e.Email)
                .HasMaxLength(128)
                .HasColumnName("email");
            entity.Property(e => e.EndDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("end_date");
            entity.Property(e => e.FirstName)
                .HasMaxLength(128)
                .HasColumnName("first_name");
            entity.Property(e => e.Gender)
                .HasMaxLength(1)
                .HasColumnName("gender");
            entity.Property(e => e.HireDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("hire_date");
            entity.Property(e => e.Image)
                .HasMaxLength(255)
                .HasColumnName("image");
            entity.Property(e => e.JobPosition)
                .HasMaxLength(64)
                .HasColumnName("job_position");
            entity.Property(e => e.LastName)
                .HasMaxLength(128)
                .HasColumnName("last_name");
            entity.Property(e => e.MaritalStatus)
                .HasMaxLength(16)
                .HasColumnName("marital_status");
            entity.Property(e => e.Salary)
                .HasPrecision(10, 2)
                .HasColumnName("salary");
            entity.Property(e => e.UbigeoId).HasColumnName("ubigeo_id");

            entity.HasOne(d => d.Departament).WithMany(p => p.Employees)
                .HasForeignKey(d => d.DepartamentId)
                .HasConstraintName("employee_departament_id_fkey");

            entity.HasOne(d => d.Ubigeo).WithMany(p => p.Employees)
                .HasForeignKey(d => d.UbigeoId)
                .HasConstraintName("employee_ubigeo_id_fkey");
        });

        modelBuilder.Entity<Module>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("modules_pkey");

            entity.ToTable("module");

            entity.HasIndex(e => e.Routes, "modules_routes_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Description)
                .HasMaxLength(255)
                .HasColumnName("description");
            entity.Property(e => e.ModuleGroupId).HasColumnName("module_group_id");
            entity.Property(e => e.Name)
                .HasMaxLength(255)
                .HasColumnName("name");
            entity.Property(e => e.Routes)
                .HasMaxLength(64)
                .HasColumnName("routes");

            entity.HasOne(d => d.ModuleGroup).WithMany(p => p.Modules)
                .HasForeignKey(d => d.ModuleGroupId)
                .HasConstraintName("fk_module_group_module");
        });

        modelBuilder.Entity<ModuleGroup>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("module_group_pkey");

            entity.ToTable("module_groups");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Description)
                .HasMaxLength(255)
                .HasColumnName("description");
        });

        modelBuilder.Entity<Permission>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("permissions_pkey");

            entity.ToTable("permission");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Description)
                .HasMaxLength(255)
                .HasColumnName("description");
            entity.Property(e => e.Name)
                .HasMaxLength(128)
                .HasColumnName("name");
        });

        modelBuilder.Entity<PhoneNumber>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("phone_pkey");

            entity.ToTable("phone_number");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.Comment).HasColumnName("comment");
            entity.Property(e => e.CreateDate)
                .HasColumnType("timestamp(0) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.CreateUid).HasColumnName("create_uid");
            entity.Property(e => e.Number)
                .HasMaxLength(16)
                .HasColumnName("number");
            entity.Property(e => e.Primary)
                .HasDefaultValue(false)
                .HasColumnName("primary");
            entity.Property(e => e.WoCustomerId).HasColumnName("wo_customer_id");
            entity.Property(e => e.WriteDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("write_date");
            entity.Property(e => e.WriteUid).HasColumnName("write_uid");

            entity.HasOne(d => d.CreateU).WithMany(p => p.PhoneNumberCreateUs)
                .HasForeignKey(d => d.CreateUid)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("phone_number_create_uid_fkey");

            entity.HasOne(d => d.WoCustomer).WithMany(p => p.PhoneNumbers)
                .HasForeignKey(d => d.WoCustomerId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("phone_number_wo_customer_id_fkey");

            entity.HasOne(d => d.WriteU).WithMany(p => p.PhoneNumberWriteUs)
                .HasForeignKey(d => d.WriteUid)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("phone_number_write_uid_fkey");
        });

        modelBuilder.Entity<Product>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("products_pkey");

            entity.ToTable("product");

            entity.HasIndex(e => e.Name, "products_name_key").IsUnique();

            entity.HasIndex(e => e.Sku, "products_sku_code_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.Barcode)
                .HasMaxLength(100)
                .HasColumnName("barcode");
            entity.Property(e => e.Color)
                .HasMaxLength(20)
                .HasColumnName("color");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.CreateUid).HasColumnName("create_uid");
            entity.Property(e => e.Description)
                .HasMaxLength(255)
                .HasColumnName("description");
            entity.Property(e => e.Image)
                .HasMaxLength(255)
                .HasColumnName("image");
            entity.Property(e => e.Model)
                .HasMaxLength(128)
                .HasColumnName("model");
            entity.Property(e => e.Name)
                .HasMaxLength(255)
                .HasColumnName("name");
            entity.Property(e => e.ProductTemplateId).HasColumnName("product_template_id");
            entity.Property(e => e.PurchasePrice)
                .HasPrecision(10, 2)
                .HasColumnName("purchase_price");
            entity.Property(e => e.SalePrice)
                .HasPrecision(10, 2)
                .HasColumnName("sale_price");
            entity.Property(e => e.Sku)
                .HasMaxLength(128)
                .HasColumnName("sku");
            entity.Property(e => e.SupplierId).HasColumnName("supplier_id");
            entity.Property(e => e.UomId).HasColumnName("uom_id");

            entity.HasOne(d => d.CreateU).WithMany(p => p.Products)
                .HasForeignKey(d => d.CreateUid)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("product_create_uid_fkey");

            entity.HasOne(d => d.ProductTemplate).WithMany(p => p.Products)
                .HasForeignKey(d => d.ProductTemplateId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("product_product_template_id_fkey");

            entity.HasOne(d => d.Supplier).WithMany(p => p.Products)
                .HasForeignKey(d => d.SupplierId)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("product_supplier_id_fkey");

            entity.HasOne(d => d.Uom).WithMany(p => p.Products)
                .HasForeignKey(d => d.UomId)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("products_uom_id_fkey");
        });

        modelBuilder.Entity<ProductCategory>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("categories_pkey");

            entity.ToTable("product_category");

            entity.HasIndex(e => e.Name, "categories_name_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.Color)
                .HasMaxLength(255)
                .HasColumnName("color");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.CreateUid).HasColumnName("create_uid");
            entity.Property(e => e.Name)
                .HasMaxLength(128)
                .HasColumnName("name");
            entity.Property(e => e.Note)
                .HasMaxLength(256)
                .HasColumnName("note");
            entity.Property(e => e.ParentId).HasColumnName("parent_id");

            entity.HasOne(d => d.CreateU).WithMany(p => p.ProductCategories)
                .HasForeignKey(d => d.CreateUid)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("product_category_create_uid_fkey");

            entity.HasOne(d => d.Parent).WithMany(p => p.InverseParent)
                .HasForeignKey(d => d.ParentId)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("product_category_parent_id_fkey");
        });

        modelBuilder.Entity<ProductCompany>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("warehouse_products_pkey");

            entity.ToTable("product_company");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.ProductId).HasColumnName("product_id");
            entity.Property(e => e.WarehouseId).HasColumnName("warehouse_id");

            entity.HasOne(d => d.Product).WithMany(p => p.ProductCompanies)
                .HasForeignKey(d => d.ProductId)
                .HasConstraintName("warehouse_products_product_id_fkey");

            entity.HasOne(d => d.Warehouse).WithMany(p => p.ProductCompanies)
                .HasForeignKey(d => d.WarehouseId)
                .HasConstraintName("warehouse_products_warehouse_id_fkey");
        });

        modelBuilder.Entity<ProductTemplate>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("product_template_pkey");

            entity.ToTable("product_template");

            entity.Property(e => e.Id)
                .ValueGeneratedNever()
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.CategoryId).HasColumnName("category_id");
            entity.Property(e => e.Color)
                .HasMaxLength(20)
                .HasColumnName("color");
            entity.Property(e => e.CostPrice)
                .HasPrecision(10, 2)
                .HasColumnName("cost_price");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.CreateUid).HasColumnName("create_uid");
            entity.Property(e => e.DefaultCode)
                .HasMaxLength(255)
                .HasColumnName("default_code");
            entity.Property(e => e.Description).HasColumnName("description");
            entity.Property(e => e.ListPrice)
                .HasPrecision(10, 2)
                .HasColumnName("list_price");
            entity.Property(e => e.Name)
                .HasMaxLength(255)
                .HasColumnName("name");
            entity.Property(e => e.PurcharseOk)
                .HasDefaultValue(true)
                .HasColumnName("purcharse_ok");
            entity.Property(e => e.SaleOk)
                .HasDefaultValue(false)
                .HasColumnName("sale_ok");
            entity.Property(e => e.TypeId).HasColumnName("type_id");
            entity.Property(e => e.UomId).HasColumnName("uom_id");
            entity.Property(e => e.Volume)
                .HasPrecision(10, 2)
                .HasColumnName("volume");
            entity.Property(e => e.Weight)
                .HasPrecision(10, 2)
                .HasColumnName("weight");

            entity.HasOne(d => d.CreateU).WithMany(p => p.ProductTemplates)
                .HasForeignKey(d => d.CreateUid)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("product_template_create_uid_fkey");

            entity.HasOne(d => d.Type).WithMany(p => p.ProductTemplates)
                .HasForeignKey(d => d.TypeId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("product_template_type_id_fkey");

            entity.HasOne(d => d.Uom).WithMany(p => p.ProductTemplates)
                .HasForeignKey(d => d.UomId)
                .HasConstraintName("product_template_uom_id_fkey");
        });

        modelBuilder.Entity<ProductType>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("product_type_pkey");

            entity.ToTable("product_type");

            entity.Property(e => e.Id)
                .ValueGeneratedNever()
                .HasColumnName("id");
            entity.Property(e => e.Name)
                .HasMaxLength(64)
                .HasColumnName("name");
        });

        modelBuilder.Entity<RhDepartment>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("department_pkey");

            entity.ToTable("rh_department");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.Code)
                .HasMaxLength(50)
                .HasColumnName("code");
            entity.Property(e => e.Color)
                .HasMaxLength(10)
                .HasColumnName("color");
            entity.Property(e => e.CompanyId).HasColumnName("company_id");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.ManagerId).HasColumnName("manager_id");
            entity.Property(e => e.Name)
                .HasMaxLength(255)
                .HasColumnName("name");
            entity.Property(e => e.ParentId).HasColumnName("parent_id");

            entity.HasOne(d => d.Company).WithMany(p => p.RhDepartments)
                .HasForeignKey(d => d.CompanyId)
                .HasConstraintName("department_company_id_fkey");

            entity.HasOne(d => d.Manager).WithMany(p => p.RhDepartments)
                .HasForeignKey(d => d.ManagerId)
                .HasConstraintName("department_manager_id_fkey");

            entity.HasOne(d => d.Parent).WithMany(p => p.InverseParent)
                .HasForeignKey(d => d.ParentId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("department_parent_id_fkey");
        });

        modelBuilder.Entity<Role>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("roles_pkey");

            entity.ToTable("role");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.Description)
                .HasMaxLength(255)
                .HasColumnName("description");
            entity.Property(e => e.ModuleId).HasColumnName("module_id");
            entity.Property(e => e.Name)
                .HasMaxLength(128)
                .HasColumnName("name");

            entity.HasOne(d => d.Module).WithMany(p => p.Roles)
                .HasForeignKey(d => d.ModuleId)
                .HasConstraintName("fk_role_module");
        });

        modelBuilder.Entity<RolePermission>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("role_permissions_pkey");

            entity.ToTable("role_permission");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnName("create_date");
            entity.Property(e => e.PermissionId).HasColumnName("permission_id");
            entity.Property(e => e.RoleId).HasColumnName("role_id");

            entity.HasOne(d => d.Permission).WithMany(p => p.RolePermissions)
                .HasForeignKey(d => d.PermissionId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("role_permission_permission_id_fkey");

            entity.HasOne(d => d.Role).WithMany(p => p.RolePermissions)
                .HasForeignKey(d => d.RoleId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("role_permission_role_id_fkey");
        });

        modelBuilder.Entity<Sequencial>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("transactions_pkey");

            entity.ToTable("sequencial");

            entity.HasIndex(e => e.DocumentType, "transactions_document_type_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Counter)
                .HasDefaultValue(0)
                .HasColumnName("counter");
            entity.Property(e => e.DocumentType)
                .HasMaxLength(4)
                .HasColumnName("document_type");
        });

        modelBuilder.Entity<StockLocation>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("warehouses_storage_pkey");

            entity.ToTable("stock_location");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.LocationTypeId).HasColumnName("location_type_id");
            entity.Property(e => e.Name)
                .HasMaxLength(255)
                .HasColumnName("name");
            entity.Property(e => e.ParentLocationId).HasColumnName("parent_location_id");
            entity.Property(e => e.WarehouseId).HasColumnName("warehouse_id");

            entity.HasOne(d => d.LocationType).WithMany(p => p.StockLocations)
                .HasForeignKey(d => d.LocationTypeId)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("location_location_type_id_fkey");

            entity.HasOne(d => d.ParentLocation).WithMany(p => p.InverseParentLocation)
                .HasForeignKey(d => d.ParentLocationId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("location_parent_location_id_fkey");

            entity.HasOne(d => d.Warehouse).WithMany(p => p.StockLocations)
                .HasForeignKey(d => d.WarehouseId)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("location_warehouse_id_fkey");
        });

        modelBuilder.Entity<StockLocationType>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("location_types_pkey");

            entity.ToTable("stock_location_type");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Name)
                .HasMaxLength(128)
                .HasColumnName("name");
        });

        modelBuilder.Entity<StockMove>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("product_movements_pkey");

            entity.ToTable("stock_move");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.LotId).HasColumnName("lot_id");
            entity.Property(e => e.PickingId).HasColumnName("picking_id");
            entity.Property(e => e.ProductId).HasColumnName("product_id");
            entity.Property(e => e.Quantity)
                .HasPrecision(10, 2)
                .HasColumnName("quantity");
            entity.Property(e => e.StockMoveStatusId).HasColumnName("stock_move_status_id");

            entity.HasOne(d => d.Lot).WithMany(p => p.StockMoves)
                .HasForeignKey(d => d.LotId)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("stock_move_lot_id_fkey");

            entity.HasOne(d => d.Picking).WithMany(p => p.StockMoves)
                .HasForeignKey(d => d.PickingId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("stock_move_picking_id_fkey");

            entity.HasOne(d => d.Product).WithMany(p => p.StockMoves)
                .HasForeignKey(d => d.ProductId)
                .HasConstraintName("stock_move_product_id_fkey");

            entity.HasOne(d => d.StockMoveStatus).WithMany(p => p.StockMoves)
                .HasForeignKey(d => d.StockMoveStatusId)
                .HasConstraintName("stock_move_stock_move_status_id_fkey");
        });

        modelBuilder.Entity<StockPicking>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("stock_picking_pkey");

            entity.ToTable("stock_picking");

            entity.Property(e => e.Id)
                .ValueGeneratedNever()
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.Code)
                .HasMaxLength(20)
                .HasColumnName("code");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.CreateUid).HasColumnName("create_uid");
            entity.Property(e => e.DocumentNumber)
                .HasMaxLength(64)
                .HasColumnName("document_number");
            entity.Property(e => e.LocationDestId).HasColumnName("location_dest_id");
            entity.Property(e => e.LocationId).HasColumnName("location_id");
            entity.Property(e => e.PickingStatusId).HasColumnName("picking_status_id");
            entity.Property(e => e.PickingTypeId).HasColumnName("picking_type_id");
            entity.Property(e => e.ReceivedDate).HasColumnName("received_date");
            entity.Property(e => e.ReceivedUid).HasColumnName("received_uid");
            entity.Property(e => e.ReferencesNumber)
                .HasMaxLength(64)
                .HasColumnName("references_number");
            entity.Property(e => e.WriteDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("write_date");
            entity.Property(e => e.WriteUid).HasColumnName("write_uid");

            entity.HasOne(d => d.CreateU).WithMany(p => p.StockPickingCreateUs)
                .HasForeignKey(d => d.CreateUid)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("stock_picking_create_uid_fkey");

            entity.HasOne(d => d.LocationDest).WithMany(p => p.StockPickingLocationDests)
                .HasForeignKey(d => d.LocationDestId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("stock_picking_location_dest_id_fkey");

            entity.HasOne(d => d.Location).WithMany(p => p.StockPickingLocations)
                .HasForeignKey(d => d.LocationId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("stock_picking_location_id_fkey");

            entity.HasOne(d => d.PickingStatus).WithMany(p => p.StockPickingPickingStatuses)
                .HasForeignKey(d => d.PickingStatusId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("stock_picking_picking_status_id_fkey");

            entity.HasOne(d => d.PickingType).WithMany(p => p.StockPickingPickingTypes)
                .HasForeignKey(d => d.PickingTypeId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("stock_picking_picking_type_id_fkey");

            entity.HasOne(d => d.ReceivedU).WithMany(p => p.StockPickingReceivedUs)
                .HasForeignKey(d => d.ReceivedUid)
                .HasConstraintName("stock_picking_received_uid_fkey");

            entity.HasOne(d => d.WriteU).WithMany(p => p.StockPickingWriteUs)
                .HasForeignKey(d => d.WriteUid)
                .HasConstraintName("stock_picking_write_uid_fkey");
        });

        modelBuilder.Entity<StockPickingStatus>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("operation_statuses_pkey");

            entity.ToTable("stock_picking_status");

            entity.HasIndex(e => e.Name, "operation_statuses_name_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Description)
                .HasMaxLength(128)
                .HasColumnName("description");
            entity.Property(e => e.Name)
                .HasMaxLength(16)
                .HasColumnName("name");
        });

        modelBuilder.Entity<StockPickingType>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("operation_types_pkey");

            entity.ToTable("stock_picking_type");

            entity.HasIndex(e => e.Code, "operation_types_code_key").IsUnique();

            entity.HasIndex(e => e.Name, "operation_types_name_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Code)
                .HasMaxLength(8)
                .HasColumnName("code");
            entity.Property(e => e.Description)
                .HasMaxLength(64)
                .HasColumnName("description");
            entity.Property(e => e.Name)
                .HasMaxLength(16)
                .HasColumnName("name");
        });

        modelBuilder.Entity<StockProductionLot>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("serialized_product_stocks_pkey");

            entity.ToTable("stock_production_lot");

            entity.HasIndex(e => e.SerialNumber, "serialized_product_stocks_serial_number_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.CardNumber)
                .HasMaxLength(128)
                .HasColumnName("card_number");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.CreateUid).HasColumnName("create_uid");
            entity.Property(e => e.ExpirationDate)
                .HasColumnType("timestamp without time zone")
                .HasColumnName("expiration_date");
            entity.Property(e => e.ProductId).HasColumnName("product_id");
            entity.Property(e => e.RidNumber)
                .HasMaxLength(128)
                .HasColumnName("rid_number");
            entity.Property(e => e.SerialNumber)
                .HasMaxLength(128)
                .HasColumnName("serial_number");

            entity.HasOne(d => d.CreateU).WithMany(p => p.StockProductionLots)
                .HasForeignKey(d => d.CreateUid)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("stock_production_lot_create_uid_fkey");

            entity.HasOne(d => d.Product).WithMany(p => p.StockProductionLots)
                .HasForeignKey(d => d.ProductId)
                .HasConstraintName("stock_production_lot_product_id_fkey");
        });

        modelBuilder.Entity<StockQuant>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("stock_products_pkey");

            entity.ToTable("stock_quant");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.LocationId).HasColumnName("location_id");
            entity.Property(e => e.LotId).HasColumnName("lot_id");
            entity.Property(e => e.ProductId).HasColumnName("product_id");
            entity.Property(e => e.Quantity)
                .HasPrecision(10, 2)
                .HasDefaultValueSql("0")
                .HasColumnName("quantity");

            entity.HasOne(d => d.Location).WithMany(p => p.StockQuants)
                .HasForeignKey(d => d.LocationId)
                .HasConstraintName("stock_quant_location_id_fkey");

            entity.HasOne(d => d.Lot).WithMany(p => p.StockQuants)
                .HasForeignKey(d => d.LotId)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("stock_quant_lot_id_fkey");

            entity.HasOne(d => d.Product).WithMany(p => p.StockQuants)
                .HasForeignKey(d => d.ProductId)
                .HasConstraintName("stock_quant_product_id_fkey");
        });

        modelBuilder.Entity<Supplier>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("suppliers_pkey");

            entity.ToTable("supplier");

            entity.HasIndex(e => e.Ruc, "suppliers_ruc_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.Address)
                .HasMaxLength(120)
                .HasColumnName("address");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.Email)
                .HasMaxLength(128)
                .HasColumnName("email");
            entity.Property(e => e.Name)
                .HasMaxLength(128)
                .HasColumnName("name");
            entity.Property(e => e.Ruc)
                .HasMaxLength(16)
                .HasColumnName("ruc");
            entity.Property(e => e.UbigeoId).HasColumnName("ubigeo_id");
            entity.Property(e => e.Website)
                .HasMaxLength(255)
                .HasColumnName("website");

            entity.HasOne(d => d.Ubigeo).WithMany(p => p.Suppliers)
                .HasForeignKey(d => d.UbigeoId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("suppliers_ubigeo_id_fkey");
        });

        modelBuilder.Entity<Tag>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("tag_pkey");

            entity.ToTable("tag");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.Description).HasColumnName("description");
            entity.Property(e => e.Name)
                .HasMaxLength(255)
                .HasColumnName("name");
        });

        modelBuilder.Entity<Ubigeo>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("ubigeos_pkey");

            entity.ToTable("ubigeo");

            entity.HasIndex(e => e.Code, "ubigeos_code_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Code)
                .HasMaxLength(16)
                .HasColumnName("code");
            entity.Property(e => e.Department)
                .HasMaxLength(16)
                .HasColumnName("department");
            entity.Property(e => e.District)
                .HasMaxLength(64)
                .HasColumnName("district");
            entity.Property(e => e.Province)
                .HasMaxLength(32)
                .HasColumnName("province");
        });

        modelBuilder.Entity<Uom>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("units_of_measurement_pkey");

            entity.ToTable("uom");

            entity.HasIndex(e => e.Name, "units_of_measurement_name_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.Description).HasColumnName("description");
            entity.Property(e => e.Name)
                .HasMaxLength(32)
                .HasColumnName("name");
            entity.Property(e => e.ParentId).HasColumnName("parent_id");
            entity.Property(e => e.Rounding)
                .HasPrecision(10, 2)
                .HasColumnName("rounding");
            entity.Property(e => e.Symbol)
                .HasMaxLength(4)
                .HasColumnName("symbol");

            entity.HasOne(d => d.Parent).WithMany(p => p.InverseParent)
                .HasForeignKey(d => d.ParentId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("uom_parent_id_fkey");
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("users_pkey");

            entity.ToTable("user");

            entity.HasIndex(e => e.Email, "users_email_key").IsUnique();

            entity.HasIndex(e => e.Username, "users_username_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .HasColumnName("email");
            entity.Property(e => e.EmployeeId).HasColumnName("employee_id");
            entity.Property(e => e.Img)
                .HasMaxLength(255)
                .HasColumnName("img");
            entity.Property(e => e.LastAuthentication)
                .HasColumnType("timestamp without time zone")
                .HasColumnName("last_authentication");
            entity.Property(e => e.Password)
                .HasMaxLength(256)
                .HasColumnName("password");
            entity.Property(e => e.Username)
                .HasMaxLength(16)
                .HasColumnName("username");

            entity.HasOne(d => d.Employee).WithMany(p => p.Users)
                .HasForeignKey(d => d.EmployeeId)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("user_employee_id_fkey");
        });

        modelBuilder.Entity<UserCompany>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("user_companies_pkey");

            entity.ToTable("user_company");

            entity.Property(e => e.Id)
                .ValueGeneratedNever()
                .HasColumnName("id");
            entity.Property(e => e.CompanyId).HasColumnName("company_id");
            entity.Property(e => e.UserId).HasColumnName("user_id");

            entity.HasOne(d => d.Company).WithMany(p => p.UserCompanies)
                .HasForeignKey(d => d.CompanyId)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("fk_company");

            entity.HasOne(d => d.User).WithMany(p => p.UserCompanies)
                .HasForeignKey(d => d.UserId)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("fk_user");
        });

        modelBuilder.Entity<UserRole>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("user_role_pkey");

            entity.ToTable("user_role");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.RoleId).HasColumnName("role_id");
            entity.Property(e => e.UserId).HasColumnName("user_id");

            entity.HasOne(d => d.Role).WithMany(p => p.UserRoles)
                .HasForeignKey(d => d.RoleId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("user_role_role_id_fkey");

            entity.HasOne(d => d.User).WithMany(p => p.UserRoles)
                .HasForeignKey(d => d.UserId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("user_role_user_id_fkey");
        });

        modelBuilder.Entity<Warehouse>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("warehouses_pkey");

            entity.ToTable("warehouses");

            entity.HasIndex(e => e.Code, "warehouses_code_key").IsUnique();

            entity.HasIndex(e => e.Name, "warehouses_name_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.Address)
                .HasMaxLength(255)
                .HasColumnName("address");
            entity.Property(e => e.Code)
                .HasMaxLength(8)
                .HasColumnName("code");
            entity.Property(e => e.CompanyId).HasColumnName("company_id");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.Name)
                .HasMaxLength(64)
                .HasColumnName("name");
            entity.Property(e => e.PartnerId).HasColumnName("partner_id");

            entity.HasOne(d => d.Company).WithMany(p => p.Warehouses)
                .HasForeignKey(d => d.CompanyId)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("warehouses_company_id_fkey");

            entity.HasOne(d => d.Partner).WithMany(p => p.InversePartner)
                .HasForeignKey(d => d.PartnerId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("warehouses_partner_id_fkey");
        });

        modelBuilder.Entity<WoCustomer>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("clients_pkey");

            entity.ToTable("wo_customer");

            entity.HasIndex(e => e.CustomerCode, "clients_client_code_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.Address)
                .HasMaxLength(256)
                .HasColumnName("address");
            entity.Property(e => e.AddressNote)
                .HasMaxLength(256)
                .HasColumnName("address_note");
            entity.Property(e => e.City)
                .HasMaxLength(128)
                .HasColumnName("city");
            entity.Property(e => e.CodePostal).HasColumnName("code_postal");
            entity.Property(e => e.CompanyId).HasColumnName("company_id");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.CustomerCode)
                .HasMaxLength(16)
                .HasColumnName("customer_code");
            entity.Property(e => e.Departamet)
                .HasMaxLength(128)
                .HasColumnName("departamet");
            entity.Property(e => e.District)
                .HasMaxLength(128)
                .HasColumnName("district");
            entity.Property(e => e.Dni)
                .HasMaxLength(16)
                .HasColumnName("dni");
            entity.Property(e => e.Email)
                .HasMaxLength(128)
                .HasColumnName("email");
            entity.Property(e => e.Name)
                .HasMaxLength(255)
                .HasColumnName("name");
            entity.Property(e => e.ProviderId).HasColumnName("provider_id");
            entity.Property(e => e.ServiceType)
                .HasMaxLength(128)
                .HasColumnName("service_type");
        });

        modelBuilder.Entity<WoInteraction>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("interactions_pkey");

            entity.ToTable("wo_interaction");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.Comment).HasColumnName("comment");
            entity.Property(e => e.ContactPhone)
                .HasMaxLength(20)
                .HasColumnName("contact_phone");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.CreateUid).HasColumnName("create_uid");
            entity.Property(e => e.InteractionTypeId).HasColumnName("interaction_type_id");
            entity.Property(e => e.WoId).HasColumnName("wo_id");
            entity.Property(e => e.WriteDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("write_date");
            entity.Property(e => e.WriteUid).HasColumnName("write_uid");

            entity.HasOne(d => d.CreateU).WithMany(p => p.WoInteractionCreateUs)
                .HasForeignKey(d => d.CreateUid)
                .HasConstraintName("interaction_create_uid_fkey");

            entity.HasOne(d => d.InteractionType).WithMany(p => p.WoInteractions)
                .HasForeignKey(d => d.InteractionTypeId)
                .HasConstraintName("interaction_interaction_type_id_fkey");

            entity.HasOne(d => d.Wo).WithMany(p => p.WoInteractions)
                .HasForeignKey(d => d.WoId)
                .HasConstraintName("interaction_wo_id_fkey");

            entity.HasOne(d => d.WriteU).WithMany(p => p.WoInteractionWriteUs)
                .HasForeignKey(d => d.WriteUid)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("interaction_write_uid_fkey");
        });

        modelBuilder.Entity<WoInteractionArea>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("interaction_area_pkey");

            entity.ToTable("wo_interaction_area");

            entity.Property(e => e.Id)
                .ValueGeneratedNever()
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.Description)
                .HasMaxLength(255)
                .HasColumnName("description");
            entity.Property(e => e.Name)
                .HasMaxLength(64)
                .HasColumnName("name");
        });

        modelBuilder.Entity<WoInteractionType>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("interaction_types_pkey");

            entity.ToTable("wo_interaction_type");

            entity.HasIndex(e => e.Name, "interaction_types_name_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active).HasColumnName("active");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.Description)
                .HasMaxLength(128)
                .HasColumnName("description");
            entity.Property(e => e.InteractionAreaId).HasColumnName("interaction_area_id");
            entity.Property(e => e.Name)
                .HasMaxLength(64)
                .HasColumnName("name");
        });

        modelBuilder.Entity<WoStatus>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("task_status_pkey");

            entity.ToTable("wo_status");

            entity.HasIndex(e => e.Name, "task_status_name_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.Color)
                .HasMaxLength(20)
                .HasColumnName("color");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.Description)
                .HasMaxLength(128)
                .HasColumnName("description");
            entity.Property(e => e.Name)
                .HasMaxLength(16)
                .HasColumnName("name");
        });

        modelBuilder.Entity<WorkOrder>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("tasks_pkey");

            entity.ToTable("work_order");

            entity.HasIndex(e => e.WorkOrder1, "tasks_work_order_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Active)
                .HasDefaultValue(true)
                .HasColumnName("active");
            entity.Property(e => e.AttentionDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("attention_date");
            entity.Property(e => e.AttentionUid).HasColumnName("attention_uid");
            entity.Property(e => e.CreateDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("create_date");
            entity.Property(e => e.EndDate)
                .HasColumnType("timestamp without time zone")
                .HasColumnName("end_date");
            entity.Property(e => e.EndTask)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("end_task");
            entity.Property(e => e.EndUid).HasColumnName("end_uid");
            entity.Property(e => e.OrderType)
                .HasMaxLength(128)
                .HasColumnName("order_type");
            entity.Property(e => e.ScheduledDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("scheduled_date");
            entity.Property(e => e.ScheduledUid).HasColumnName("scheduled_uid");
            entity.Property(e => e.SerialModel)
                .HasMaxLength(128)
                .HasColumnName("serial_model");
            entity.Property(e => e.SerialNumber)
                .HasMaxLength(62)
                .HasColumnName("serial_number");
            entity.Property(e => e.ServiceType)
                .HasMaxLength(128)
                .HasColumnName("service_type");
            entity.Property(e => e.StartTask)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("start_task");
            entity.Property(e => e.WoCreateDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("wo_create_date");
            entity.Property(e => e.WoStatusId).HasColumnName("wo_status_id");
            entity.Property(e => e.WocustomerId).HasColumnName("wocustomer_id");
            entity.Property(e => e.WorkOrder1)
                .HasMaxLength(64)
                .HasColumnName("work_order");

            entity.HasOne(d => d.AttentionU).WithMany(p => p.WorkOrderAttentionUs)
                .HasForeignKey(d => d.AttentionUid)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("work_order_attention_uid_fkey");

            entity.HasOne(d => d.EndU).WithMany(p => p.WorkOrderEndUs)
                .HasForeignKey(d => d.EndUid)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("work_order_end_uid_fkey");

            entity.HasOne(d => d.ScheduledU).WithMany(p => p.WorkOrderScheduledUs)
                .HasForeignKey(d => d.ScheduledUid)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("work_order_scheduled_uid_fkey");

            entity.HasOne(d => d.WoStatus).WithMany(p => p.WorkOrders)
                .HasForeignKey(d => d.WoStatusId)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("work_order_wo_status_id_fkey");

            entity.HasOne(d => d.Wocustomer).WithMany(p => p.WorkOrders)
                .HasForeignKey(d => d.WocustomerId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("work_order_wo_wocustomer_id_fkey");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
