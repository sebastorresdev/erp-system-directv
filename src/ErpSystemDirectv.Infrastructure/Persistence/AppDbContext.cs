using ErpSystemDirectv.Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace ErpSystemDirectv.Infrastructure.Persistence;

public partial class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Bodega> Bodegas { get; set; }

    public virtual DbSet<Branch> Branches { get; set; }

    public virtual DbSet<Category> Categories { get; set; }

    public virtual DbSet<Client> Clients { get; set; }

    public virtual DbSet<Company> Companies { get; set; }

    public virtual DbSet<Employee> Employees { get; set; }

    public virtual DbSet<Interaction> Interactions { get; set; }

    public virtual DbSet<InteractionType> InteractionTypes { get; set; }

    public virtual DbSet<LocationType> LocationTypes { get; set; }

    public virtual DbSet<Module> Modules { get; set; }

    public virtual DbSet<MovementOperationStatus> MovementOperationStatuses { get; set; }

    public virtual DbSet<MovementOperationType> MovementOperationTypes { get; set; }

    public virtual DbSet<Order> Orders { get; set; }

    public virtual DbSet<OrdersStatus> OrdersStatuses { get; set; }

    public virtual DbSet<Permission> Permissions { get; set; }

    public virtual DbSet<Product> Products { get; set; }

    public virtual DbSet<ProductMovement> ProductMovements { get; set; }

    public virtual DbSet<ProductMovementItem> ProductMovementItems { get; set; }

    public virtual DbSet<Role> Roles { get; set; }

    public virtual DbSet<RolePermission> RolePermissions { get; set; }

    public virtual DbSet<SerializedProductMovementItem> SerializedProductMovementItems { get; set; }

    public virtual DbSet<SerializedProductStock> SerializedProductStocks { get; set; }

    public virtual DbSet<StockProduct> StockProducts { get; set; }

    public virtual DbSet<Supplier> Suppliers { get; set; }

    public virtual DbSet<Transaction> Transactions { get; set; }

    public virtual DbSet<Ubigeo> Ubigeos { get; set; }

    public virtual DbSet<UnitsOfMeasurement> UnitsOfMeasurements { get; set; }

    public virtual DbSet<User> Users { get; set; }

    public virtual DbSet<UserPermissionBranch> UserPermissionBranchs { get; set; }

    public virtual DbSet<UserRole> UserRoles { get; set; }

    public virtual DbSet<UserRoleBranch> UserRoleBranchs { get; set; }

    public virtual DbSet<Warehouse> Warehouses { get; set; }

    public virtual DbSet<WarehouseProduct> WarehouseProducts { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.HasPostgresExtension("pgcrypto");

        modelBuilder.Entity<Bodega>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("warehouses_storage_pkey");

            entity.ToTable("bodegas");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.LocationTypeId).HasColumnName("location_type_id");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.TechnicianUserId).HasColumnName("technician_user_id");
            entity.Property(e => e.WarehouseId).HasColumnName("warehouse_id");

            entity.HasOne(d => d.LocationType).WithMany(p => p.Bodegas)
                .HasForeignKey(d => d.LocationTypeId)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("warehouses_storage_location_type_id_fkey");

            entity.HasOne(d => d.TechnicianUser).WithMany(p => p.Bodegas)
                .HasForeignKey(d => d.TechnicianUserId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("warehouses_storage_technician_user_id_fkey");

            entity.HasOne(d => d.Warehouse).WithMany(p => p.Bodegas)
                .HasForeignKey(d => d.WarehouseId)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("warehouses_storage_warehouse_id_fkey");
        });

        modelBuilder.Entity<Branch>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("branches_pkey");

            entity.ToTable("branches");

            entity.HasIndex(e => e.Code, "branches_code_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Address)
                .HasMaxLength(200)
                .HasColumnName("address");
            entity.Property(e => e.Code)
                .HasMaxLength(20)
                .HasColumnName("code");
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .HasColumnName("email");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.IsDeleted)
                .HasDefaultValue(false)
                .HasColumnName("is_deleted");
            entity.Property(e => e.Name)
                .HasMaxLength(100)
                .HasColumnName("name");
            entity.Property(e => e.Phone)
                .HasMaxLength(20)
                .HasColumnName("phone");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.UbigeoId).HasColumnName("ubigeo_id");
        });

        modelBuilder.Entity<Category>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("categories_pkey");

            entity.ToTable("categories");

            entity.HasIndex(e => e.Name, "categories_name_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.CreationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("creation_date");
            entity.Property(e => e.Description)
                .HasMaxLength(256)
                .HasColumnName("description");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.Name)
                .HasMaxLength(128)
                .HasColumnName("name");
        });

        modelBuilder.Entity<Client>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("clients_pkey");

            entity.ToTable("clients");

            entity.HasIndex(e => e.ClientCode, "clients_client_code_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Address)
                .HasMaxLength(256)
                .HasColumnName("address");
            entity.Property(e => e.AddressNote)
                .HasMaxLength(256)
                .HasColumnName("address_note");
            entity.Property(e => e.ClientCode)
                .HasMaxLength(16)
                .HasColumnName("client_code");
            entity.Property(e => e.ClientName)
                .HasMaxLength(128)
                .HasColumnName("client_name");
            entity.Property(e => e.Dni)
                .HasMaxLength(16)
                .HasColumnName("dni");
            entity.Property(e => e.Email)
                .HasMaxLength(128)
                .HasColumnName("email");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.ProviderId).HasColumnName("provider_id");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.UbigeoId).HasColumnName("ubigeo_id");

            entity.HasOne(d => d.Ubigeo).WithMany(p => p.Clients)
                .HasForeignKey(d => d.UbigeoId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_ubigeo");
        });

        modelBuilder.Entity<Company>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("company_pkey");

            entity.ToTable("company");

            entity.HasIndex(e => e.Ruc, "company_ruc_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Address)
                .HasMaxLength(120)
                .HasColumnName("address");
            entity.Property(e => e.BusinessName)
                .HasMaxLength(128)
                .HasColumnName("business_name");
            entity.Property(e => e.Email)
                .HasMaxLength(64)
                .HasColumnName("email");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.Phone1)
                .HasMaxLength(16)
                .HasColumnName("phone1");
            entity.Property(e => e.Phone2)
                .HasMaxLength(16)
                .HasColumnName("phone2");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.Ruc)
                .HasMaxLength(16)
                .HasColumnName("ruc");
            entity.Property(e => e.UbigeoId).HasColumnName("ubigeo_id");
            entity.Property(e => e.Website)
                .HasMaxLength(128)
                .HasColumnName("website");

            entity.HasOne(d => d.Ubigeo).WithMany(p => p.Companies)
                .HasForeignKey(d => d.UbigeoId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_company_ubigeo");
        });

        modelBuilder.Entity<Employee>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("employees_pkey");

            entity.ToTable("employees");

            entity.HasIndex(e => e.Dni, "employees_dni_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Address)
                .HasMaxLength(128)
                .HasColumnName("address");
            entity.Property(e => e.BirthDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("birth_date");
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
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.JobPosition)
                .HasMaxLength(64)
                .HasColumnName("job_position");
            entity.Property(e => e.LastName)
                .HasMaxLength(128)
                .HasColumnName("last_name");
            entity.Property(e => e.MaritalStatus)
                .HasMaxLength(16)
                .HasColumnName("marital_status");
            entity.Property(e => e.Phone1)
                .HasMaxLength(16)
                .HasColumnName("phone1");
            entity.Property(e => e.Phone2)
                .HasMaxLength(16)
                .HasColumnName("phone2");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.Salary)
                .HasPrecision(10, 2)
                .HasColumnName("salary");
            entity.Property(e => e.StartDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("start_date");
            entity.Property(e => e.UbigeoId).HasColumnName("ubigeo_id");

            entity.HasOne(d => d.Ubigeo).WithMany(p => p.Employees)
                .HasForeignKey(d => d.UbigeoId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_employees_ubigeo");
        });

        modelBuilder.Entity<Interaction>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("interactions_pkey");

            entity.ToTable("interactions");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Comment)
                .HasMaxLength(256)
                .HasColumnName("comment");
            entity.Property(e => e.InteractionTypeId).HasColumnName("interaction_type_id");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.TaskId).HasColumnName("task_id");
            entity.Property(e => e.UserId).HasColumnName("user_id");

            entity.HasOne(d => d.InteractionType).WithMany(p => p.Interactions)
                .HasForeignKey(d => d.InteractionTypeId)
                .HasConstraintName("fk_interaction_type");

            entity.HasOne(d => d.Task).WithMany(p => p.Interactions)
                .HasForeignKey(d => d.TaskId)
                .HasConstraintName("fk_task");

            entity.HasOne(d => d.User).WithMany(p => p.Interactions)
                .HasForeignKey(d => d.UserId)
                .HasConstraintName("fk_user");
        });

        modelBuilder.Entity<InteractionType>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("interaction_types_pkey");

            entity.ToTable("interaction_types");

            entity.HasIndex(e => e.Name, "interaction_types_name_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Description)
                .HasMaxLength(128)
                .HasColumnName("description");
            entity.Property(e => e.Name)
                .HasMaxLength(64)
                .HasColumnName("name");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
        });

        modelBuilder.Entity<LocationType>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("location_types_pkey");

            entity.ToTable("location_types");

            entity.HasIndex(e => e.Code, "location_types_code_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Code)
                .HasMaxLength(32)
                .HasColumnName("code");
            entity.Property(e => e.Description)
                .HasMaxLength(128)
                .HasColumnName("description");
        });

        modelBuilder.Entity<Module>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("modules_pkey");

            entity.ToTable("modules");

            entity.HasIndex(e => e.Routes, "modules_routes_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Description)
                .HasMaxLength(64)
                .HasColumnName("description");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.Routes)
                .HasMaxLength(64)
                .HasColumnName("routes");
        });

        modelBuilder.Entity<MovementOperationStatus>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("operation_statuses_pkey");

            entity.ToTable("movement_operation_statuses");

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
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
        });

        modelBuilder.Entity<MovementOperationType>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("operation_types_pkey");

            entity.ToTable("movement_operation_types");

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
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
        });

        modelBuilder.Entity<Order>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("tasks_pkey");

            entity.ToTable("orders");

            entity.HasIndex(e => e.WorkOrder, "tasks_work_order_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.AttentionDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("attention_date");
            entity.Property(e => e.BackofficeUserId).HasColumnName("backoffice_user_id");
            entity.Property(e => e.BrancheId).HasColumnName("branche_id");
            entity.Property(e => e.ClientId).HasColumnName("client_id");
            entity.Property(e => e.CreationDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("creation_date");
            entity.Property(e => e.EndDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("end_date");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.OrderStatusId).HasColumnName("order_status_id");
            entity.Property(e => e.OrderType)
                .HasMaxLength(64)
                .HasColumnName("order_type");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.ScheduledDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("scheduled_date");
            entity.Property(e => e.SerialNumber)
                .HasMaxLength(32)
                .HasColumnName("serial_number");
            entity.Property(e => e.ServiceType)
                .HasMaxLength(128)
                .HasColumnName("service_type");
            entity.Property(e => e.StartDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("start_date");
            entity.Property(e => e.TechnicianUserId).HasColumnName("technician_user_id");
            entity.Property(e => e.WorkOrder)
                .HasMaxLength(16)
                .HasColumnName("work_order");

            entity.HasOne(d => d.BackofficeUser).WithMany(p => p.OrderBackofficeUsers)
                .HasForeignKey(d => d.BackofficeUserId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("fk_tasks_backoffice_user");

            entity.HasOne(d => d.Branche).WithMany(p => p.Orders)
                .HasForeignKey(d => d.BrancheId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_tasks_branche");

            entity.HasOne(d => d.Client).WithMany(p => p.Orders)
                .HasForeignKey(d => d.ClientId)
                .HasConstraintName("fk_tasks_client");

            entity.HasOne(d => d.OrderStatus).WithMany(p => p.Orders)
                .HasForeignKey(d => d.OrderStatusId)
                .HasConstraintName("fk_tasks_task_status");

            entity.HasOne(d => d.TechnicianUser).WithMany(p => p.OrderTechnicianUsers)
                .HasForeignKey(d => d.TechnicianUserId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("fk_tasks_technician_user");
        });

        modelBuilder.Entity<OrdersStatus>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("task_status_pkey");

            entity.ToTable("orders_status");

            entity.HasIndex(e => e.Name, "task_status_name_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Description)
                .HasMaxLength(128)
                .HasColumnName("description");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.Name)
                .HasMaxLength(16)
                .HasColumnName("name");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
        });

        modelBuilder.Entity<Permission>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("permissions_pkey");

            entity.ToTable("permissions");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Description)
                .HasMaxLength(255)
                .HasColumnName("description");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.Name)
                .HasMaxLength(128)
                .HasColumnName("name");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("registration_date");
        });

        modelBuilder.Entity<Product>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("products_pkey");

            entity.ToTable("products");

            entity.HasIndex(e => e.Name, "products_name_key").IsUnique();

            entity.HasIndex(e => e.SkuCode, "products_sku_code_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.CategoryId).HasColumnName("category_id");
            entity.Property(e => e.Description)
                .HasMaxLength(256)
                .HasColumnName("description");
            entity.Property(e => e.Family)
                .HasMaxLength(64)
                .HasColumnName("family");
            entity.Property(e => e.Image)
                .HasMaxLength(256)
                .HasColumnName("image");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.IsSerializable)
                .HasDefaultValue(false)
                .HasColumnName("is_serializable");
            entity.Property(e => e.Model)
                .HasMaxLength(64)
                .HasColumnName("model");
            entity.Property(e => e.Name)
                .HasMaxLength(128)
                .HasColumnName("name");
            entity.Property(e => e.Price)
                .HasPrecision(10, 2)
                .HasColumnName("price");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.SkuCode)
                .HasMaxLength(16)
                .HasColumnName("sku_code");
            entity.Property(e => e.SupplierId).HasColumnName("supplier_id");
            entity.Property(e => e.Type)
                .HasMaxLength(16)
                .HasColumnName("type");
            entity.Property(e => e.UnitOfMeasurementId).HasColumnName("unit_of_measurement_id");

            entity.HasOne(d => d.Category).WithMany(p => p.Products)
                .HasForeignKey(d => d.CategoryId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("products_category_id_fkey");

            entity.HasOne(d => d.Supplier).WithMany(p => p.Products)
                .HasForeignKey(d => d.SupplierId)
                .HasConstraintName("products_supplier_id_fkey");

            entity.HasOne(d => d.UnitOfMeasurement).WithMany(p => p.Products)
                .HasForeignKey(d => d.UnitOfMeasurementId)
                .HasConstraintName("products_unit_of_measurement_id_fkey");
        });

        modelBuilder.Entity<ProductMovement>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("product_movements_pkey");

            entity.ToTable("product_movements");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.CreatedUserId).HasColumnName("created_user_id");
            entity.Property(e => e.DeliveryNote)
                .HasMaxLength(16)
                .HasColumnName("delivery_note");
            entity.Property(e => e.Description)
                .HasMaxLength(256)
                .HasColumnName("description");
            entity.Property(e => e.DestinationBodegaId).HasColumnName("destination_bodega_id");
            entity.Property(e => e.Image)
                .HasMaxLength(256)
                .HasColumnName("image");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.LastUpdated)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("last_updated");
            entity.Property(e => e.MovementCode)
                .HasMaxLength(64)
                .HasColumnName("movement_code");
            entity.Property(e => e.MovementDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("movement_date");
            entity.Property(e => e.MovementOperationStatusId).HasColumnName("movement_operation_status_id");
            entity.Property(e => e.MovementOperationTypeId).HasColumnName("movement_operation_type_id");
            entity.Property(e => e.OrderId).HasColumnName("order_id");
            entity.Property(e => e.OriginBodegaId).HasColumnName("origin_bodega_id");
            entity.Property(e => e.ReceivedUserId).HasColumnName("received_user_id");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.SupplierId).HasColumnName("supplier_id");

            entity.HasOne(d => d.CreatedUser).WithMany(p => p.ProductMovementCreatedUsers)
                .HasForeignKey(d => d.CreatedUserId)
                .HasConstraintName("fk_created_user");

            entity.HasOne(d => d.DestinationBodega).WithMany(p => p.ProductMovementDestinationBodegas)
                .HasForeignKey(d => d.DestinationBodegaId)
                .HasConstraintName("fk_destination_warehouse_storage");

            entity.HasOne(d => d.MovementOperationStatus).WithMany(p => p.ProductMovements)
                .HasForeignKey(d => d.MovementOperationStatusId)
                .HasConstraintName("fk_operation_status");

            entity.HasOne(d => d.MovementOperationType).WithMany(p => p.ProductMovements)
                .HasForeignKey(d => d.MovementOperationTypeId)
                .HasConstraintName("fk_operation_type");

            entity.HasOne(d => d.Order).WithMany(p => p.ProductMovements)
                .HasForeignKey(d => d.OrderId)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("fk_task");

            entity.HasOne(d => d.OriginBodega).WithMany(p => p.ProductMovementOriginBodegas)
                .HasForeignKey(d => d.OriginBodegaId)
                .HasConstraintName("fk_origin_warehouse_storage");

            entity.HasOne(d => d.ReceivedUser).WithMany(p => p.ProductMovementReceivedUsers)
                .HasForeignKey(d => d.ReceivedUserId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("fk_received_user");

            entity.HasOne(d => d.Supplier).WithMany(p => p.ProductMovements)
                .HasForeignKey(d => d.SupplierId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("fk_supplier");
        });

        modelBuilder.Entity<ProductMovementItem>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("product_movement_details_pkey");

            entity.ToTable("product_movement_items");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.CreatedQuantity).HasColumnName("created_quantity");
            entity.Property(e => e.ProductId).HasColumnName("product_id");
            entity.Property(e => e.ProductMovementId).HasColumnName("product_movement_id");
            entity.Property(e => e.ReceivedQuantity).HasColumnName("received_quantity");
            entity.Property(e => e.UpdateDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("update_date");

            entity.HasOne(d => d.Product).WithMany(p => p.ProductMovementItems)
                .HasForeignKey(d => d.ProductId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_product_movement_details_product");

            entity.HasOne(d => d.ProductMovement).WithMany(p => p.ProductMovementItems)
                .HasForeignKey(d => d.ProductMovementId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_product_movement_details_movement");
        });

        modelBuilder.Entity<Role>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("roles_pkey");

            entity.ToTable("roles");

            entity.HasIndex(e => e.Name, "roles_name_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Description)
                .HasMaxLength(128)
                .HasColumnName("description");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.Name)
                .HasMaxLength(32)
                .HasColumnName("name");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
        });

        modelBuilder.Entity<RolePermission>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("role_permissions_pkey");

            entity.ToTable("role_permissions");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.PermissionId).HasColumnName("permission_id");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnName("registration_date");
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

        modelBuilder.Entity<SerializedProductMovementItem>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("serialized_product_movement_details_pkey");

            entity.ToTable("serialized_product_movement_items");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.LinkedCardNumber)
                .HasMaxLength(32)
                .HasColumnName("linked_card_number");
            entity.Property(e => e.ProductMovementId).HasColumnName("product_movement_id");
            entity.Property(e => e.SerializedProductStockId).HasColumnName("serialized_product_stock_id");
            entity.Property(e => e.UpdateDate)
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("update_date");

            entity.HasOne(d => d.ProductMovement).WithMany(p => p.SerializedProductMovementItems)
                .HasForeignKey(d => d.ProductMovementId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_serialized_product_movement_details_movement");

            entity.HasOne(d => d.SerializedProductStock).WithMany(p => p.SerializedProductMovementItems)
                .HasForeignKey(d => d.SerializedProductStockId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_serialized_product_movement_details_stock");
        });

        modelBuilder.Entity<SerializedProductStock>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("serialized_product_stocks_pkey");

            entity.ToTable("serialized_product_stocks");

            entity.HasIndex(e => e.SerialNumber, "serialized_product_stocks_serial_number_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.BodegaId).HasColumnName("bodega_id");
            entity.Property(e => e.CardNumber)
                .HasMaxLength(32)
                .HasColumnName("card_number");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.ProductId).HasColumnName("product_id");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.RidNumber)
                .HasMaxLength(32)
                .HasColumnName("rid_number");
            entity.Property(e => e.SerialNumber)
                .HasMaxLength(32)
                .HasColumnName("serial_number");

            entity.HasOne(d => d.Bodega).WithMany(p => p.SerializedProductStocks)
                .HasForeignKey(d => d.BodegaId)
                .HasConstraintName("fk_stock_product_serials_warehouses_storage");

            entity.HasOne(d => d.Product).WithMany(p => p.SerializedProductStocks)
                .HasForeignKey(d => d.ProductId)
                .HasConstraintName("fk_stock_product_serials_product");
        });

        modelBuilder.Entity<StockProduct>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("stock_products_pkey");

            entity.ToTable("stock_products");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.BodegaId).HasColumnName("bodega_id");
            entity.Property(e => e.ProductId).HasColumnName("product_id");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.Stock)
                .HasDefaultValue(0)
                .HasColumnName("stock");

            entity.HasOne(d => d.Bodega).WithMany(p => p.StockProducts)
                .HasForeignKey(d => d.BodegaId)
                .HasConstraintName("fk_stock_products_warehouses_storage");

            entity.HasOne(d => d.Product).WithMany(p => p.StockProducts)
                .HasForeignKey(d => d.ProductId)
                .HasConstraintName("fk_stock_products_product");
        });

        modelBuilder.Entity<Supplier>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("suppliers_pkey");

            entity.ToTable("suppliers");

            entity.HasIndex(e => e.Ruc, "suppliers_ruc_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Address)
                .HasMaxLength(120)
                .HasColumnName("address");
            entity.Property(e => e.BusinessName)
                .HasMaxLength(128)
                .HasColumnName("business_name");
            entity.Property(e => e.Email)
                .HasMaxLength(64)
                .HasColumnName("email");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.Phone1)
                .HasMaxLength(16)
                .HasColumnName("phone1");
            entity.Property(e => e.Phone2)
                .HasMaxLength(16)
                .HasColumnName("phone2");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.Ruc)
                .HasMaxLength(16)
                .HasColumnName("ruc");
            entity.Property(e => e.UbigeoId).HasColumnName("ubigeo_id");
            entity.Property(e => e.Website)
                .HasMaxLength(128)
                .HasColumnName("website");

            entity.HasOne(d => d.Ubigeo).WithMany(p => p.Suppliers)
                .HasForeignKey(d => d.UbigeoId)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("suppliers_ubigeo_id_fkey");
        });

        modelBuilder.Entity<Transaction>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("transactions_pkey");

            entity.ToTable("transactions");

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

        modelBuilder.Entity<Ubigeo>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("ubigeos_pkey");

            entity.ToTable("ubigeos");

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

        modelBuilder.Entity<UnitsOfMeasurement>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("units_of_measurement_pkey");

            entity.ToTable("units_of_measurement");

            entity.HasIndex(e => e.Name, "units_of_measurement_name_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Abbreviation)
                .HasMaxLength(4)
                .HasColumnName("abbreviation");
            entity.Property(e => e.Description)
                .HasMaxLength(250)
                .HasColumnName("description");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.Name)
                .HasMaxLength(32)
                .HasColumnName("name");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("users_pkey");

            entity.ToTable("users");

            entity.HasIndex(e => e.Username, "users_username_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .HasColumnName("email");
            entity.Property(e => e.EmployeeId).HasColumnName("employee_id");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.IsDeleted)
                .HasDefaultValue(false)
                .HasColumnName("is_deleted");
            entity.Property(e => e.Password)
                .HasMaxLength(256)
                .HasColumnName("password");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.Username)
                .HasMaxLength(16)
                .HasColumnName("username");

            entity.HasOne(d => d.Employee).WithMany(p => p.Users)
                .HasForeignKey(d => d.EmployeeId)
                .HasConstraintName("fk_users_employee");
        });

        modelBuilder.Entity<UserPermissionBranch>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("users_permissions_branchs_pkey");

            entity.ToTable("user_permission_branchs");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.BranchId).HasColumnName("branch_id");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.PermissionId).HasColumnName("permission_id");
            entity.Property(e => e.UserId).HasColumnName("user_id");

            entity.HasOne(d => d.Branch).WithMany(p => p.UserPermissionBranches)
                .HasForeignKey(d => d.BranchId)
                .HasConstraintName("users_permissions_branchs_branch_id_fkey");

            entity.HasOne(d => d.Permission).WithMany(p => p.UserPermissionBranches)
                .HasForeignKey(d => d.PermissionId)
                .HasConstraintName("users_permissions_branchs_permission_id_fkey");

            entity.HasOne(d => d.User).WithMany(p => p.UserPermissionBranches)
                .HasForeignKey(d => d.UserId)
                .HasConstraintName("users_permissions_branchs_user_id_fkey");
        });

        modelBuilder.Entity<UserRole>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("user_role_pkey");

            entity.ToTable("user_roles");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
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

        modelBuilder.Entity<UserRoleBranch>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("users_roles_branchs_pkey");

            entity.ToTable("user_role_branchs");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.BranchId).HasColumnName("branch_id");
            entity.Property(e => e.RoleId).HasColumnName("role_id");
            entity.Property(e => e.UserId).HasColumnName("user_id");

            entity.HasOne(d => d.Branch).WithMany(p => p.UserRoleBranches)
                .HasForeignKey(d => d.BranchId)
                .HasConstraintName("users_roles_branchs_branch_id_fkey");

            entity.HasOne(d => d.Role).WithMany(p => p.UserRoleBranches)
                .HasForeignKey(d => d.RoleId)
                .HasConstraintName("users_roles_branchs_role_id_fkey");

            entity.HasOne(d => d.User).WithMany(p => p.UserRoleBranches)
                .HasForeignKey(d => d.UserId)
                .HasConstraintName("users_roles_branchs_user_id_fkey");
        });

        modelBuilder.Entity<Warehouse>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("warehouses_pkey");

            entity.ToTable("warehouses");

            entity.HasIndex(e => e.Name, "warehouses_name_key").IsUnique();

            entity.HasIndex(e => e.ShortName, "warehouses_short_name_key").IsUnique();

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.Address)
                .HasMaxLength(128)
                .HasColumnName("address");
            entity.Property(e => e.BrancheId).HasColumnName("branche_id");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.Name)
                .HasMaxLength(64)
                .HasColumnName("name");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.ShortName)
                .HasMaxLength(8)
                .HasColumnName("short_name");
            entity.Property(e => e.UbigeoId).HasColumnName("ubigeo_id");

            entity.HasOne(d => d.Branche).WithMany(p => p.Warehouses)
                .HasForeignKey(d => d.BrancheId)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("warehouses_branche_id_fkey");

            entity.HasOne(d => d.Ubigeo).WithMany(p => p.Warehouses)
                .HasForeignKey(d => d.UbigeoId)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("warehouses_ubigeo_id_fkey");
        });

        modelBuilder.Entity<WarehouseProduct>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("warehouse_products_pkey");

            entity.ToTable("warehouse_products");

            entity.Property(e => e.Id)
                .HasDefaultValueSql("gen_random_uuid()")
                .HasColumnName("id");
            entity.Property(e => e.IsActive)
                .HasDefaultValue(true)
                .HasColumnName("is_active");
            entity.Property(e => e.ProductId).HasColumnName("product_id");
            entity.Property(e => e.RegistrationDate)
                .HasDefaultValueSql("CURRENT_TIMESTAMP")
                .HasColumnType("timestamp(6) without time zone")
                .HasColumnName("registration_date");
            entity.Property(e => e.WarehouseId).HasColumnName("warehouse_id");

            entity.HasOne(d => d.Product).WithMany(p => p.WarehouseProducts)
                .HasForeignKey(d => d.ProductId)
                .HasConstraintName("warehouse_products_product_id_fkey");

            entity.HasOne(d => d.Warehouse).WithMany(p => p.WarehouseProducts)
                .HasForeignKey(d => d.WarehouseId)
                .HasConstraintName("warehouse_products_warehouse_id_fkey");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
