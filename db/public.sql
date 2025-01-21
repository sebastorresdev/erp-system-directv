/*
 Navicat Premium Dump SQL

 Source Server         : Postgresql
 Source Server Type    : PostgreSQL
 Source Server Version : 170000 (170000)
 Source Host           : localhost:5432
 Source Catalog        : erp_system_directv_db
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 170000 (170000)
 File Encoding         : 65001

 Date: 20/01/2025 22:57:30
*/


-- ----------------------------
-- Table structure for bodegas
-- ----------------------------
DROP TABLE IF EXISTS "public"."bodegas";
CREATE TABLE "public"."bodegas" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "warehouse_id" uuid,
  "technician_user_id" uuid,
  "location_type_id" uuid NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of bodegas
-- ----------------------------
INSERT INTO "public"."bodegas" VALUES ('8da09de5-c83e-46bf-8336-2de539bf4b4b', NULL, NULL, 'ca24944b-22c0-43d2-bc96-1a3bda750bc0', 't', '2024-10-23 18:30:52.500994');
INSERT INTO "public"."bodegas" VALUES ('2c7d287e-8e7a-4ad3-ac94-790dee5499ee', NULL, NULL, 'd7b6f3a1-a7fa-45c8-97b7-33038fdb05ec', 't', '2024-10-23 18:30:52.500994');
INSERT INTO "public"."bodegas" VALUES ('09aa4935-87c3-4808-8126-51654f5d6c76', NULL, NULL, 'a954cb64-9e92-4b39-a32f-72a71021d037', 't', '2024-10-23 18:30:52.500994');

-- ----------------------------
-- Table structure for branches
-- ----------------------------
DROP TABLE IF EXISTS "public"."branches";
CREATE TABLE "public"."branches" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "address" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(20) COLLATE "pg_catalog"."default",
  "ubigeo_id" uuid NOT NULL,
  "phone" varchar(20) COLLATE "pg_catalog"."default",
  "email" varchar(100) COLLATE "pg_catalog"."default",
  "is_active" bool DEFAULT true,
  "is_deleted" bool DEFAULT false,
  "registration_date" timestamp(6) DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of branches
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."categories";
CREATE TABLE "public"."categories" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(256) COLLATE "pg_catalog"."default",
  "is_active" bool NOT NULL DEFAULT true,
  "creation_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of categories
-- ----------------------------

-- ----------------------------
-- Table structure for clients
-- ----------------------------
DROP TABLE IF EXISTS "public"."clients";
CREATE TABLE "public"."clients" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "client_code" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "client_name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "dni" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "ubigeo_id" uuid NOT NULL,
  "address" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "address_note" varchar(256) COLLATE "pg_catalog"."default",
  "email" varchar(128) COLLATE "pg_catalog"."default",
  "provider_id" uuid NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of clients
-- ----------------------------

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS "public"."company";
CREATE TABLE "public"."company" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "business_name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "ruc" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "ubigeo_id" uuid NOT NULL,
  "address" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "phone1" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "phone2" varchar(16) COLLATE "pg_catalog"."default",
  "email" varchar(64) COLLATE "pg_catalog"."default",
  "website" varchar(128) COLLATE "pg_catalog"."default",
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of company
-- ----------------------------

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS "public"."employees";
CREATE TABLE "public"."employees" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "dni" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "gender" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "birth_date" timestamp(6) NOT NULL,
  "ubigeo_id" uuid NOT NULL,
  "address" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "phone1" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "phone2" varchar(16) COLLATE "pg_catalog"."default",
  "email" varchar(128) COLLATE "pg_catalog"."default",
  "job_position" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "start_date" timestamp(6) NOT NULL,
  "end_date" timestamp(6),
  "marital_status" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "salary" numeric(10,2) NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "first_name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "last_name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "image" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO "public"."employees" VALUES ('193480ca-cd76-4c93-999b-ca97fe902559', '47931526', 'M', '1991-08-02 00:00:00', '98e54c4c-8f4a-4a14-b484-8a5fcc664116', 'Jr Corregidores 147 Villa Fatima', '948965622', NULL, 'sebasdtc@outlook.com', 'Jefe Almacen', '2014-12-01 00:00:00', NULL, 'soltero', 2500.00, 't', '2025-01-12 18:37:56.888643', 'Sebastian David', 'Torres Chavez', NULL);

-- ----------------------------
-- Table structure for interaction_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."interaction_types";
CREATE TABLE "public"."interaction_types" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of interaction_types
-- ----------------------------
INSERT INTO "public"."interaction_types" VALUES ('986aa3aa-8e67-45b0-8e6b-f603d254cdb9', 'No Contactado', 'Aún no se ha intentado contactar al cliente.', '2024-10-23 18:30:52.429446');
INSERT INTO "public"."interaction_types" VALUES ('854ba947-b27d-4546-a2c1-d9bef511646b', 'Cliente No Contesta', 'Se intentó contactar al cliente, pero no respondió.', '2024-10-23 18:30:52.429446');
INSERT INTO "public"."interaction_types" VALUES ('43630f14-80e3-4820-a32a-580898afb43f', 'Cliente Ocupado', 'El cliente no puede atender la llamada o visita en este momento.', '2024-10-23 18:30:52.429446');
INSERT INTO "public"."interaction_types" VALUES ('f103643d-adf1-4369-9991-1656db4cc48d', 'Cliente De Viaje', 'El cliente está fuera de la ciudad o país, no puede ser atendido por ahora.', '2024-10-23 18:30:52.429446');
INSERT INTO "public"."interaction_types" VALUES ('b77bf335-b7bd-47b9-b3de-b96aff232d88', 'Reprogramado a Solicitud', 'El cliente pidió reprogramar la cita a otra fecha o horario.', '2024-10-23 18:30:52.429446');
INSERT INTO "public"."interaction_types" VALUES ('839baef3-4f48-4c1c-aee2-7a5be0d43928', 'Cliente Acepta Programación', 'El cliente aceptó la fecha y hora para la atención.', '2024-10-23 18:30:52.429446');
INSERT INTO "public"."interaction_types" VALUES ('d6e94b57-03cb-405b-b98d-e994af484b55', 'Cliente Canceló', 'El cliente ha decidido cancelar el servicio o trabajo solicitado.', '2024-10-23 18:30:52.429446');
INSERT INTO "public"."interaction_types" VALUES ('88ea60ca-709d-4c21-b78d-0a2ba5cedc33', 'Cliente Inaccesible', 'No se pudo contactar al cliente después de varios intentos.', '2024-10-23 18:30:52.429446');
INSERT INTO "public"."interaction_types" VALUES ('0c2b748c-23b3-4b67-8cd6-a8da223ae030', 'Cliente No Necesita Servicio', 'El cliente informa que ya no necesita el servicio solicitado.', '2024-10-23 18:30:52.429446');
INSERT INTO "public"."interaction_types" VALUES ('dc4dc1d9-25ae-4dfa-845d-b3579716b11d', 'Cliente No Puede Recibir', 'El cliente no puede recibir al técnico en su domicilio (problemas personales, horarios).', '2024-10-23 18:30:52.429446');

-- ----------------------------
-- Table structure for interactions
-- ----------------------------
DROP TABLE IF EXISTS "public"."interactions";
CREATE TABLE "public"."interactions" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "interaction_type_id" uuid NOT NULL,
  "comment" varchar(256) COLLATE "pg_catalog"."default",
  "user_id" uuid NOT NULL,
  "task_id" uuid NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of interactions
-- ----------------------------

-- ----------------------------
-- Table structure for location_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."location_types";
CREATE TABLE "public"."location_types" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "code" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(128) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of location_types
-- ----------------------------
INSERT INTO "public"."location_types" VALUES ('ca24944b-22c0-43d2-bc96-1a3bda750bc0', 'Tercero/Proveedor', 'Ubicación de proveedor');
INSERT INTO "public"."location_types" VALUES ('d7b6f3a1-a7fa-45c8-97b7-33038fdb05ec', 'Tercero/Cliente', 'Ubicación de cliente');
INSERT INTO "public"."location_types" VALUES ('a954cb64-9e92-4b39-a32f-72a71021d037', 'Ajuste/Inventario', 'Ubicación ajuste inventario');
INSERT INTO "public"."location_types" VALUES ('d610c5a0-0e10-4264-83ea-02c43d03a489', 'Stock', 'Ubicación de almacen principal');
INSERT INTO "public"."location_types" VALUES ('54467ef2-1b1b-4e7f-b458-736ae3425059', 'TEC', 'Ubicación de tecnico');

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS "public"."modules";
CREATE TABLE "public"."modules" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "routes" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO "public"."modules" VALUES ('686477de-695e-4f4b-9c6a-32fab3bd5a26', 'inventary', 'Modulo de inventario', '2025-01-19 18:29:26.301132');
INSERT INTO "public"."modules" VALUES ('714d62a8-a23f-46c8-b467-1d2f3cc90ecf', 'settings', 'Modulo de ajustes', '2025-01-19 18:29:46.335859');
INSERT INTO "public"."modules" VALUES ('ca003ce3-75b0-4cb5-9744-ffc26b4a67c0', 'sales', 'Modulo de ventas', '2025-01-19 18:29:58.77806');

-- ----------------------------
-- Table structure for movement_operation_statuses
-- ----------------------------
DROP TABLE IF EXISTS "public"."movement_operation_statuses";
CREATE TABLE "public"."movement_operation_statuses" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "name" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of movement_operation_statuses
-- ----------------------------
INSERT INTO "public"."movement_operation_statuses" VALUES ('223ffa40-4207-4ac1-8c94-361ee6240c99', 'En Transito', 'Indica que el movimiento está en proceso de transporte y aún falta aprobación.', '2024-10-23 18:30:52.422205');
INSERT INTO "public"."movement_operation_statuses" VALUES ('cb5e6e9f-53df-4d74-a5b7-29615e95a635', 'Completado', 'Indica que el movimiento ha sido finalizado satisfactoriamente.', '2024-10-23 18:30:52.422205');
INSERT INTO "public"."movement_operation_statuses" VALUES ('ed4992fc-99d4-4d7f-b2c8-70fd52621c89', 'Inconsistencia', 'Indica que ha sido aceptado parcialmente algunos productos.', '2024-10-23 18:30:52.422205');
INSERT INTO "public"."movement_operation_statuses" VALUES ('04f8be29-50c1-4f0b-8e6a-d100fb3149e0', 'Cancelado', 'Indica que el movimiento ha sido cancelado.', '2024-10-23 18:30:52.422205');

-- ----------------------------
-- Table structure for movement_operation_types
-- ----------------------------
DROP TABLE IF EXISTS "public"."movement_operation_types";
CREATE TABLE "public"."movement_operation_types" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "name" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(8) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of movement_operation_types
-- ----------------------------
INSERT INTO "public"."movement_operation_types" VALUES ('96f5ec25-f236-4f4c-adbb-2c60920f058c', 'Traslado', 'INT', 'Movimiento entre almacenes de la empresa y las ubicaciones', '2024-10-23 18:30:52.416745');
INSERT INTO "public"."movement_operation_types" VALUES ('590279f3-65c1-4b0e-b318-666d7b0d02f7', 'Liquidación', 'LIQ', 'Salida por utilización de material en el cliente', '2024-10-23 18:30:52.416745');
INSERT INTO "public"."movement_operation_types" VALUES ('f9aaa781-6b89-4ca7-a124-2167ba4079b0', 'Recepción', 'IN', 'Ingreso de material por proveedores', '2024-10-23 18:30:52.416745');
INSERT INTO "public"."movement_operation_types" VALUES ('266a92be-c82a-44a1-a483-39ae0ff8e97e', 'Entrega', 'OUT', 'Salida de material a los proveedores', '2024-10-23 18:30:52.416745');
INSERT INTO "public"."movement_operation_types" VALUES ('00af46a5-c3e8-4de0-97df-a1330424036d', 'Ajuste', 'AIN', 'Movimiento del material por inventarios', '2024-10-23 18:30:52.416745');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS "public"."orders";
CREATE TABLE "public"."orders" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "client_id" uuid NOT NULL,
  "work_order" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "serial_number" varchar(32) COLLATE "pg_catalog"."default",
  "service_type" varchar(128) COLLATE "pg_catalog"."default",
  "order_type" varchar(64) COLLATE "pg_catalog"."default",
  "order_status_id" uuid NOT NULL,
  "creation_date" timestamp(6) NOT NULL,
  "scheduled_date" timestamp(6),
  "attention_date" timestamp(6),
  "start_date" timestamp(6),
  "end_date" timestamp(6),
  "technician_user_id" uuid,
  "backoffice_user_id" uuid,
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "branche_id" uuid NOT NULL
)
;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for orders_status
-- ----------------------------
DROP TABLE IF EXISTS "public"."orders_status";
CREATE TABLE "public"."orders_status" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "name" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "is_active" bool NOT NULL DEFAULT true
)
;

-- ----------------------------
-- Records of orders_status
-- ----------------------------
INSERT INTO "public"."orders_status" VALUES ('860c3ef0-6a1d-4e77-aedc-630920e9b34b', 'Pendiente', 'Indica que aun no se ha tocado la tarea', '2024-10-23 18:30:52.425935', 't');
INSERT INTO "public"."orders_status" VALUES ('22b19183-b4bc-41fb-b706-58d0bf399cd8', 'Agendado', 'Indica que se ha programado la tarea para alguna fecha', '2024-10-23 18:30:52.425935', 't');
INSERT INTO "public"."orders_status" VALUES ('f972e581-6cf1-42c5-9d58-20b78236601c', 'Terminado', 'Indica que se ha terminado la tarea para alguna fecha', '2024-10-23 18:30:52.425935', 't');
INSERT INTO "public"."orders_status" VALUES ('ea6d23ea-d2d5-4796-afde-afeae97c328a', 'Finalizado', 'Indica que se ha finalizado la tarea para alguna fecha', '2024-10-23 18:30:52.425935', 't');
INSERT INTO "public"."orders_status" VALUES ('ac091d9c-b95f-4d59-a2b2-12932c6e1e4f', 'Cancelado', 'Indica que se cancelo la tarea.', '2025-01-14 11:04:59.227163', 't');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."permissions";
CREATE TABLE "public"."permissions" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO "public"."permissions" VALUES ('cf6fe68a-560f-4e80-8a97-9c337689c119', 'create:user', 'Crear un usuario', 't', '2025-01-12 19:13:56.40662');
INSERT INTO "public"."permissions" VALUES ('8f044758-7f5f-4ed8-844e-9011879b8fff', 'delete:user', 'Eliminar un usuario', 't', '2025-01-12 19:14:09.462867');
INSERT INTO "public"."permissions" VALUES ('7c56e56c-6686-4798-b028-5a03eb2593fd', 'get:user', 'Leer usuarios', 't', '2025-01-12 19:14:31.151448');
INSERT INTO "public"."permissions" VALUES ('53e2af9a-4329-419e-82d9-053e7c25848c', 'view:user', 'Visualizar modulo de usuarios', 't', '2025-01-14 12:22:49.493167');
INSERT INTO "public"."permissions" VALUES ('dfd64d78-8667-4803-b584-73ad86367404', 'update:user', 'Actualizar un usuario', 't', '2025-01-19 17:49:32.88318');
INSERT INTO "public"."permissions" VALUES ('1cfbfac7-dbb3-4173-b9d1-94938b8ee030', 'create:product', 'Crear un producto', 't', '2025-01-19 17:49:46.22526');
INSERT INTO "public"."permissions" VALUES ('35befe1f-666a-475f-a59a-c9686283486b', 'delete:product', 'Eliminar un producto', 't', '2025-01-19 17:49:50.559642');
INSERT INTO "public"."permissions" VALUES ('6288c607-bf9d-402b-aa09-e80fc43999b4', 'get:product', 'Leer un producto', 't', '2025-01-19 17:50:11.844792');
INSERT INTO "public"."permissions" VALUES ('957df268-47ac-4851-9d19-26779fd09a27', 'get_all:product', 'Leer todos los productos', 't', '2025-01-19 17:50:36.23664');
INSERT INTO "public"."permissions" VALUES ('cbaa4227-23f6-45f2-9e04-e7aad15d6c5f', 'update:product', 'Actualizar un producto', 't', '2025-01-19 17:50:44.853357');
INSERT INTO "public"."permissions" VALUES ('69561a6a-facb-4874-979a-52b2b6f860b6', 'view:module:inventory', 'Ver el modulo de inventario', 't', '2025-01-19 19:10:25.967431');

-- ----------------------------
-- Table structure for product_movement_items
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_movement_items";
CREATE TABLE "public"."product_movement_items" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "product_movement_id" uuid NOT NULL,
  "product_id" uuid NOT NULL,
  "created_quantity" int4 NOT NULL,
  "received_quantity" int4,
  "update_date" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of product_movement_items
-- ----------------------------

-- ----------------------------
-- Table structure for product_movements
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_movements";
CREATE TABLE "public"."product_movements" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "movement_code" varchar(64) COLLATE "pg_catalog"."default",
  "movement_operation_type_id" uuid NOT NULL,
  "origin_bodega_id" uuid NOT NULL,
  "destination_bodega_id" uuid NOT NULL,
  "supplier_id" uuid,
  "order_id" uuid,
  "movement_operation_status_id" uuid NOT NULL,
  "created_user_id" uuid NOT NULL,
  "received_user_id" uuid,
  "delivery_note" varchar(16) COLLATE "pg_catalog"."default",
  "description" varchar(256) COLLATE "pg_catalog"."default",
  "image" varchar(256) COLLATE "pg_catalog"."default",
  "movement_date" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "last_updated" timestamp(6),
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "is_active" bool NOT NULL DEFAULT true
)
;

-- ----------------------------
-- Records of product_movements
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS "public"."products";
CREATE TABLE "public"."products" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "sku_code" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(256) COLLATE "pg_catalog"."default",
  "category_id" uuid,
  "model" varchar(64) COLLATE "pg_catalog"."default",
  "price" numeric(10,2),
  "unit_of_measurement_id" uuid NOT NULL,
  "supplier_id" uuid NOT NULL,
  "type" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "family" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "image" varchar(256) COLLATE "pg_catalog"."default",
  "is_serializable" bool NOT NULL DEFAULT false,
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for role_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."role_permissions";
CREATE TABLE "public"."role_permissions" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "permission_id" uuid NOT NULL,
  "role_id" uuid NOT NULL,
  "registration_date" time(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "is_active" bool NOT NULL DEFAULT true
)
;

-- ----------------------------
-- Records of role_permissions
-- ----------------------------
INSERT INTO "public"."role_permissions" VALUES ('521b492d-0ab7-446c-8ac3-e4b07a10b67c', 'cf6fe68a-560f-4e80-8a97-9c337689c119', '670f9e58-314f-4c17-8c57-1f9f711987c6', '19:15:04.842197', 't');
INSERT INTO "public"."role_permissions" VALUES ('e040ae06-2ad6-470f-941c-07e1e23a64a1', '8f044758-7f5f-4ed8-844e-9011879b8fff', '670f9e58-314f-4c17-8c57-1f9f711987c6', '19:15:37.181643', 't');
INSERT INTO "public"."role_permissions" VALUES ('ee013c20-3758-4fee-a61e-bf38790c947c', '7c56e56c-6686-4798-b028-5a03eb2593fd', '670f9e58-314f-4c17-8c57-1f9f711987c6', '19:15:46.800184', 't');
INSERT INTO "public"."role_permissions" VALUES ('6f71b769-ddcb-4e67-9caf-3173df84702b', '1cfbfac7-dbb3-4173-b9d1-94938b8ee030', '64862f4b-0f14-45e9-88e9-31c2ab091a90', '17:56:48.468129', 't');
INSERT INTO "public"."role_permissions" VALUES ('be32f544-05b1-42ea-bab5-0357edbf8916', '6288c607-bf9d-402b-aa09-e80fc43999b4', '64862f4b-0f14-45e9-88e9-31c2ab091a90', '17:57:12.592551', 't');
INSERT INTO "public"."role_permissions" VALUES ('393d2b4f-6c6b-4d17-9b2b-9521de67f331', '957df268-47ac-4851-9d19-26779fd09a27', '64862f4b-0f14-45e9-88e9-31c2ab091a90', '17:57:25.637929', 't');
INSERT INTO "public"."role_permissions" VALUES ('91e2e720-c09d-4013-a5c4-5336154393d1', 'cbaa4227-23f6-45f2-9e04-e7aad15d6c5f', '64862f4b-0f14-45e9-88e9-31c2ab091a90', '17:57:43.031654', 't');
INSERT INTO "public"."role_permissions" VALUES ('c635c8b6-5bbc-4c13-8ac0-19defa53a28b', '69561a6a-facb-4874-979a-52b2b6f860b6', '64862f4b-0f14-45e9-88e9-31c2ab091a90', '19:11:37.664876', 't');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."roles";
CREATE TABLE "public"."roles" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "name" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO "public"."roles" VALUES ('670f9e58-314f-4c17-8c57-1f9f711987c6', 'Admin', 'Usuario administrador del sistema', 't', '2024-10-23 18:30:52.494349');
INSERT INTO "public"."roles" VALUES ('64862f4b-0f14-45e9-88e9-31c2ab091a90', 'Usuario almacen', 'Usuario base para el control del almacen', 't', '2024-10-23 18:30:52.494349');
INSERT INTO "public"."roles" VALUES ('3081f755-b8f5-40ef-99af-65da922f7425', 'Admin almacen', 'Usuario admin para el control del almacen', 't', '2024-10-23 18:30:52.494349');
INSERT INTO "public"."roles" VALUES ('af5a8b6f-10a3-40e9-8a13-068026a8f6f0', 'Usuario configuracion', 'Usuario base para el modulo de configuracion', 't', '2024-10-23 18:30:52.494349');
INSERT INTO "public"."roles" VALUES ('9f78889b-5139-41f4-abfe-798cedae6afe', 'Admin configuracion', 'Administrador del modulo de configuracion', 't', '2025-01-19 17:52:44.942018');

-- ----------------------------
-- Table structure for serialized_product_movement_items
-- ----------------------------
DROP TABLE IF EXISTS "public"."serialized_product_movement_items";
CREATE TABLE "public"."serialized_product_movement_items" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "linked_card_number" varchar(32) COLLATE "pg_catalog"."default",
  "product_movement_id" uuid NOT NULL,
  "serialized_product_stock_id" uuid NOT NULL,
  "update_date" timestamp(6),
  "IsReceived" bool NOT NULL
)
;

-- ----------------------------
-- Records of serialized_product_movement_items
-- ----------------------------

-- ----------------------------
-- Table structure for serialized_product_stocks
-- ----------------------------
DROP TABLE IF EXISTS "public"."serialized_product_stocks";
CREATE TABLE "public"."serialized_product_stocks" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "serial_number" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "card_number" varchar(32) COLLATE "pg_catalog"."default",
  "rid_number" varchar(32) COLLATE "pg_catalog"."default",
  "product_id" uuid NOT NULL,
  "bodega_id" uuid NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of serialized_product_stocks
-- ----------------------------

-- ----------------------------
-- Table structure for stock_products
-- ----------------------------
DROP TABLE IF EXISTS "public"."stock_products";
CREATE TABLE "public"."stock_products" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "product_id" uuid NOT NULL,
  "bodega_id" uuid NOT NULL,
  "stock" int4 NOT NULL DEFAULT 0,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of stock_products
-- ----------------------------

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS "public"."suppliers";
CREATE TABLE "public"."suppliers" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "business_name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "ruc" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "ubigeo_id" uuid NOT NULL,
  "address" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "phone1" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "phone2" varchar(16) COLLATE "pg_catalog"."default",
  "email" varchar(64) COLLATE "pg_catalog"."default",
  "website" varchar(128) COLLATE "pg_catalog"."default",
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of suppliers
-- ----------------------------

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS "public"."transactions";
CREATE TABLE "public"."transactions" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "document_type" varchar(4) COLLATE "pg_catalog"."default" NOT NULL,
  "counter" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO "public"."transactions" VALUES ('963159d3-b7e6-4cdc-9b49-f804b564888a', 'INT', 0);
INSERT INTO "public"."transactions" VALUES ('8f660538-97aa-4089-8343-6f2ae68adc5d', 'IN', 0);
INSERT INTO "public"."transactions" VALUES ('6fa4f18b-bd10-4006-832d-cc13a4e09f68', 'LIQ', 0);
INSERT INTO "public"."transactions" VALUES ('b12dfe61-63d8-4450-a489-4e019ada65e0', 'OUT', 0);
INSERT INTO "public"."transactions" VALUES ('8bd90505-9ff2-43af-88d1-82978597b86a', 'AIN', 0);

-- ----------------------------
-- Table structure for ubigeos
-- ----------------------------
DROP TABLE IF EXISTS "public"."ubigeos";
CREATE TABLE "public"."ubigeos" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "code" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "department" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "province" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "district" varchar(64) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of ubigeos
-- ----------------------------
INSERT INTO "public"."ubigeos" VALUES ('53674642-b93f-49d1-9a11-d564f58f8fad', '010101', 'AMAZONAS', 'CHACHAPOYAS', 'CHACHAPOYAS');
INSERT INTO "public"."ubigeos" VALUES ('413182d6-297c-4457-9da0-ebc2f8ca5db4', '010103', 'AMAZONAS', 'CHACHAPOYAS', 'BALSAS');
INSERT INTO "public"."ubigeos" VALUES ('7aaa3471-669e-4058-8db7-d5a4194c42e5', '010104', 'AMAZONAS', 'CHACHAPOYAS', 'CHETO');
INSERT INTO "public"."ubigeos" VALUES ('63f605af-a7e0-4ff2-a49a-0b53ff8d0419', '010105', 'AMAZONAS', 'CHACHAPOYAS', 'CHILIQUIN');
INSERT INTO "public"."ubigeos" VALUES ('99409a3d-9f95-4654-8f41-0b4ce1c1b251', '010106', 'AMAZONAS', 'CHACHAPOYAS', 'CHUQUIBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('165dd300-03c6-4579-addf-72c8004db749', '010107', 'AMAZONAS', 'CHACHAPOYAS', 'GRANADA');
INSERT INTO "public"."ubigeos" VALUES ('528b5594-197a-47a1-a3b0-76058ee2fea4', '010108', 'AMAZONAS', 'CHACHAPOYAS', 'HUANCAS');
INSERT INTO "public"."ubigeos" VALUES ('34481e3c-acab-4690-b682-1cf2489765ed', '010109', 'AMAZONAS', 'CHACHAPOYAS', 'LA JALCA');
INSERT INTO "public"."ubigeos" VALUES ('3cd75170-b5f0-4003-ac03-8dd137d375ed', '010110', 'AMAZONAS', 'CHACHAPOYAS', 'LEIMEBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('f1706cc0-aa5b-488c-9668-656dbbbf7b33', '010111', 'AMAZONAS', 'CHACHAPOYAS', 'LEVANTO');
INSERT INTO "public"."ubigeos" VALUES ('8d11de70-5294-4837-bace-29748bf712d0', '010112', 'AMAZONAS', 'CHACHAPOYAS', 'MAGDALENA');
INSERT INTO "public"."ubigeos" VALUES ('49dcdbf2-135b-425c-8775-f61dc26409f2', '010113', 'AMAZONAS', 'CHACHAPOYAS', 'MARISCAL CASTILLA');
INSERT INTO "public"."ubigeos" VALUES ('356a41a1-befe-4e6c-b884-96ae6dc71ad7', '010114', 'AMAZONAS', 'CHACHAPOYAS', 'MOLINOPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('9fc2f22c-6d04-4b8d-b4ac-fe78f7ecb0ae', '010115', 'AMAZONAS', 'CHACHAPOYAS', 'MONTEVIDEO');
INSERT INTO "public"."ubigeos" VALUES ('be445912-16f4-4d52-97c7-33f941451e6b', '010116', 'AMAZONAS', 'CHACHAPOYAS', 'OLLEROS');
INSERT INTO "public"."ubigeos" VALUES ('b50bb255-9b78-4770-92dd-3b9f2ec54e81', '010117', 'AMAZONAS', 'CHACHAPOYAS', 'QUINJALCA');
INSERT INTO "public"."ubigeos" VALUES ('159e79a5-7ffe-458b-8b0e-fb7649e50f54', '010118', 'AMAZONAS', 'CHACHAPOYAS', 'SAN FRANCISCO DE DAGUAS');
INSERT INTO "public"."ubigeos" VALUES ('313927ce-d7fe-4f13-aebc-131e3ec79ee3', '010119', 'AMAZONAS', 'CHACHAPOYAS', 'SAN ISIDRO DE MAINO');
INSERT INTO "public"."ubigeos" VALUES ('4c1e9d90-c097-4d30-85ae-c9ae1654a966', '010120', 'AMAZONAS', 'CHACHAPOYAS', 'SOLOCO');
INSERT INTO "public"."ubigeos" VALUES ('54d88a04-57b1-41eb-b5a1-4527f780543d', '010121', 'AMAZONAS', 'CHACHAPOYAS', 'SONCHE');
INSERT INTO "public"."ubigeos" VALUES ('b51a6dbd-8470-42ef-b583-15462e2ba375', '010201', 'AMAZONAS', 'BAGUA', 'BAGUA');
INSERT INTO "public"."ubigeos" VALUES ('473b1125-b644-4a91-8027-98ccddb041d1', '010202', 'AMAZONAS', 'BAGUA', 'ARAMANGO');
INSERT INTO "public"."ubigeos" VALUES ('26c2ed3c-e027-4b91-975f-ec633b4bd7cd', '010203', 'AMAZONAS', 'BAGUA', 'COPALLIN');
INSERT INTO "public"."ubigeos" VALUES ('a4ad2abf-64db-4675-a638-1a17f3b3295c', '010204', 'AMAZONAS', 'BAGUA', 'EL PARCO');
INSERT INTO "public"."ubigeos" VALUES ('b084a8e2-79ad-4288-8210-8d76ace4f11b', '010205', 'AMAZONAS', 'BAGUA', 'IMAZA');
INSERT INTO "public"."ubigeos" VALUES ('6e940fa4-2c00-4137-8597-7f90f8cf27ce', '010206', 'AMAZONAS', 'BAGUA', 'LA PECA');
INSERT INTO "public"."ubigeos" VALUES ('2f79adb7-0861-4af7-b9b9-48aa479b5a34', '010301', 'AMAZONAS', 'BONGARA', 'JUMBILLA');
INSERT INTO "public"."ubigeos" VALUES ('b7e4bcb2-5fc2-4d55-ac4e-fa21ef628bd5', '010302', 'AMAZONAS', 'BONGARA', 'CHISQUILLA');
INSERT INTO "public"."ubigeos" VALUES ('f297c46c-0093-458f-8a3d-f49b17f362d8', '010303', 'AMAZONAS', 'BONGARA', 'CHURUJA');
INSERT INTO "public"."ubigeos" VALUES ('99b35ba4-c058-4e1c-bbea-2b42f7898fbd', '010304', 'AMAZONAS', 'BONGARA', 'COROSHA');
INSERT INTO "public"."ubigeos" VALUES ('f053b033-56f8-477a-a1d2-920522ed4863', '010305', 'AMAZONAS', 'BONGARA', 'CUISPES');
INSERT INTO "public"."ubigeos" VALUES ('116aeaea-131e-48c9-9858-4edf92247269', '010306', 'AMAZONAS', 'BONGARA', 'FLORIDA');
INSERT INTO "public"."ubigeos" VALUES ('e2c00396-4b87-46bc-92ce-fc892ac1fb44', '010307', 'AMAZONAS', 'BONGARA', 'JAZAN');
INSERT INTO "public"."ubigeos" VALUES ('3ad24e6d-9fc7-4928-89a6-64fd82a1048f', '010308', 'AMAZONAS', 'BONGARA', 'RECTA');
INSERT INTO "public"."ubigeos" VALUES ('c1017bb0-d909-4d69-8347-0aea45625147', '010309', 'AMAZONAS', 'BONGARA', 'SAN CARLOS');
INSERT INTO "public"."ubigeos" VALUES ('6bc051c0-e1c0-4ab6-bd02-566ba94df5f8', '010310', 'AMAZONAS', 'BONGARA', 'SHIPASBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('2992e4e1-b3a7-4531-afb1-e1c9286f382d', '010311', 'AMAZONAS', 'BONGARA', 'VALERA');
INSERT INTO "public"."ubigeos" VALUES ('592ab697-9475-44ce-af33-db89a37edac0', '010312', 'AMAZONAS', 'BONGARA', 'YAMBRASBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('d566426d-f64c-4c3e-9a01-4ea4510ec472', '010401', 'AMAZONAS', 'CONDORCANQUI', 'NIEVA');
INSERT INTO "public"."ubigeos" VALUES ('ea3239c4-c3ed-4f7f-81e4-dfc306470952', '010402', 'AMAZONAS', 'CONDORCANQUI', 'EL CENEPA');
INSERT INTO "public"."ubigeos" VALUES ('6c4711b8-bd1f-48f0-bd36-9a10bf40fe35', '010403', 'AMAZONAS', 'CONDORCANQUI', 'RIO SANTIAGO');
INSERT INTO "public"."ubigeos" VALUES ('1d46eb75-c5d2-4df6-92b6-fe56b785ed67', '010501', 'AMAZONAS', 'LUYA', 'LAMUD');
INSERT INTO "public"."ubigeos" VALUES ('23e85a32-d926-44ef-832f-515be14222a1', '010502', 'AMAZONAS', 'LUYA', 'CAMPORREDONDO');
INSERT INTO "public"."ubigeos" VALUES ('bc61c7d2-357d-42a0-ae55-83469a5ed8af', '010503', 'AMAZONAS', 'LUYA', 'COCABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('c6d200d8-4096-4f8d-bff9-332d14952db0', '010504', 'AMAZONAS', 'LUYA', 'COLCAMAR');
INSERT INTO "public"."ubigeos" VALUES ('7eb420f6-5254-412c-8cde-acc496ff1195', '010505', 'AMAZONAS', 'LUYA', 'CONILA');
INSERT INTO "public"."ubigeos" VALUES ('1a6c1c1d-48eb-4aaf-8e97-44f8b3b63856', '010506', 'AMAZONAS', 'LUYA', 'INGUILPATA');
INSERT INTO "public"."ubigeos" VALUES ('519f6fc0-f387-48c1-ad32-f257c635a0bf', '010507', 'AMAZONAS', 'LUYA', 'LONGUITA');
INSERT INTO "public"."ubigeos" VALUES ('89c17115-cd11-4000-a437-bc5ffc90dfe8', '010508', 'AMAZONAS', 'LUYA', 'LONYA CHICO');
INSERT INTO "public"."ubigeos" VALUES ('acd64b7b-c35b-41ea-ad00-6ef0f9fb1ab1', '010509', 'AMAZONAS', 'LUYA', 'LUYA');
INSERT INTO "public"."ubigeos" VALUES ('5659decd-2bb4-46e4-bf4b-a96dc133320c', '010510', 'AMAZONAS', 'LUYA', 'LUYA VIEJO');
INSERT INTO "public"."ubigeos" VALUES ('648a60cf-0f64-4698-939c-d46a71698eb3', '010511', 'AMAZONAS', 'LUYA', 'MARIA');
INSERT INTO "public"."ubigeos" VALUES ('0f49fb54-1a98-4e04-b88c-408cc4f966f8', '010512', 'AMAZONAS', 'LUYA', 'OCALLI');
INSERT INTO "public"."ubigeos" VALUES ('ea0f24d3-a0b1-4fee-94f0-3429f5abae58', '010513', 'AMAZONAS', 'LUYA', 'OCUMAL');
INSERT INTO "public"."ubigeos" VALUES ('5c3f79a0-5a25-452f-9f3c-34f15879227a', '010514', 'AMAZONAS', 'LUYA', 'PISUQUIA');
INSERT INTO "public"."ubigeos" VALUES ('8ad73cf0-5024-44f0-9b72-671e91d155bf', '010515', 'AMAZONAS', 'LUYA', 'PROVIDENCIA');
INSERT INTO "public"."ubigeos" VALUES ('2e73abab-a206-470d-9bd4-90333808d7e3', '010516', 'AMAZONAS', 'LUYA', 'SAN CRISTOBAL');
INSERT INTO "public"."ubigeos" VALUES ('b39c688d-9650-4ebb-967e-60f5c918a583', '010517', 'AMAZONAS', 'LUYA', 'SAN FRANCISCO DEL YESO');
INSERT INTO "public"."ubigeos" VALUES ('71d4114f-eaf9-429d-a107-74c9b91eee7f', '010518', 'AMAZONAS', 'LUYA', 'SAN JERONIMO');
INSERT INTO "public"."ubigeos" VALUES ('ed92d8e6-436b-4892-8901-4e4ff1551177', '010519', 'AMAZONAS', 'LUYA', 'SAN JUAN DE LOPECANCHA');
INSERT INTO "public"."ubigeos" VALUES ('e5093d4f-5474-4541-b00c-8f16ceef4822', '010520', 'AMAZONAS', 'LUYA', 'SANTA CATALINA');
INSERT INTO "public"."ubigeos" VALUES ('dd5540f5-51b3-4569-9b8b-d3f818ab6801', '010521', 'AMAZONAS', 'LUYA', 'SANTO TOMAS');
INSERT INTO "public"."ubigeos" VALUES ('518ec008-4760-439f-b489-378deae11490', '010522', 'AMAZONAS', 'LUYA', 'TINGO');
INSERT INTO "public"."ubigeos" VALUES ('0d4ff7f1-89ec-4761-ba98-96ec506dba8a', '010523', 'AMAZONAS', 'LUYA', 'TRITA');
INSERT INTO "public"."ubigeos" VALUES ('1b696334-40ee-42af-843c-6955fcc074dc', '010601', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'SAN NICOLAS');
INSERT INTO "public"."ubigeos" VALUES ('a9b97f65-b712-432f-a8f7-77625fec6973', '010602', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'CHIRIMOTO');
INSERT INTO "public"."ubigeos" VALUES ('ba0d7e33-e19d-4d3d-a7fe-9478587484d4', '010603', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'COCHAMAL');
INSERT INTO "public"."ubigeos" VALUES ('3a36ab24-1d2a-4b0f-bfb6-4915a83ac898', '010604', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'HUAMBO');
INSERT INTO "public"."ubigeos" VALUES ('5bdb0f23-f8a3-4dc1-b0ee-ec6c042024d7', '010605', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'LIMABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('df0bec20-7089-4710-9192-0dced24da83f', '010606', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'LONGAR');
INSERT INTO "public"."ubigeos" VALUES ('7471db40-cb0a-4e04-9e73-180c148cb51e', '010607', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'MARISCAL BENAVIDES');
INSERT INTO "public"."ubigeos" VALUES ('43847d43-4d3f-44d7-9eb3-879ae3e97da7', '010608', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'MILPUC');
INSERT INTO "public"."ubigeos" VALUES ('046028ee-1a91-4e40-ae90-9297d9ab68cc', '010609', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'OMIA');
INSERT INTO "public"."ubigeos" VALUES ('190c96c5-a2a9-4e0d-9019-6e711d654b03', '010610', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'SANTA ROSA');
INSERT INTO "public"."ubigeos" VALUES ('70fd823b-ad2a-46b2-8c42-0e8ec1331c5f', '010611', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'TOTORA');
INSERT INTO "public"."ubigeos" VALUES ('b36141b5-aacb-46ae-9245-995f02c7ef9d', '010612', 'AMAZONAS', 'RODRIGUEZ DE MENDOZA', 'VISTA ALEGRE');
INSERT INTO "public"."ubigeos" VALUES ('494c64ad-344c-4743-8560-140008b9f39c', '010701', 'AMAZONAS', 'UTCUBAMBA', 'BAGUA GRANDE');
INSERT INTO "public"."ubigeos" VALUES ('c2969d74-9c00-40bb-9600-85285fc75ec0', '010702', 'AMAZONAS', 'UTCUBAMBA', 'CAJARURO');
INSERT INTO "public"."ubigeos" VALUES ('ae667e4d-7fd4-455c-ae04-2c6e6474fb74', '010703', 'AMAZONAS', 'UTCUBAMBA', 'CUMBA');
INSERT INTO "public"."ubigeos" VALUES ('5e33142c-a97e-4084-b8ff-cc9d5bf565c8', '010704', 'AMAZONAS', 'UTCUBAMBA', 'EL MILAGRO');
INSERT INTO "public"."ubigeos" VALUES ('fd01af80-8666-43a2-a907-c8e9303d1d77', '010705', 'AMAZONAS', 'UTCUBAMBA', 'JAMALCA');
INSERT INTO "public"."ubigeos" VALUES ('2156ccbc-255d-4794-9538-5eb1f50a4e69', '010706', 'AMAZONAS', 'UTCUBAMBA', 'LONYA GRANDE');
INSERT INTO "public"."ubigeos" VALUES ('02365c1f-c871-4cb9-b1d1-735dcfb64523', '010707', 'AMAZONAS', 'UTCUBAMBA', 'YAMON');
INSERT INTO "public"."ubigeos" VALUES ('c0e6c2fd-b231-48fa-88c2-a60624b31e2f', '020101', 'ANCASH', 'HUARAZ', 'HUARAZ');
INSERT INTO "public"."ubigeos" VALUES ('5628bd66-8ba9-4f25-9a3b-306f6ce9179e', '020102', 'ANCASH', 'HUARAZ', 'COCHABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('fa7aa89a-a6f0-46dd-875b-86c578268295', '020103', 'ANCASH', 'HUARAZ', 'COLCABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('89a76f2a-3ef9-4386-8423-9024139e4612', '020104', 'ANCASH', 'HUARAZ', 'HUANCHAY');
INSERT INTO "public"."ubigeos" VALUES ('3109929d-612a-496e-a695-9a157fe1f794', '020105', 'ANCASH', 'HUARAZ', 'INDEPENDENCIA');
INSERT INTO "public"."ubigeos" VALUES ('5240ee4f-ecdd-44c0-b782-8197dd822335', '020106', 'ANCASH', 'HUARAZ', 'JANGAS');
INSERT INTO "public"."ubigeos" VALUES ('107aa3c9-710e-43f8-8197-ac7390b7c8f6', '020107', 'ANCASH', 'HUARAZ', 'LA LIBERTAD');
INSERT INTO "public"."ubigeos" VALUES ('886478cb-6524-4cf1-bb31-35e0c16953b7', '020108', 'ANCASH', 'HUARAZ', 'OLLEROS');
INSERT INTO "public"."ubigeos" VALUES ('7dca716f-370a-488d-b67a-06b2232208b2', '020109', 'ANCASH', 'HUARAZ', 'PAMPAS GRANDE');
INSERT INTO "public"."ubigeos" VALUES ('cfcfef7a-0688-4649-8f63-6f92a5ce9cce', '020110', 'ANCASH', 'HUARAZ', 'PARIACOTO');
INSERT INTO "public"."ubigeos" VALUES ('bea25160-0d59-48ad-8512-3dd5e0050b1d', '020111', 'ANCASH', 'HUARAZ', 'PIRA');
INSERT INTO "public"."ubigeos" VALUES ('1d9a5bd2-0e5b-4a5e-94f8-a3f8d0b6b764', '020112', 'ANCASH', 'HUARAZ', 'TARICA');
INSERT INTO "public"."ubigeos" VALUES ('c05755c3-1ccb-45fd-b936-ba6239e6c5cd', '020201', 'ANCASH', 'AIJA', 'AIJA');
INSERT INTO "public"."ubigeos" VALUES ('fc9a5ef7-819e-42b1-9de0-946a58ecbf27', '020202', 'ANCASH', 'AIJA', 'CORIS');
INSERT INTO "public"."ubigeos" VALUES ('954389f9-1897-4f73-97b4-47217a0dff64', '020203', 'ANCASH', 'AIJA', 'HUACLLAN');
INSERT INTO "public"."ubigeos" VALUES ('6438089a-051a-4139-bc27-804d33f25e5d', '020204', 'ANCASH', 'AIJA', 'LA MERCED');
INSERT INTO "public"."ubigeos" VALUES ('04a50972-5cea-41d9-943d-1fe110c433f8', '020205', 'ANCASH', 'AIJA', 'SUCCHA');
INSERT INTO "public"."ubigeos" VALUES ('26b56c5f-5a2b-41c7-a7c9-c29a05a0ac5b', '020301', 'ANCASH', 'ANTONIO RAYMONDI', 'LLAMELLIN');
INSERT INTO "public"."ubigeos" VALUES ('6f9a6cdb-477f-436f-a17e-672709ba0cef', '020302', 'ANCASH', 'ANTONIO RAYMONDI', 'ACZO');
INSERT INTO "public"."ubigeos" VALUES ('82d79ce7-1b3b-4561-b0ff-5ceb5c43216e', '020303', 'ANCASH', 'ANTONIO RAYMONDI', 'CHACCHO');
INSERT INTO "public"."ubigeos" VALUES ('3af4ff4d-f3c8-4f82-b7d4-5dec682c9b34', '020304', 'ANCASH', 'ANTONIO RAYMONDI', 'CHINGAS');
INSERT INTO "public"."ubigeos" VALUES ('e24d348b-aa17-4fe7-afc0-d7e5036045d6', '020305', 'ANCASH', 'ANTONIO RAYMONDI', 'MIRGAS');
INSERT INTO "public"."ubigeos" VALUES ('60248d7e-8f84-434b-acb9-199d888b13f3', '020306', 'ANCASH', 'ANTONIO RAYMONDI', 'SAN JUAN DE RONTOY');
INSERT INTO "public"."ubigeos" VALUES ('08787a09-e6c7-4df1-88e6-fee7e69a394d', '020401', 'ANCASH', 'ASUNCION', 'CHACAS');
INSERT INTO "public"."ubigeos" VALUES ('ff675ad3-329d-43e4-a5b2-13cc2f221d46', '020402', 'ANCASH', 'ASUNCION', 'ACOCHACA');
INSERT INTO "public"."ubigeos" VALUES ('64803417-3a73-4218-86c3-82891be88791', '020501', 'ANCASH', 'BOLOGNESI', 'CHIQUIAN');
INSERT INTO "public"."ubigeos" VALUES ('5b062925-bc5a-47d2-bf21-0e13200bab97', '020502', 'ANCASH', 'BOLOGNESI', 'ABELARDO PARDO LEZAMETA');
INSERT INTO "public"."ubigeos" VALUES ('eb474890-4e49-4533-aab9-f96870828567', '020503', 'ANCASH', 'BOLOGNESI', 'ANTONIO RAYMONDI');
INSERT INTO "public"."ubigeos" VALUES ('ebe7dba2-0672-42a2-acec-e50dd36e740d', '020504', 'ANCASH', 'BOLOGNESI', 'AQUIA');
INSERT INTO "public"."ubigeos" VALUES ('abde72c4-fa5e-46b2-ab05-ee5c2ea2834c', '020505', 'ANCASH', 'BOLOGNESI', 'CAJACAY');
INSERT INTO "public"."ubigeos" VALUES ('bdefd2c2-25c9-4de3-92a9-7c3e34f704f8', '020506', 'ANCASH', 'BOLOGNESI', 'CANIS');
INSERT INTO "public"."ubigeos" VALUES ('3d9ab806-2973-4d34-964d-3298b4fd5f9b', '020507', 'ANCASH', 'BOLOGNESI', 'COLQUIOC');
INSERT INTO "public"."ubigeos" VALUES ('ea212a1b-2846-4a45-9fe1-77c11822c143', '020508', 'ANCASH', 'BOLOGNESI', 'HUALLANCA');
INSERT INTO "public"."ubigeos" VALUES ('b29a37bf-e71c-4a21-ab73-ba0368b0bb82', '020509', 'ANCASH', 'BOLOGNESI', 'HUASTA');
INSERT INTO "public"."ubigeos" VALUES ('4f4ee389-0e21-4dea-bf9e-d1f1a239eee6', '020510', 'ANCASH', 'BOLOGNESI', 'HUAYLLACAYAN');
INSERT INTO "public"."ubigeos" VALUES ('2cad48f6-d9d5-4f18-905a-2d8680c9f6bf', '020511', 'ANCASH', 'BOLOGNESI', 'LA PRIMAVERA');
INSERT INTO "public"."ubigeos" VALUES ('50340ae5-d02c-4075-b73b-553fb3f4937b', '020512', 'ANCASH', 'BOLOGNESI', 'MANGAS');
INSERT INTO "public"."ubigeos" VALUES ('efecb51a-6a84-4075-a2a6-30953eb04173', '020513', 'ANCASH', 'BOLOGNESI', 'PACLLON');
INSERT INTO "public"."ubigeos" VALUES ('9a044ea3-7efd-4ff9-ba90-b1f9ee1731fb', '030102', 'APURIMAC', 'ABANCAY', 'CHACOCHE');
INSERT INTO "public"."ubigeos" VALUES ('07cf2c84-7d82-45a3-bad5-ca28a74a7ea1', '020514', 'ANCASH', 'BOLOGNESI', 'SAN MIGUEL DE CORPANQUI');
INSERT INTO "public"."ubigeos" VALUES ('c03cbd07-dbd5-469f-9467-00a753a4a054', '020515', 'ANCASH', 'BOLOGNESI', 'TICLLOS');
INSERT INTO "public"."ubigeos" VALUES ('2a0e58ca-49d0-4b3e-b00e-63e0d1769f61', '020601', 'ANCASH', 'CARHUAZ', 'CARHUAZ');
INSERT INTO "public"."ubigeos" VALUES ('523fc544-b9b5-4cd6-8039-ddda7faf29f6', '020602', 'ANCASH', 'CARHUAZ', 'ACOPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('c6852a8c-9e3a-4dcc-827a-46c029f05874', '020603', 'ANCASH', 'CARHUAZ', 'AMASHCA');
INSERT INTO "public"."ubigeos" VALUES ('e07e4388-94a3-4483-88da-27feeaf87a2f', '020604', 'ANCASH', 'CARHUAZ', 'ANTA');
INSERT INTO "public"."ubigeos" VALUES ('68acb230-20d9-419f-a089-22c4c620888d', '020605', 'ANCASH', 'CARHUAZ', 'ATAQUERO');
INSERT INTO "public"."ubigeos" VALUES ('06ad1220-00aa-4eba-b5a3-b4a2772ee04c', '020606', 'ANCASH', 'CARHUAZ', 'MARCARA');
INSERT INTO "public"."ubigeos" VALUES ('2feca7d6-3b8d-4ef1-aaa1-63fa3829843e', '020607', 'ANCASH', 'CARHUAZ', 'PARIAHUANCA');
INSERT INTO "public"."ubigeos" VALUES ('3bdd6b64-0c06-4f2e-b288-ba54d6ee7b23', '020608', 'ANCASH', 'CARHUAZ', 'SAN MIGUEL DE ACO');
INSERT INTO "public"."ubigeos" VALUES ('f495d2a2-def2-4e06-87f2-5b79c4beb503', '020609', 'ANCASH', 'CARHUAZ', 'SHILLA');
INSERT INTO "public"."ubigeos" VALUES ('342b9856-e12a-4cc3-a4dd-133f8fa06576', '020610', 'ANCASH', 'CARHUAZ', 'TINCO');
INSERT INTO "public"."ubigeos" VALUES ('620f165d-c6aa-4a46-b6eb-073a0f22e5a2', '020611', 'ANCASH', 'CARHUAZ', 'YUNGAR');
INSERT INTO "public"."ubigeos" VALUES ('90a3c741-3282-4de7-872d-a2b020306d14', '020701', 'ANCASH', 'CARLOS FERMIN FITZCARRALD', 'SAN LUIS');
INSERT INTO "public"."ubigeos" VALUES ('17882a21-4dcb-4273-a6d9-d0af18b3c202', '020702', 'ANCASH', 'CARLOS FERMIN FITZCARRALD', 'SAN NICOLAS');
INSERT INTO "public"."ubigeos" VALUES ('b93ce5ea-2bf4-4194-ac41-1361388a4deb', '020703', 'ANCASH', 'CARLOS FERMIN FITZCARRALD', 'YAUYA');
INSERT INTO "public"."ubigeos" VALUES ('c9626207-78fe-482b-b1ba-7e8e13e3011c', '020801', 'ANCASH', 'CASMA', 'CASMA');
INSERT INTO "public"."ubigeos" VALUES ('cae807a3-b496-445f-885d-f147e75ac46b', '020802', 'ANCASH', 'CASMA', 'BUENA VISTA ALTA');
INSERT INTO "public"."ubigeos" VALUES ('fcb49ab8-4b84-42d2-b98e-a13d17b1bb7e', '020803', 'ANCASH', 'CASMA', 'COMANDANTE NOEL');
INSERT INTO "public"."ubigeos" VALUES ('e291faaa-df4c-4447-8668-262a881035c1', '020804', 'ANCASH', 'CASMA', 'YAUTAN');
INSERT INTO "public"."ubigeos" VALUES ('fc7eb5ca-0280-4cf3-b40c-4b7bc1a34d4a', '020901', 'ANCASH', 'CORONGO', 'CORONGO');
INSERT INTO "public"."ubigeos" VALUES ('dec2ffca-5ba6-4435-b83c-97c4d6bc11a6', '020902', 'ANCASH', 'CORONGO', 'ACO');
INSERT INTO "public"."ubigeos" VALUES ('b09551bb-faa4-4d79-9472-5a8caa8f40af', '020903', 'ANCASH', 'CORONGO', 'BAMBAS');
INSERT INTO "public"."ubigeos" VALUES ('e14e5820-8d61-4ab8-9783-73c7ce4cd842', '020904', 'ANCASH', 'CORONGO', 'CUSCA');
INSERT INTO "public"."ubigeos" VALUES ('5ebdbd5a-5228-41d8-bacb-77b85c4d2011', '020905', 'ANCASH', 'CORONGO', 'LA PAMPA');
INSERT INTO "public"."ubigeos" VALUES ('3c5c7fae-dc3d-4dc6-bc63-7e696db83c4c', '020906', 'ANCASH', 'CORONGO', 'YANAC');
INSERT INTO "public"."ubigeos" VALUES ('d39060c5-cf08-4d82-a114-a14a86204c14', '020907', 'ANCASH', 'CORONGO', 'YUPAN');
INSERT INTO "public"."ubigeos" VALUES ('567429f3-965f-428f-b707-7a03c5638e3a', '021001', 'ANCASH', 'HUARI', 'HUARI');
INSERT INTO "public"."ubigeos" VALUES ('b724064f-267d-4c5a-bd28-ab85be26817e', '021002', 'ANCASH', 'HUARI', 'ANRA');
INSERT INTO "public"."ubigeos" VALUES ('ef780ed1-816d-4e75-a2fc-eeec1652d7ae', '021003', 'ANCASH', 'HUARI', 'CAJAY');
INSERT INTO "public"."ubigeos" VALUES ('e44996da-1d5f-424a-9431-5c5f6cdda8a3', '021004', 'ANCASH', 'HUARI', 'CHAVIN DE HUANTAR');
INSERT INTO "public"."ubigeos" VALUES ('a2d73672-c0ab-447d-9b6c-e2aad8b9974b', '021005', 'ANCASH', 'HUARI', 'HUACACHI');
INSERT INTO "public"."ubigeos" VALUES ('aaba2a1d-5116-4e1e-8402-ebab89ff1295', '021006', 'ANCASH', 'HUARI', 'HUACCHIS');
INSERT INTO "public"."ubigeos" VALUES ('c1742129-c2f6-41ef-9270-9da32935a603', '021007', 'ANCASH', 'HUARI', 'HUACHIS');
INSERT INTO "public"."ubigeos" VALUES ('22eaa8ab-55eb-4081-84f6-88131236d18c', '021008', 'ANCASH', 'HUARI', 'HUANTAR');
INSERT INTO "public"."ubigeos" VALUES ('568f52c9-6c64-49b2-9914-5a71a3562445', '021009', 'ANCASH', 'HUARI', 'MASIN');
INSERT INTO "public"."ubigeos" VALUES ('b72d3c29-a71e-45c9-9d08-b9c8bcbd9443', '021010', 'ANCASH', 'HUARI', 'PAUCAS');
INSERT INTO "public"."ubigeos" VALUES ('0b6c59aa-794e-4164-aae9-0789072978e4', '021011', 'ANCASH', 'HUARI', 'PONTO');
INSERT INTO "public"."ubigeos" VALUES ('c213c209-77a5-4cf7-a979-9e6094feae93', '021012', 'ANCASH', 'HUARI', 'RAHUAPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('c6ed7a46-73ec-4747-a3a0-66b76159e486', '021013', 'ANCASH', 'HUARI', 'RAPAYAN');
INSERT INTO "public"."ubigeos" VALUES ('8b432b30-df0e-4cad-874c-b5029e18f065', '021014', 'ANCASH', 'HUARI', 'SAN MARCOS');
INSERT INTO "public"."ubigeos" VALUES ('746e177f-e17a-433a-98ea-9559085ee936', '021015', 'ANCASH', 'HUARI', 'SAN PEDRO DE CHANA');
INSERT INTO "public"."ubigeos" VALUES ('26bf7f3c-e180-4847-9df7-3367d72e0d98', '021016', 'ANCASH', 'HUARI', 'UCO');
INSERT INTO "public"."ubigeos" VALUES ('b9c052d7-fd30-4cc9-b0e1-c91fda7e5c32', '021101', 'ANCASH', 'HUARMEY', 'HUARMEY');
INSERT INTO "public"."ubigeos" VALUES ('5f3908bc-5d56-4057-a0da-bb0a17c4b4bd', '021102', 'ANCASH', 'HUARMEY', 'COCHAPETI');
INSERT INTO "public"."ubigeos" VALUES ('d5e0e0a5-852a-476c-b2a7-029534291365', '021103', 'ANCASH', 'HUARMEY', 'CULEBRAS');
INSERT INTO "public"."ubigeos" VALUES ('850e7fb6-0754-48cb-b47f-4616319c556f', '021104', 'ANCASH', 'HUARMEY', 'HUAYAN');
INSERT INTO "public"."ubigeos" VALUES ('61fbf86e-699e-4974-b438-b100671eda49', '021105', 'ANCASH', 'HUARMEY', 'MALVAS');
INSERT INTO "public"."ubigeos" VALUES ('0f766222-0f7a-4f27-8ef5-04e931d66565', '021201', 'ANCASH', 'HUAYLAS', 'CARAZ');
INSERT INTO "public"."ubigeos" VALUES ('361ce027-13e8-42d0-a6e1-d50f8d4f5f4e', '021202', 'ANCASH', 'HUAYLAS', 'HUALLANCA');
INSERT INTO "public"."ubigeos" VALUES ('493aae94-7e04-49a9-8766-484c60f76ca8', '021203', 'ANCASH', 'HUAYLAS', 'HUATA');
INSERT INTO "public"."ubigeos" VALUES ('73786f93-08bc-4d4c-8596-7507c84a93e0', '021204', 'ANCASH', 'HUAYLAS', 'HUAYLAS');
INSERT INTO "public"."ubigeos" VALUES ('5b571c35-a0a8-4ab8-b702-c18f09a37034', '021205', 'ANCASH', 'HUAYLAS', 'MATO');
INSERT INTO "public"."ubigeos" VALUES ('88cc50a1-c7f9-4132-9293-127cc18ffdb9', '021206', 'ANCASH', 'HUAYLAS', 'PAMPAROMAS');
INSERT INTO "public"."ubigeos" VALUES ('17efb894-f389-4cb1-b56c-4f81fad3258a', '021207', 'ANCASH', 'HUAYLAS', 'PUEBLO LIBRE');
INSERT INTO "public"."ubigeos" VALUES ('678b9d1a-2382-4cf7-8f0e-e227278c6e87', '021208', 'ANCASH', 'HUAYLAS', 'SANTA CRUZ');
INSERT INTO "public"."ubigeos" VALUES ('ee43a795-2174-4dd5-a206-83d3ac3e702a', '021209', 'ANCASH', 'HUAYLAS', 'SANTO TORIBIO');
INSERT INTO "public"."ubigeos" VALUES ('fd4770ab-9a77-4666-b181-b1e609c1a75a', '021210', 'ANCASH', 'HUAYLAS', 'YURACMARCA');
INSERT INTO "public"."ubigeos" VALUES ('59c50e63-3960-47ed-923d-52d26012e610', '021301', 'ANCASH', 'MARISCAL LUZURIAGA', 'PISCOBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('5524d823-fee0-4642-8e35-afad94699c7b', '021302', 'ANCASH', 'MARISCAL LUZURIAGA', 'CASCA');
INSERT INTO "public"."ubigeos" VALUES ('8a8508e9-31ad-47ed-ab76-66727e105d00', '021303', 'ANCASH', 'MARISCAL LUZURIAGA', 'ELEAZAR GUZMAN BARRON');
INSERT INTO "public"."ubigeos" VALUES ('8807eabd-7809-481c-875b-b2acb28c27cc', '021304', 'ANCASH', 'MARISCAL LUZURIAGA', 'FIDEL OLIVAS ESCUDERO');
INSERT INTO "public"."ubigeos" VALUES ('ab17d9e8-6fa5-402d-937c-c3822a3f86fe', '021305', 'ANCASH', 'MARISCAL LUZURIAGA', 'LLAMA');
INSERT INTO "public"."ubigeos" VALUES ('0efea4af-56b8-4844-a0d3-8f8dc6803207', '021306', 'ANCASH', 'MARISCAL LUZURIAGA', 'LLUMPA');
INSERT INTO "public"."ubigeos" VALUES ('8433e1e7-f87c-4e8f-918d-cdd62b6dc2e9', '021307', 'ANCASH', 'MARISCAL LUZURIAGA', 'LUCMA');
INSERT INTO "public"."ubigeos" VALUES ('d065e169-2a37-464b-ba2e-d0bb1ee30c3e', '021308', 'ANCASH', 'MARISCAL LUZURIAGA', 'MUSGA');
INSERT INTO "public"."ubigeos" VALUES ('bb12b753-87a2-413b-8a3c-0216ff25b1e2', '021401', 'ANCASH', 'OCROS', 'OCROS');
INSERT INTO "public"."ubigeos" VALUES ('e1876873-94f0-4c53-a5a0-9532f487c9bc', '021402', 'ANCASH', 'OCROS', 'ACAS');
INSERT INTO "public"."ubigeos" VALUES ('7f74534a-20b8-47d7-8c1a-b17a3a130a9f', '021403', 'ANCASH', 'OCROS', 'CAJAMARQUILLA');
INSERT INTO "public"."ubigeos" VALUES ('176bc45b-3f8f-4646-9eae-070a45722c38', '021404', 'ANCASH', 'OCROS', 'CARHUAPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('ab598d5b-790a-42a7-b5c4-769447949ecf', '021405', 'ANCASH', 'OCROS', 'COCHAS');
INSERT INTO "public"."ubigeos" VALUES ('6db01642-a35e-4bfd-8c63-7e8936b8197a', '021406', 'ANCASH', 'OCROS', 'CONGAS');
INSERT INTO "public"."ubigeos" VALUES ('308770eb-9fc5-4b30-847c-c2aea8cc22a1', '021407', 'ANCASH', 'OCROS', 'LLIPA');
INSERT INTO "public"."ubigeos" VALUES ('7aee30ea-01e3-4196-8cd1-b75438d897b3', '021408', 'ANCASH', 'OCROS', 'SAN CRISTOBAL DE RAJAN');
INSERT INTO "public"."ubigeos" VALUES ('ca7d0964-85db-4bc9-a189-353e2228b1ae', '021409', 'ANCASH', 'OCROS', 'SAN PEDRO');
INSERT INTO "public"."ubigeos" VALUES ('9a1260fa-da3d-4e5d-b78f-0f5760fcc2c7', '021410', 'ANCASH', 'OCROS', 'SANTIAGO DE CHILCAS');
INSERT INTO "public"."ubigeos" VALUES ('a5643c6f-721b-48bd-8842-4a96db4ca3f6', '021501', 'ANCASH', 'PALLASCA', 'CABANA');
INSERT INTO "public"."ubigeos" VALUES ('a4e5b764-c551-4b04-a755-b375f4dfd87c', '021502', 'ANCASH', 'PALLASCA', 'BOLOGNESI');
INSERT INTO "public"."ubigeos" VALUES ('1766330b-b1d3-4476-8493-3f707bfb551a', '021503', 'ANCASH', 'PALLASCA', 'CONCHUCOS');
INSERT INTO "public"."ubigeos" VALUES ('a42994cb-5a98-4b13-967f-f8f5dbab9deb', '021504', 'ANCASH', 'PALLASCA', 'HUACASCHUQUE');
INSERT INTO "public"."ubigeos" VALUES ('36fedbd5-eba2-42a3-a073-4e3e75c5dd95', '021505', 'ANCASH', 'PALLASCA', 'HUANDOVAL');
INSERT INTO "public"."ubigeos" VALUES ('e5ded31e-7f6b-4d62-83c7-78af4706d169', '021506', 'ANCASH', 'PALLASCA', 'LACABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('78864c1f-7302-4719-a0b8-ea859cbff638', '021507', 'ANCASH', 'PALLASCA', 'LLAPO');
INSERT INTO "public"."ubigeos" VALUES ('8a79ce3e-0f31-4999-a230-8f0d57ce4613', '021508', 'ANCASH', 'PALLASCA', 'PALLASCA');
INSERT INTO "public"."ubigeos" VALUES ('fcc57082-ae40-427c-9b6a-e8f3db054d47', '021509', 'ANCASH', 'PALLASCA', 'PAMPAS');
INSERT INTO "public"."ubigeos" VALUES ('19857ee3-0197-4ea2-aeb7-af59123451c2', '021510', 'ANCASH', 'PALLASCA', 'SANTA ROSA');
INSERT INTO "public"."ubigeos" VALUES ('e0f8669d-4531-488b-9cc9-f8612cf694df', '021511', 'ANCASH', 'PALLASCA', 'TAUCA');
INSERT INTO "public"."ubigeos" VALUES ('fae776dc-3017-42db-a026-241e9253462a', '021601', 'ANCASH', 'POMABAMBA', 'POMABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('46cd379f-615f-44ad-8a7d-1139cd263359', '021602', 'ANCASH', 'POMABAMBA', 'HUAYLLAN');
INSERT INTO "public"."ubigeos" VALUES ('6622bea2-e123-4522-8c74-07df8603b3d0', '021603', 'ANCASH', 'POMABAMBA', 'PAROBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('b952a33e-2153-4870-bf6e-160d776f846c', '021604', 'ANCASH', 'POMABAMBA', 'QUINUABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('7bd9d563-dbfd-4804-8e8b-54a4b00e1a27', '021701', 'ANCASH', 'RECUAY', 'RECUAY');
INSERT INTO "public"."ubigeos" VALUES ('0d1e74b3-1902-40a1-a9dc-07a7a747cb65', '021702', 'ANCASH', 'RECUAY', 'CATAC');
INSERT INTO "public"."ubigeos" VALUES ('797c93a4-7a5b-4cfd-a64e-5bb3646a1740', '021703', 'ANCASH', 'RECUAY', 'COTAPARACO');
INSERT INTO "public"."ubigeos" VALUES ('4b12fecb-4dc3-4fc8-ac70-72c953b66d92', '021704', 'ANCASH', 'RECUAY', 'HUAYLLAPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('1fe3d7c4-13af-47f0-9edb-020278601679', '021705', 'ANCASH', 'RECUAY', 'LLACLLIN');
INSERT INTO "public"."ubigeos" VALUES ('f36284c1-8ecc-4ada-ac80-1b74fd37f950', '021706', 'ANCASH', 'RECUAY', 'MARCA');
INSERT INTO "public"."ubigeos" VALUES ('18faef22-eb06-4e89-8c9f-982766d3d071', '021707', 'ANCASH', 'RECUAY', 'PAMPAS CHICO');
INSERT INTO "public"."ubigeos" VALUES ('9f014296-5daf-41e3-832a-e0c8da74f68e', '021708', 'ANCASH', 'RECUAY', 'PARARIN');
INSERT INTO "public"."ubigeos" VALUES ('bfcffe7f-0692-4f9b-b652-977429ca8ead', '021709', 'ANCASH', 'RECUAY', 'TAPACOCHA');
INSERT INTO "public"."ubigeos" VALUES ('18b2f353-f589-4d40-83a3-a5b9ad036d38', '021710', 'ANCASH', 'RECUAY', 'TICAPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('5a9fa336-899f-4caa-a0e7-37198611dfea', '021801', 'ANCASH', 'SANTA', 'CHIMBOTE');
INSERT INTO "public"."ubigeos" VALUES ('364cae9f-6b68-4fb2-a063-bc0573089c25', '021802', 'ANCASH', 'SANTA', 'CACERES DEL PERU');
INSERT INTO "public"."ubigeos" VALUES ('0f7ad8d6-278d-452f-b9cf-60c4087ca8bc', '021803', 'ANCASH', 'SANTA', 'COISHCO');
INSERT INTO "public"."ubigeos" VALUES ('79136f4f-fb0b-448c-99dd-bda73c1dbf50', '021804', 'ANCASH', 'SANTA', 'MACATE');
INSERT INTO "public"."ubigeos" VALUES ('68f70041-f2b5-4a79-87b1-e3f83ad1ff5e', '021805', 'ANCASH', 'SANTA', 'MORO');
INSERT INTO "public"."ubigeos" VALUES ('96ec62d7-3c4e-4673-a59a-abf948859078', '021806', 'ANCASH', 'SANTA', 'NEPEÑA');
INSERT INTO "public"."ubigeos" VALUES ('0f59c36d-fc8c-4038-8e4f-284454f4ca63', '021807', 'ANCASH', 'SANTA', 'SAMANCO');
INSERT INTO "public"."ubigeos" VALUES ('a5a09e11-ab37-4c5a-ae53-4908f218d1b2', '021808', 'ANCASH', 'SANTA', 'SANTA');
INSERT INTO "public"."ubigeos" VALUES ('6fd8579c-986d-47a6-afa3-63212b817d02', '021809', 'ANCASH', 'SANTA', 'NUEVO CHIMBOTE');
INSERT INTO "public"."ubigeos" VALUES ('4b3db2c7-e773-4015-ba2d-c6d64398e0fc', '021901', 'ANCASH', 'SIHUAS', 'SIHUAS');
INSERT INTO "public"."ubigeos" VALUES ('f369c3d6-99cb-40b5-b3a4-8187b27f1c63', '021902', 'ANCASH', 'SIHUAS', 'ACOBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('4d13aee8-c6ad-4234-ba13-d0d859083920', '021903', 'ANCASH', 'SIHUAS', 'ALFONSO UGARTE');
INSERT INTO "public"."ubigeos" VALUES ('f77efae3-3904-4ff0-9b96-d4604d3ab050', '021904', 'ANCASH', 'SIHUAS', 'CASHAPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('299792af-6b9b-4e79-aa8f-df309188113d', '021905', 'ANCASH', 'SIHUAS', 'CHINGALPO');
INSERT INTO "public"."ubigeos" VALUES ('fb0b1be7-ed43-47af-ae80-fcf8734569b0', '021906', 'ANCASH', 'SIHUAS', 'HUAYLLABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('e99e024b-db52-4fb8-a6fb-abb04d8bf2de', '021907', 'ANCASH', 'SIHUAS', 'QUICHES');
INSERT INTO "public"."ubigeos" VALUES ('03edf809-b998-4a8e-9747-1ba1fb157e93', '021908', 'ANCASH', 'SIHUAS', 'RAGASH');
INSERT INTO "public"."ubigeos" VALUES ('6e322775-eec3-4cd2-979a-c6fe7edd2c74', '021909', 'ANCASH', 'SIHUAS', 'SAN JUAN');
INSERT INTO "public"."ubigeos" VALUES ('7b259931-7184-4980-88d1-1c79cbbcaed2', '021910', 'ANCASH', 'SIHUAS', 'SICSIBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('540fa43c-c4e4-4bda-83f2-1f180c49da61', '022001', 'ANCASH', 'YUNGAY', 'YUNGAY');
INSERT INTO "public"."ubigeos" VALUES ('3c4662cc-81a8-4159-9da7-0b3782bb70a0', '022002', 'ANCASH', 'YUNGAY', 'CASCAPARA');
INSERT INTO "public"."ubigeos" VALUES ('42d7f081-a40b-4c8d-90d6-2a5d76eea816', '022003', 'ANCASH', 'YUNGAY', 'MANCOS');
INSERT INTO "public"."ubigeos" VALUES ('70610ca0-55a6-4478-9fe8-d46cce58b515', '022004', 'ANCASH', 'YUNGAY', 'MATACOTO');
INSERT INTO "public"."ubigeos" VALUES ('7c68f631-d87d-47b1-a43e-d7974ac1f6b7', '022005', 'ANCASH', 'YUNGAY', 'QUILLO');
INSERT INTO "public"."ubigeos" VALUES ('83e324eb-a6cf-4015-8c84-9c49ca83e26f', '022006', 'ANCASH', 'YUNGAY', 'RANRAHIRCA');
INSERT INTO "public"."ubigeos" VALUES ('268b6aa8-bad9-49f1-93b1-366969dbc296', '022007', 'ANCASH', 'YUNGAY', 'SHUPLUY');
INSERT INTO "public"."ubigeos" VALUES ('e504bbc3-0131-4cea-a090-c359d5a0bbac', '022008', 'ANCASH', 'YUNGAY', 'YANAMA');
INSERT INTO "public"."ubigeos" VALUES ('e164b3a6-113a-4a3c-9f61-cda10e6b8a50', '030101', 'APURIMAC', 'ABANCAY', 'ABANCAY');
INSERT INTO "public"."ubigeos" VALUES ('5fbce3df-44b7-48d8-95d1-9cf5e32343c2', '030103', 'APURIMAC', 'ABANCAY', 'CIRCA');
INSERT INTO "public"."ubigeos" VALUES ('86cdb5d8-900a-4ebc-9f5a-47620e0198c4', '030104', 'APURIMAC', 'ABANCAY', 'CURAHUASI');
INSERT INTO "public"."ubigeos" VALUES ('0d3ce2bf-a942-417b-bf58-0bc892c7a1ae', '030105', 'APURIMAC', 'ABANCAY', 'HUANIPACA');
INSERT INTO "public"."ubigeos" VALUES ('ade2643a-d42f-4434-94ad-43054d534b62', '030106', 'APURIMAC', 'ABANCAY', 'LAMBRAMA');
INSERT INTO "public"."ubigeos" VALUES ('7dff2dc0-f9d5-45d6-89dc-73b599fc8a46', '030107', 'APURIMAC', 'ABANCAY', 'PICHIRHUA');
INSERT INTO "public"."ubigeos" VALUES ('bb3f03ba-0338-42c0-a086-ef2a631f0940', '030108', 'APURIMAC', 'ABANCAY', 'SAN PEDRO DE CACHORA');
INSERT INTO "public"."ubigeos" VALUES ('aa9c15f2-d66d-44f6-aaa4-d346b85c561f', '030109', 'APURIMAC', 'ABANCAY', 'TAMBURCO');
INSERT INTO "public"."ubigeos" VALUES ('ef4fea6d-b2a8-427d-bbda-a04460175a66', '030201', 'APURIMAC', 'ANDAHUAYLAS', 'ANDAHUAYLAS');
INSERT INTO "public"."ubigeos" VALUES ('2875e0ef-3f4b-4308-b741-ec798ebb5a9f', '030202', 'APURIMAC', 'ANDAHUAYLAS', 'ANDARAPA');
INSERT INTO "public"."ubigeos" VALUES ('6bf04307-bd08-49d7-a62d-047288824f35', '030203', 'APURIMAC', 'ANDAHUAYLAS', 'CHIARA');
INSERT INTO "public"."ubigeos" VALUES ('4a377aa4-e75a-443d-a111-a986d3729683', '030204', 'APURIMAC', 'ANDAHUAYLAS', 'HUANCARAMA');
INSERT INTO "public"."ubigeos" VALUES ('3e5c9638-c8e4-47f9-8d84-b56ff16cb021', '030205', 'APURIMAC', 'ANDAHUAYLAS', 'HUANCARAY');
INSERT INTO "public"."ubigeos" VALUES ('ed3ff687-2c56-497f-b896-6f740f0789c1', '030206', 'APURIMAC', 'ANDAHUAYLAS', 'HUAYANA');
INSERT INTO "public"."ubigeos" VALUES ('79575ad4-3a2a-4ffa-8634-82b0fed07df0', '030207', 'APURIMAC', 'ANDAHUAYLAS', 'KISHUARA');
INSERT INTO "public"."ubigeos" VALUES ('c47b2547-4586-45d8-a6cc-37dd230f85e8', '030208', 'APURIMAC', 'ANDAHUAYLAS', 'PACOBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('c3ad10ce-b209-4df4-9131-88d3861a6c12', '030209', 'APURIMAC', 'ANDAHUAYLAS', 'PACUCHA');
INSERT INTO "public"."ubigeos" VALUES ('ecc827c0-92aa-4587-b33f-f0d45768f20d', '030210', 'APURIMAC', 'ANDAHUAYLAS', 'PAMPACHIRI');
INSERT INTO "public"."ubigeos" VALUES ('c5ec8a59-7d03-4518-b81e-eccaab26b405', '030211', 'APURIMAC', 'ANDAHUAYLAS', 'POMACOCHA');
INSERT INTO "public"."ubigeos" VALUES ('4855429c-5bd9-4ff0-a543-96f37e2a02a7', '030212', 'APURIMAC', 'ANDAHUAYLAS', 'SAN ANTONIO DE CACHI');
INSERT INTO "public"."ubigeos" VALUES ('8f4ff370-22f4-4a8e-8b39-4ff1722ef1a9', '030213', 'APURIMAC', 'ANDAHUAYLAS', 'SAN JERONIMO');
INSERT INTO "public"."ubigeos" VALUES ('5e8e172b-7467-432b-83b5-c517cfc324d0', '030214', 'APURIMAC', 'ANDAHUAYLAS', 'SAN MIGUEL DE CHACCRAMPA');
INSERT INTO "public"."ubigeos" VALUES ('ebb68143-6c60-4033-beec-c70394e2c8bf', '030215', 'APURIMAC', 'ANDAHUAYLAS', 'SANTA MARIA DE CHICMO');
INSERT INTO "public"."ubigeos" VALUES ('e9718d5b-5f5d-46a0-a301-7ae0b31e49ba', '030216', 'APURIMAC', 'ANDAHUAYLAS', 'TALAVERA');
INSERT INTO "public"."ubigeos" VALUES ('a4e9d552-5fe7-49d5-a92a-5f0b17858f42', '030217', 'APURIMAC', 'ANDAHUAYLAS', 'TUMAY HUARACA');
INSERT INTO "public"."ubigeos" VALUES ('da236e48-7801-4eda-81f7-d414b21fb746', '030218', 'APURIMAC', 'ANDAHUAYLAS', 'TURPO');
INSERT INTO "public"."ubigeos" VALUES ('1baef326-88d4-4a7e-ac1e-6f4bb22bfc6e', '030219', 'APURIMAC', 'ANDAHUAYLAS', 'KAQUIABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('2c8ad56e-4b58-43db-88ea-8a63cd5e618f', '030220', 'APURIMAC', 'ANDAHUAYLAS', 'JOSE MARIA ARGUEDAS');
INSERT INTO "public"."ubigeos" VALUES ('eadeee3b-8750-4043-b2ae-5e0c527efecd', '030301', 'APURIMAC', 'ANTABAMBA', 'ANTABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('94e01440-28fa-4451-be4b-f2db7075c544', '030302', 'APURIMAC', 'ANTABAMBA', 'EL ORO');
INSERT INTO "public"."ubigeos" VALUES ('fe3be62f-56a3-4190-bdcc-d27e233f598f', '030303', 'APURIMAC', 'ANTABAMBA', 'HUAQUIRCA');
INSERT INTO "public"."ubigeos" VALUES ('57ca1237-32ca-414b-8f00-ee4fcc575c73', '030304', 'APURIMAC', 'ANTABAMBA', 'JUAN ESPINOZA MEDRANO');
INSERT INTO "public"."ubigeos" VALUES ('64dcda1d-a143-4121-850b-9f6acdaa4bf2', '030305', 'APURIMAC', 'ANTABAMBA', 'OROPESA');
INSERT INTO "public"."ubigeos" VALUES ('377a174d-6799-4d32-8cf9-1c7a24527268', '030306', 'APURIMAC', 'ANTABAMBA', 'PACHACONAS');
INSERT INTO "public"."ubigeos" VALUES ('7c389578-ee7c-41e5-bfb0-29a7b3a9456e', '030307', 'APURIMAC', 'ANTABAMBA', 'SABAINO');
INSERT INTO "public"."ubigeos" VALUES ('0d155bed-a3e1-49aa-9867-6a6ff3f93c70', '030401', 'APURIMAC', 'AYMARAES', 'CHALHUANCA');
INSERT INTO "public"."ubigeos" VALUES ('27e2f903-64df-451e-a14c-540c1a8ac0e4', '030402', 'APURIMAC', 'AYMARAES', 'CAPAYA');
INSERT INTO "public"."ubigeos" VALUES ('216728d9-a3b7-4c4d-997e-dfecb43482a9', '030403', 'APURIMAC', 'AYMARAES', 'CARAYBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('712769f7-b026-4fc4-ac51-d78a00d0f2f9', '030404', 'APURIMAC', 'AYMARAES', 'CHAPIMARCA');
INSERT INTO "public"."ubigeos" VALUES ('dd2e5c43-c4c0-4f26-8471-f72cb4f44456', '030405', 'APURIMAC', 'AYMARAES', 'COLCABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('d4069cc2-6d1b-444c-a07d-5a85c6485235', '030406', 'APURIMAC', 'AYMARAES', 'COTARUSE');
INSERT INTO "public"."ubigeos" VALUES ('432fb699-4b05-4be9-9db5-fae6c9aa7061', '030407', 'APURIMAC', 'AYMARAES', 'IHUAYLLO');
INSERT INTO "public"."ubigeos" VALUES ('90371633-b9d8-4762-857e-a581eedde288', '030408', 'APURIMAC', 'AYMARAES', 'JUSTO APU SAHUARAURA');
INSERT INTO "public"."ubigeos" VALUES ('8289e459-2f87-4436-a898-b54803d7f5bd', '030409', 'APURIMAC', 'AYMARAES', 'LUCRE');
INSERT INTO "public"."ubigeos" VALUES ('3b85efd2-bc12-4fac-9a7e-77eb1c663caa', '030410', 'APURIMAC', 'AYMARAES', 'POCOHUANCA');
INSERT INTO "public"."ubigeos" VALUES ('b16b348a-8a74-4729-9e86-d223fd76d2c1', '030411', 'APURIMAC', 'AYMARAES', 'SAN JUAN DE CHACÑA');
INSERT INTO "public"."ubigeos" VALUES ('01409fac-7b02-46bd-af76-2aa7dbecb14e', '030412', 'APURIMAC', 'AYMARAES', 'SAÑAYCA');
INSERT INTO "public"."ubigeos" VALUES ('97501782-3e1a-43aa-92c1-04a3f1198a91', '030413', 'APURIMAC', 'AYMARAES', 'SORAYA');
INSERT INTO "public"."ubigeos" VALUES ('879afcc0-9312-4365-b6e3-06ddf99129a0', '030414', 'APURIMAC', 'AYMARAES', 'TAPAIRIHUA');
INSERT INTO "public"."ubigeos" VALUES ('b438f5b5-6e37-4c22-8504-d6c9071d762d', '030415', 'APURIMAC', 'AYMARAES', 'TINTAY');
INSERT INTO "public"."ubigeos" VALUES ('ccbcb825-2c7e-44b3-9db9-b7aea5191913', '030416', 'APURIMAC', 'AYMARAES', 'TORAYA');
INSERT INTO "public"."ubigeos" VALUES ('337f78e1-aadd-43b2-b9de-9ca3bef6f92c', '030417', 'APURIMAC', 'AYMARAES', 'YANACA');
INSERT INTO "public"."ubigeos" VALUES ('e53ee1c3-08c3-4633-b82a-8af3e582895f', '030501', 'APURIMAC', 'COTABAMBAS', 'TAMBOBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('bffcfb10-dea3-431a-9de1-0d98538357b3', '030502', 'APURIMAC', 'COTABAMBAS', 'COTABAMBAS');
INSERT INTO "public"."ubigeos" VALUES ('d556f4b9-3fc6-4333-ae24-10d0d3555ea7', '030503', 'APURIMAC', 'COTABAMBAS', 'COYLLURQUI');
INSERT INTO "public"."ubigeos" VALUES ('55b7877e-8815-461a-9d3e-1f3f9328694d', '030504', 'APURIMAC', 'COTABAMBAS', 'HAQUIRA');
INSERT INTO "public"."ubigeos" VALUES ('d286f299-159d-4012-8d6d-ffa64ab6a1f2', '030505', 'APURIMAC', 'COTABAMBAS', 'MARA');
INSERT INTO "public"."ubigeos" VALUES ('549a4200-0fe4-4886-bb37-324ea83fbbcc', '030506', 'APURIMAC', 'COTABAMBAS', 'CHALLHUAHUACHO');
INSERT INTO "public"."ubigeos" VALUES ('e4513c78-09d2-44b5-b708-22dcbe9c7098', '030601', 'APURIMAC', 'CHINCHEROS', 'CHINCHEROS');
INSERT INTO "public"."ubigeos" VALUES ('ac213b46-9fbe-467c-b809-ee102b5789ce', '030602', 'APURIMAC', 'CHINCHEROS', 'ANCO_HUALLO');
INSERT INTO "public"."ubigeos" VALUES ('a93ba434-18ba-4c07-a030-b046386ed5a6', '030603', 'APURIMAC', 'CHINCHEROS', 'COCHARCAS');
INSERT INTO "public"."ubigeos" VALUES ('bf2fb3af-c085-4a47-8165-623993f762f1', '030604', 'APURIMAC', 'CHINCHEROS', 'HUACCANA');
INSERT INTO "public"."ubigeos" VALUES ('01aa83fa-41c5-40be-b396-9f850e1a523c', '030605', 'APURIMAC', 'CHINCHEROS', 'OCOBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('4a88dd9d-2e95-4fd4-a670-cae5d7bea24f', '030606', 'APURIMAC', 'CHINCHEROS', 'ONGOY');
INSERT INTO "public"."ubigeos" VALUES ('5d14af13-d806-4cc3-b383-1831a8ce6e92', '030607', 'APURIMAC', 'CHINCHEROS', 'URANMARCA');
INSERT INTO "public"."ubigeos" VALUES ('9c7769e2-f52e-4961-ad70-875098267589', '030608', 'APURIMAC', 'CHINCHEROS', 'RANRACANCHA');
INSERT INTO "public"."ubigeos" VALUES ('fc14a22b-86b3-4952-96dd-9b7556448840', '030609', 'APURIMAC', 'CHINCHEROS', 'ROCCHACC');
INSERT INTO "public"."ubigeos" VALUES ('928ce69a-40d2-4e46-8bf6-c6f2d07f5807', '030610', 'APURIMAC', 'CHINCHEROS', 'EL PORVENIR');
INSERT INTO "public"."ubigeos" VALUES ('d8c73a1f-a0f7-4927-837c-7b272521d041', '030611', 'APURIMAC', 'CHINCHEROS', 'LOS CHANKAS');
INSERT INTO "public"."ubigeos" VALUES ('9e9178a0-518c-4748-b244-ed6275accd0b', '030612', 'APURIMAC', 'CHINCHEROS', 'AHUAYRO');
INSERT INTO "public"."ubigeos" VALUES ('a390c4fc-229e-4228-aca7-f69ab73fe85e', '030701', 'APURIMAC', 'GRAU', 'CHUQUIBAMBILLA');
INSERT INTO "public"."ubigeos" VALUES ('64b3f5c3-4087-4ff3-87e3-a4bb46dd69be', '030702', 'APURIMAC', 'GRAU', 'CURPAHUASI');
INSERT INTO "public"."ubigeos" VALUES ('0ca015fd-95fb-4008-a449-f4e242e87734', '030703', 'APURIMAC', 'GRAU', 'GAMARRA');
INSERT INTO "public"."ubigeos" VALUES ('c9f43c89-ea10-4117-89b7-24cc70c16739', '030704', 'APURIMAC', 'GRAU', 'HUAYLLATI');
INSERT INTO "public"."ubigeos" VALUES ('c720631b-c4fc-44c6-95c3-b9ad8ecd1240', '030705', 'APURIMAC', 'GRAU', 'MAMARA');
INSERT INTO "public"."ubigeos" VALUES ('a38afb3a-9f27-429f-a7c0-e46c465ebe11', '030706', 'APURIMAC', 'GRAU', 'MICAELA BASTIDAS');
INSERT INTO "public"."ubigeos" VALUES ('e86b878c-cac9-4c25-af73-c333f77c73bc', '030707', 'APURIMAC', 'GRAU', 'PATAYPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('00a593c4-5e91-42da-aa99-dd55849fdba5', '030708', 'APURIMAC', 'GRAU', 'PROGRESO');
INSERT INTO "public"."ubigeos" VALUES ('44918a1b-73eb-46ca-afa9-3659b81668c7', '030709', 'APURIMAC', 'GRAU', 'SAN ANTONIO');
INSERT INTO "public"."ubigeos" VALUES ('87c465c9-a686-4a84-afda-b4779a7921ee', '030710', 'APURIMAC', 'GRAU', 'SANTA ROSA');
INSERT INTO "public"."ubigeos" VALUES ('fbbbe283-c009-4740-9719-02cbff9f790b', '030711', 'APURIMAC', 'GRAU', 'TURPAY');
INSERT INTO "public"."ubigeos" VALUES ('46d2a0cc-7860-47c8-aa15-82f82f79a8d1', '030712', 'APURIMAC', 'GRAU', 'VILCABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('177224cf-ba8d-4674-b766-3e3d6f0e38da', '030713', 'APURIMAC', 'GRAU', 'VIRUNDO');
INSERT INTO "public"."ubigeos" VALUES ('f47efd3b-391a-4844-b01f-12a3910bb270', '030714', 'APURIMAC', 'GRAU', 'CURASCO');
INSERT INTO "public"."ubigeos" VALUES ('d21c7e9e-e89d-4436-9239-548c793534a9', '040101', 'AREQUIPA', 'AREQUIPA', 'AREQUIPA');
INSERT INTO "public"."ubigeos" VALUES ('b2d5d6c5-e901-4b31-b728-d5f6e3910e7d', '040102', 'AREQUIPA', 'AREQUIPA', 'ALTO SELVA ALEGRE');
INSERT INTO "public"."ubigeos" VALUES ('5d7d2d7b-fecb-4477-8906-9dcf5a663506', '040103', 'AREQUIPA', 'AREQUIPA', 'CAYMA');
INSERT INTO "public"."ubigeos" VALUES ('c79c828d-e472-4c61-a14a-2f0adc8bedbc', '040104', 'AREQUIPA', 'AREQUIPA', 'CERRO COLORADO');
INSERT INTO "public"."ubigeos" VALUES ('e3f296f3-db48-44af-803e-b3b804fd5415', '040105', 'AREQUIPA', 'AREQUIPA', 'CHARACATO');
INSERT INTO "public"."ubigeos" VALUES ('6fb7f36a-bdec-4ae6-ab93-9ef91c1eaf84', '040106', 'AREQUIPA', 'AREQUIPA', 'CHIGUATA');
INSERT INTO "public"."ubigeos" VALUES ('52d33c56-c343-49dc-b025-db2954ee4857', '040107', 'AREQUIPA', 'AREQUIPA', 'JACOBO HUNTER');
INSERT INTO "public"."ubigeos" VALUES ('e41e94ca-c3a4-489f-817e-406986802189', '040108', 'AREQUIPA', 'AREQUIPA', 'LA JOYA');
INSERT INTO "public"."ubigeos" VALUES ('02807831-a565-4358-bd9c-356e2cf76790', '040109', 'AREQUIPA', 'AREQUIPA', 'MARIANO MELGAR');
INSERT INTO "public"."ubigeos" VALUES ('3dcda21d-2a77-4d2a-9521-830742fac14c', '040110', 'AREQUIPA', 'AREQUIPA', 'MIRAFLORES');
INSERT INTO "public"."ubigeos" VALUES ('e3d1f929-2815-47e1-a729-26228257a584', '040111', 'AREQUIPA', 'AREQUIPA', 'MOLLEBAYA');
INSERT INTO "public"."ubigeos" VALUES ('3b4313bb-b069-43f3-a8ec-4f06ca6409a6', '040112', 'AREQUIPA', 'AREQUIPA', 'PAUCARPATA');
INSERT INTO "public"."ubigeos" VALUES ('c4f1d532-10bf-4ae1-8fdc-94ecebc7f371', '040113', 'AREQUIPA', 'AREQUIPA', 'POCSI');
INSERT INTO "public"."ubigeos" VALUES ('3ef8af5b-1fa0-4cdc-aebd-9754813eafa0', '040114', 'AREQUIPA', 'AREQUIPA', 'POLOBAYA');
INSERT INTO "public"."ubigeos" VALUES ('bd747162-c3b6-4469-a852-78714f8a3c24', '040115', 'AREQUIPA', 'AREQUIPA', 'QUEQUEÑA');
INSERT INTO "public"."ubigeos" VALUES ('06dcb113-389f-488a-9567-add2ccc63437', '040116', 'AREQUIPA', 'AREQUIPA', 'SABANDIA');
INSERT INTO "public"."ubigeos" VALUES ('eed24115-9db5-4ebb-926d-15ff3cec7036', '040117', 'AREQUIPA', 'AREQUIPA', 'SACHACA');
INSERT INTO "public"."ubigeos" VALUES ('8a7cdce2-f64c-46e8-87c5-4fcc87542360', '040118', 'AREQUIPA', 'AREQUIPA', 'SAN JUAN DE SIGUAS');
INSERT INTO "public"."ubigeos" VALUES ('6e2f51e0-6307-467d-a9e9-836b03b1b022', '040119', 'AREQUIPA', 'AREQUIPA', 'SAN JUAN DE TARUCANI');
INSERT INTO "public"."ubigeos" VALUES ('6586f3e7-f33c-4e6e-8286-a4fa8614d2fd', '040120', 'AREQUIPA', 'AREQUIPA', 'SANTA ISABEL DE SIGUAS');
INSERT INTO "public"."ubigeos" VALUES ('972386cc-b86b-4ae2-a888-3ee87281bbe9', '040121', 'AREQUIPA', 'AREQUIPA', 'SANTA RITA DE SIGUAS');
INSERT INTO "public"."ubigeos" VALUES ('f3354891-6da5-4bc1-97f7-18f545caf680', '040122', 'AREQUIPA', 'AREQUIPA', 'SOCABAYA');
INSERT INTO "public"."ubigeos" VALUES ('6471720d-b3f5-4694-8f93-be6eee97822b', '040123', 'AREQUIPA', 'AREQUIPA', 'TIABAYA');
INSERT INTO "public"."ubigeos" VALUES ('98abbd2c-623b-4626-bb7f-16df3cb67b09', '040124', 'AREQUIPA', 'AREQUIPA', 'UCHUMAYO');
INSERT INTO "public"."ubigeos" VALUES ('ffa570dd-9e18-4296-80da-204ccca63239', '040125', 'AREQUIPA', 'AREQUIPA', 'VITOR');
INSERT INTO "public"."ubigeos" VALUES ('535929fc-c744-469f-9235-780dd02c3fe2', '040126', 'AREQUIPA', 'AREQUIPA', 'YANAHUARA');
INSERT INTO "public"."ubigeos" VALUES ('b36c4f24-5c58-47fc-b700-99768e8cfd20', '040127', 'AREQUIPA', 'AREQUIPA', 'YARABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('f60aea76-d699-4d2e-9ed4-9f10cc5cfa1f', '040128', 'AREQUIPA', 'AREQUIPA', 'YURA');
INSERT INTO "public"."ubigeos" VALUES ('dbef01e8-4797-4d2c-854a-d214dab02812', '040129', 'AREQUIPA', 'AREQUIPA', 'JOSE LUIS BUSTAMANTE Y RIVERO');
INSERT INTO "public"."ubigeos" VALUES ('c20c0502-f5f8-4235-94d6-71e66c0bd2a2', '040201', 'AREQUIPA', 'CAMANA', 'CAMANA');
INSERT INTO "public"."ubigeos" VALUES ('2e424984-ba09-40e3-b34a-74a4d4df67a2', '040202', 'AREQUIPA', 'CAMANA', 'JOSE MARIA QUIMPER');
INSERT INTO "public"."ubigeos" VALUES ('2f47bf3a-8c69-429a-9ce8-d3b2aa0da987', '040203', 'AREQUIPA', 'CAMANA', 'MARIANO NICOLAS VALCARCEL');
INSERT INTO "public"."ubigeos" VALUES ('bb3739fe-2c36-4470-9ea6-9035093bc62e', '040204', 'AREQUIPA', 'CAMANA', 'MARISCAL CACERES');
INSERT INTO "public"."ubigeos" VALUES ('5ee36305-4187-4c7b-abf0-a4d136f80dbe', '040205', 'AREQUIPA', 'CAMANA', 'NICOLAS DE PIEROLA');
INSERT INTO "public"."ubigeos" VALUES ('34f50baa-ee3e-41c2-ad4d-61870f6f380c', '040206', 'AREQUIPA', 'CAMANA', 'OCOÑA');
INSERT INTO "public"."ubigeos" VALUES ('a4b8c793-0c91-4574-a168-0dba1de22aa6', '040207', 'AREQUIPA', 'CAMANA', 'QUILCA');
INSERT INTO "public"."ubigeos" VALUES ('07911fde-37c0-4d49-b626-4ab184765949', '040208', 'AREQUIPA', 'CAMANA', 'SAMUEL PASTOR');
INSERT INTO "public"."ubigeos" VALUES ('ddfdf4eb-909c-4b2b-a830-ce62a64c38f6', '040301', 'AREQUIPA', 'CARAVELI', 'CARAVELI');
INSERT INTO "public"."ubigeos" VALUES ('d9cb05dd-c724-465a-885f-e0b4a296aef2', '040302', 'AREQUIPA', 'CARAVELI', 'ACARI');
INSERT INTO "public"."ubigeos" VALUES ('94ae4adc-f3da-4494-8385-b7bab0f267e1', '040303', 'AREQUIPA', 'CARAVELI', 'ATICO');
INSERT INTO "public"."ubigeos" VALUES ('113e2e6e-dc2e-4d2d-b233-ac1f9f0f285a', '040304', 'AREQUIPA', 'CARAVELI', 'ATIQUIPA');
INSERT INTO "public"."ubigeos" VALUES ('0da5ad2b-b693-4a86-addb-f16716874064', '040305', 'AREQUIPA', 'CARAVELI', 'BELLA UNION');
INSERT INTO "public"."ubigeos" VALUES ('1d23f5de-d808-4286-a52f-192303399e8b', '040306', 'AREQUIPA', 'CARAVELI', 'CAHUACHO');
INSERT INTO "public"."ubigeos" VALUES ('c2e07b55-67b5-4cff-ac01-497afcdf2b61', '040307', 'AREQUIPA', 'CARAVELI', 'CHALA');
INSERT INTO "public"."ubigeos" VALUES ('70c02c30-b18c-45c4-973d-4a6aeff7dcf6', '040308', 'AREQUIPA', 'CARAVELI', 'CHAPARRA');
INSERT INTO "public"."ubigeos" VALUES ('2dff834c-0892-41bf-b974-09aaa119db1f', '040309', 'AREQUIPA', 'CARAVELI', 'HUANUHUANU');
INSERT INTO "public"."ubigeos" VALUES ('1b2b5d0c-0ff5-4bdc-8152-4f75252849ea', '040310', 'AREQUIPA', 'CARAVELI', 'JAQUI');
INSERT INTO "public"."ubigeos" VALUES ('7da9afb6-cc9d-4a73-81a9-178f8ba2a558', '040311', 'AREQUIPA', 'CARAVELI', 'LOMAS');
INSERT INTO "public"."ubigeos" VALUES ('bf355846-bb1d-4fb9-8556-df1182c6e759', '040312', 'AREQUIPA', 'CARAVELI', 'QUICACHA');
INSERT INTO "public"."ubigeos" VALUES ('e5092c6c-de2f-4248-a175-5c007ffcb11d', '040313', 'AREQUIPA', 'CARAVELI', 'YAUCA');
INSERT INTO "public"."ubigeos" VALUES ('74a2e50b-0f99-4662-aa9d-f8768789f270', '040401', 'AREQUIPA', 'CASTILLA', 'APLAO');
INSERT INTO "public"."ubigeos" VALUES ('aa83f48b-d830-499e-843f-393bfdda1a4c', '040402', 'AREQUIPA', 'CASTILLA', 'ANDAGUA');
INSERT INTO "public"."ubigeos" VALUES ('29fb54b2-c0a9-4f05-8456-42618de585a8', '040403', 'AREQUIPA', 'CASTILLA', 'AYO');
INSERT INTO "public"."ubigeos" VALUES ('edd3de3d-f83e-40b8-9ede-7c24bdb4ecb5', '040404', 'AREQUIPA', 'CASTILLA', 'CHACHAS');
INSERT INTO "public"."ubigeos" VALUES ('6d1af055-2920-400f-8ab9-4971b389a64e', '040405', 'AREQUIPA', 'CASTILLA', 'CHILCAYMARCA');
INSERT INTO "public"."ubigeos" VALUES ('428b9f8f-72db-4b4b-8c89-0b683af8dd7e', '040406', 'AREQUIPA', 'CASTILLA', 'CHOCO');
INSERT INTO "public"."ubigeos" VALUES ('08b0f3c6-b074-4162-85d0-6a83878226c9', '040407', 'AREQUIPA', 'CASTILLA', 'HUANCARQUI');
INSERT INTO "public"."ubigeos" VALUES ('8b7f58be-da29-4cd4-94e9-826d9d6fb3e2', '040408', 'AREQUIPA', 'CASTILLA', 'MACHAGUAY');
INSERT INTO "public"."ubigeos" VALUES ('e5a1eb0c-c112-4ae8-949f-add0ec0b742f', '040409', 'AREQUIPA', 'CASTILLA', 'ORCOPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('1a897135-c820-4094-a6f0-b3c3f59f6c78', '040410', 'AREQUIPA', 'CASTILLA', 'PAMPACOLCA');
INSERT INTO "public"."ubigeos" VALUES ('4b51c6e8-850d-484d-995f-95b07902d088', '040411', 'AREQUIPA', 'CASTILLA', 'TIPAN');
INSERT INTO "public"."ubigeos" VALUES ('7fb30644-6fdf-4e44-be5b-59c6a1f18458', '040412', 'AREQUIPA', 'CASTILLA', 'UÑON');
INSERT INTO "public"."ubigeos" VALUES ('89e86575-c36d-4375-955f-61468b29bccb', '040413', 'AREQUIPA', 'CASTILLA', 'URACA');
INSERT INTO "public"."ubigeos" VALUES ('85990bd1-45e1-4c12-b49d-07eae35741b3', '040414', 'AREQUIPA', 'CASTILLA', 'VIRACO');
INSERT INTO "public"."ubigeos" VALUES ('4988f4a1-501f-4604-b22a-16627afea8d4', '040501', 'AREQUIPA', 'CAYLLOMA', 'CHIVAY');
INSERT INTO "public"."ubigeos" VALUES ('d58c9a44-a81f-4b8e-b6e3-a4c6220c78f2', '040502', 'AREQUIPA', 'CAYLLOMA', 'ACHOMA');
INSERT INTO "public"."ubigeos" VALUES ('29c6ed0c-bd86-4b4b-9d6e-1a79725b7ceb', '040503', 'AREQUIPA', 'CAYLLOMA', 'CABANACONDE');
INSERT INTO "public"."ubigeos" VALUES ('39e25b14-da88-46c6-a63e-063005a3cb59', '040504', 'AREQUIPA', 'CAYLLOMA', 'CALLALLI');
INSERT INTO "public"."ubigeos" VALUES ('febdb91d-8a83-49af-8c6b-a588291521e3', '040505', 'AREQUIPA', 'CAYLLOMA', 'CAYLLOMA');
INSERT INTO "public"."ubigeos" VALUES ('6ed4a22a-5a77-412b-b7dd-a34249b91759', '040506', 'AREQUIPA', 'CAYLLOMA', 'COPORAQUE');
INSERT INTO "public"."ubigeos" VALUES ('1cc78475-b403-429a-848c-adf3f3217998', '040507', 'AREQUIPA', 'CAYLLOMA', 'HUAMBO');
INSERT INTO "public"."ubigeos" VALUES ('18128c2b-49bb-4477-a312-4f0e69802c6a', '040508', 'AREQUIPA', 'CAYLLOMA', 'HUANCA');
INSERT INTO "public"."ubigeos" VALUES ('0e6bbd9f-7124-45f9-bd8b-b09c1fe43cf2', '040509', 'AREQUIPA', 'CAYLLOMA', 'ICHUPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('5ab7c8ce-64d7-400d-8543-0060123cb0c1', '040510', 'AREQUIPA', 'CAYLLOMA', 'LARI');
INSERT INTO "public"."ubigeos" VALUES ('3378fe31-37f6-4008-8a4a-4735615b1553', '040511', 'AREQUIPA', 'CAYLLOMA', 'LLUTA');
INSERT INTO "public"."ubigeos" VALUES ('eb6ecc17-de74-4658-9a45-77c3fc24a6a2', '040512', 'AREQUIPA', 'CAYLLOMA', 'MACA');
INSERT INTO "public"."ubigeos" VALUES ('97582303-fc56-4b05-96bd-7abe933d32ec', '040513', 'AREQUIPA', 'CAYLLOMA', 'MADRIGAL');
INSERT INTO "public"."ubigeos" VALUES ('77e7d64d-5127-4f4e-a92a-3bca34b6ce6d', '040514', 'AREQUIPA', 'CAYLLOMA', 'SAN ANTONIO DE CHUCA');
INSERT INTO "public"."ubigeos" VALUES ('d0df01b1-0d82-4abd-b5db-30c10e8a8816', '040515', 'AREQUIPA', 'CAYLLOMA', 'SIBAYO');
INSERT INTO "public"."ubigeos" VALUES ('ee0c4324-1027-45a8-af95-73ab2660a38a', '040516', 'AREQUIPA', 'CAYLLOMA', 'TAPAY');
INSERT INTO "public"."ubigeos" VALUES ('7717adaa-8cfe-499c-83ff-c720dcc599fa', '040517', 'AREQUIPA', 'CAYLLOMA', 'TISCO');
INSERT INTO "public"."ubigeos" VALUES ('df2e7d70-5d69-4068-a8fc-730523afb122', '040518', 'AREQUIPA', 'CAYLLOMA', 'TUTI');
INSERT INTO "public"."ubigeos" VALUES ('abb08807-3283-4752-a5f1-881cdee010ab', '040519', 'AREQUIPA', 'CAYLLOMA', 'YANQUE');
INSERT INTO "public"."ubigeos" VALUES ('3596132a-43fd-41c1-8c8f-5e0acdfdfc23', '040520', 'AREQUIPA', 'CAYLLOMA', 'MAJES');
INSERT INTO "public"."ubigeos" VALUES ('983b56a5-4bc0-4dca-801a-73a6bbf72442', '040601', 'AREQUIPA', 'CONDESUYOS', 'CHUQUIBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('369e61c2-f4d8-44a5-bd9c-822857fa2886', '040602', 'AREQUIPA', 'CONDESUYOS', 'ANDARAY');
INSERT INTO "public"."ubigeos" VALUES ('9fb01f3d-cc1d-411d-871b-3347009c71e0', '040603', 'AREQUIPA', 'CONDESUYOS', 'CAYARANI');
INSERT INTO "public"."ubigeos" VALUES ('735c22e7-c1be-4d3f-b046-3c1cdd4382eb', '040604', 'AREQUIPA', 'CONDESUYOS', 'CHICHAS');
INSERT INTO "public"."ubigeos" VALUES ('63ca30b2-79cf-42aa-a2ee-65fce3483987', '040605', 'AREQUIPA', 'CONDESUYOS', 'IRAY');
INSERT INTO "public"."ubigeos" VALUES ('10da0acf-5a41-40c3-bec1-470368329763', '040606', 'AREQUIPA', 'CONDESUYOS', 'RIO GRANDE');
INSERT INTO "public"."ubigeos" VALUES ('80860dd1-ba23-4418-9b01-a0b129e63645', '040607', 'AREQUIPA', 'CONDESUYOS', 'SALAMANCA');
INSERT INTO "public"."ubigeos" VALUES ('c6ed6bf4-b972-4f2d-ac59-a2cb3b0d8c9e', '040608', 'AREQUIPA', 'CONDESUYOS', 'YANAQUIHUA');
INSERT INTO "public"."ubigeos" VALUES ('052fbffd-6b40-4a0a-8595-fbc27a78b1fb', '040701', 'AREQUIPA', 'ISLAY', 'MOLLENDO');
INSERT INTO "public"."ubigeos" VALUES ('d50605f6-edbe-442c-8b12-2b6ff430838d', '040702', 'AREQUIPA', 'ISLAY', 'COCACHACRA');
INSERT INTO "public"."ubigeos" VALUES ('3c0ae45a-8b03-4ee2-a295-e46311987937', '040703', 'AREQUIPA', 'ISLAY', 'DEAN VALDIVIA');
INSERT INTO "public"."ubigeos" VALUES ('39bfe658-ef0a-4253-89f6-1d9790674b6f', '040704', 'AREQUIPA', 'ISLAY', 'ISLAY');
INSERT INTO "public"."ubigeos" VALUES ('fc7a5e13-f6ba-4fc1-b541-33ba9f60f13c', '040705', 'AREQUIPA', 'ISLAY', 'MEJIA');
INSERT INTO "public"."ubigeos" VALUES ('2f15246e-93eb-4705-a42f-d47d5a717594', '040706', 'AREQUIPA', 'ISLAY', 'PUNTA DE BOMBON');
INSERT INTO "public"."ubigeos" VALUES ('2692e008-5ec6-4acb-a8e6-b996863753b6', '040801', 'AREQUIPA', 'LA UNION', 'COTAHUASI');
INSERT INTO "public"."ubigeos" VALUES ('50a5e762-4458-4500-bd6c-95a1e324e47c', '040802', 'AREQUIPA', 'LA UNION', 'ALCA');
INSERT INTO "public"."ubigeos" VALUES ('7e88a764-64d1-43a9-826e-6b95425778fe', '040803', 'AREQUIPA', 'LA UNION', 'CHARCANA');
INSERT INTO "public"."ubigeos" VALUES ('f7ea006b-f976-489a-bb73-5ed7cf78a3fa', '040804', 'AREQUIPA', 'LA UNION', 'HUAYNACOTAS');
INSERT INTO "public"."ubigeos" VALUES ('dc63405f-6adb-4fb7-a346-26c87060f45b', '040805', 'AREQUIPA', 'LA UNION', 'PAMPAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('ea4d74fe-b1e7-4255-92a7-65dede7a8275', '040806', 'AREQUIPA', 'LA UNION', 'PUYCA');
INSERT INTO "public"."ubigeos" VALUES ('331e7c79-82c2-430c-a339-b38562217b98', '040807', 'AREQUIPA', 'LA UNION', 'QUECHUALLA');
INSERT INTO "public"."ubigeos" VALUES ('722b7a17-0f5d-4448-a6b9-72faca508dd4', '040808', 'AREQUIPA', 'LA UNION', 'SAYLA');
INSERT INTO "public"."ubigeos" VALUES ('2c2f0d39-eb97-4b74-9e6c-97661be91909', '040809', 'AREQUIPA', 'LA UNION', 'TAURIA');
INSERT INTO "public"."ubigeos" VALUES ('6aeacf5a-73dc-4dd5-8239-843fd64ea702', '040810', 'AREQUIPA', 'LA UNION', 'TOMEPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('39d952c1-75a3-475c-81f6-1df544957343', '040811', 'AREQUIPA', 'LA UNION', 'TORO');
INSERT INTO "public"."ubigeos" VALUES ('e6cc0471-7ea2-4478-b3b8-1a345ae5bbd5', '050101', 'AYACUCHO', 'HUAMANGA', 'AYACUCHO');
INSERT INTO "public"."ubigeos" VALUES ('8468183b-90d4-4043-81fe-80f5432d514d', '050102', 'AYACUCHO', 'HUAMANGA', 'ACOCRO');
INSERT INTO "public"."ubigeos" VALUES ('172d7649-3981-4f3b-95e4-477e6dc6399b', '050103', 'AYACUCHO', 'HUAMANGA', 'ACOS VINCHOS');
INSERT INTO "public"."ubigeos" VALUES ('364696f2-a836-4c2d-a4e9-2bfd6239d9c1', '050104', 'AYACUCHO', 'HUAMANGA', 'CARMEN ALTO');
INSERT INTO "public"."ubigeos" VALUES ('69056248-7572-404f-b446-17a92747fdd9', '050105', 'AYACUCHO', 'HUAMANGA', 'CHIARA');
INSERT INTO "public"."ubigeos" VALUES ('aed2fb65-41d8-4c4e-8814-4f1d82b7e91b', '050106', 'AYACUCHO', 'HUAMANGA', 'OCROS');
INSERT INTO "public"."ubigeos" VALUES ('10930e4b-be19-44a6-9c24-4946737183d2', '050107', 'AYACUCHO', 'HUAMANGA', 'PACAYCASA');
INSERT INTO "public"."ubigeos" VALUES ('cad71d89-dc9e-46bf-b039-b3d32367a5b4', '050108', 'AYACUCHO', 'HUAMANGA', 'QUINUA');
INSERT INTO "public"."ubigeos" VALUES ('7e588655-151f-475d-b49d-dcd8a4eba443', '050109', 'AYACUCHO', 'HUAMANGA', 'SAN JOSE DE TICLLAS');
INSERT INTO "public"."ubigeos" VALUES ('85f57cc7-4820-450d-b16c-4c3e9f6d6534', '050110', 'AYACUCHO', 'HUAMANGA', 'SAN JUAN BAUTISTA');
INSERT INTO "public"."ubigeos" VALUES ('b3c15308-4122-43a7-b393-395f0547a881', '050111', 'AYACUCHO', 'HUAMANGA', 'SANTIAGO DE PISCHA');
INSERT INTO "public"."ubigeos" VALUES ('12ea9c99-6939-4800-b877-e0f5ec801c8f', '050112', 'AYACUCHO', 'HUAMANGA', 'SOCOS');
INSERT INTO "public"."ubigeos" VALUES ('051e92bc-81f9-417b-88c9-703f3188b93c', '050113', 'AYACUCHO', 'HUAMANGA', 'TAMBILLO');
INSERT INTO "public"."ubigeos" VALUES ('d47cfe88-ee67-406e-9cf5-db3b136a2ecd', '050114', 'AYACUCHO', 'HUAMANGA', 'VINCHOS');
INSERT INTO "public"."ubigeos" VALUES ('9f4a478c-5d82-4005-8222-5b0794605cb1', '050115', 'AYACUCHO', 'HUAMANGA', 'JESUS NAZARENO');
INSERT INTO "public"."ubigeos" VALUES ('c895fc93-0cac-444a-b736-22c8b4a89529', '050116', 'AYACUCHO', 'HUAMANGA', 'ANDRES AVELINO CACERES DORREGARAY');
INSERT INTO "public"."ubigeos" VALUES ('74c5e583-6b9c-4b3d-aaf7-95a36d887c21', '050201', 'AYACUCHO', 'CANGALLO', 'CANGALLO');
INSERT INTO "public"."ubigeos" VALUES ('8dd68c63-4723-4320-8000-dee21a0948f5', '050202', 'AYACUCHO', 'CANGALLO', 'CHUSCHI');
INSERT INTO "public"."ubigeos" VALUES ('5c324f2f-3b68-48ca-96a7-5577ce9252ce', '050203', 'AYACUCHO', 'CANGALLO', 'LOS MOROCHUCOS');
INSERT INTO "public"."ubigeos" VALUES ('0c873776-193d-4912-9499-1c5924e5f615', '050204', 'AYACUCHO', 'CANGALLO', 'MARIA PARADO DE BELLIDO');
INSERT INTO "public"."ubigeos" VALUES ('ed45a8d4-a5f0-435b-9aa2-4d49732051d7', '050205', 'AYACUCHO', 'CANGALLO', 'PARAS');
INSERT INTO "public"."ubigeos" VALUES ('a11635ca-7d54-4ca6-be8b-d3f58262f843', '050206', 'AYACUCHO', 'CANGALLO', 'TOTOS');
INSERT INTO "public"."ubigeos" VALUES ('72c84467-1598-453a-9717-dc4147177a84', '050301', 'AYACUCHO', 'HUANCA SANCOS', 'SANCOS');
INSERT INTO "public"."ubigeos" VALUES ('7e3d79d2-4c63-45eb-a887-d5905d90fb36', '050302', 'AYACUCHO', 'HUANCA SANCOS', 'CARAPO');
INSERT INTO "public"."ubigeos" VALUES ('369d0b5e-6afc-49c3-b976-f930cff315cd', '050303', 'AYACUCHO', 'HUANCA SANCOS', 'SACSAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('c1114921-ef24-42be-b71d-62194d27e257', '050304', 'AYACUCHO', 'HUANCA SANCOS', 'SANTIAGO DE LUCANAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('90b6bf43-736b-4c43-b398-1d5fc73e894c', '050401', 'AYACUCHO', 'HUANTA', 'HUANTA');
INSERT INTO "public"."ubigeos" VALUES ('44f12656-ae9f-482e-b494-484d283af1ee', '050402', 'AYACUCHO', 'HUANTA', 'AYAHUANCO');
INSERT INTO "public"."ubigeos" VALUES ('ad6d37fd-e325-4997-aab0-581dd9a872a5', '050403', 'AYACUCHO', 'HUANTA', 'HUAMANGUILLA');
INSERT INTO "public"."ubigeos" VALUES ('9ee6eace-c238-443a-9ac1-a516c5894854', '050404', 'AYACUCHO', 'HUANTA', 'IGUAIN');
INSERT INTO "public"."ubigeos" VALUES ('72e53d98-b25e-46ee-b304-7721d463448a', '050405', 'AYACUCHO', 'HUANTA', 'LURICOCHA');
INSERT INTO "public"."ubigeos" VALUES ('2ea2ff53-964c-4df7-89ae-85bf19a33856', '050406', 'AYACUCHO', 'HUANTA', 'SANTILLANA');
INSERT INTO "public"."ubigeos" VALUES ('40e03fad-105e-4ffc-a21d-bf6797d1f7ec', '050407', 'AYACUCHO', 'HUANTA', 'SIVIA');
INSERT INTO "public"."ubigeos" VALUES ('e8a09bbb-23d8-44db-b6a3-655c3a8dd7b6', '050408', 'AYACUCHO', 'HUANTA', 'LLOCHEGUA');
INSERT INTO "public"."ubigeos" VALUES ('3c47cb84-906d-4a24-9640-7804a8d83c8e', '050409', 'AYACUCHO', 'HUANTA', 'CANAYRE');
INSERT INTO "public"."ubigeos" VALUES ('da8c15e7-9831-4475-a107-c68cd2d8f10d', '050410', 'AYACUCHO', 'HUANTA', 'UCHURACCAY');
INSERT INTO "public"."ubigeos" VALUES ('b041e250-5c40-46e2-bcdc-b19dc2a0d0e6', '050411', 'AYACUCHO', 'HUANTA', 'PUCACOLPA');
INSERT INTO "public"."ubigeos" VALUES ('cd54523b-3f2d-4629-be70-6cd69bd1e223', '050412', 'AYACUCHO', 'HUANTA', 'CHACA');
INSERT INTO "public"."ubigeos" VALUES ('b355cb67-3db1-42a7-a71e-95150c1dfa90', '050413', 'AYACUCHO', 'HUANTA', 'PUTIS');
INSERT INTO "public"."ubigeos" VALUES ('8d173cba-4286-43c8-b7b0-645f4dce2284', '050501', 'AYACUCHO', 'LA MAR', 'SAN MIGUEL');
INSERT INTO "public"."ubigeos" VALUES ('0387939d-48fd-4f69-8567-5e5f7c27a98d', '050502', 'AYACUCHO', 'LA MAR', 'ANCO');
INSERT INTO "public"."ubigeos" VALUES ('83b2f025-fb9f-4dfd-ba8f-573c706efdee', '050503', 'AYACUCHO', 'LA MAR', 'AYNA');
INSERT INTO "public"."ubigeos" VALUES ('f6e45218-6a17-4800-a17b-b8b4b1c826a2', '050504', 'AYACUCHO', 'LA MAR', 'CHILCAS');
INSERT INTO "public"."ubigeos" VALUES ('898fd7a7-0afd-49bc-9c0b-3b0c7283489c', '050505', 'AYACUCHO', 'LA MAR', 'CHUNGUI');
INSERT INTO "public"."ubigeos" VALUES ('8d3eb48a-3e58-4ffa-827c-2bc1dce3194b', '050506', 'AYACUCHO', 'LA MAR', 'LUIS CARRANZA');
INSERT INTO "public"."ubigeos" VALUES ('33327a95-3e6b-401b-b774-bbf70148bafc', '050507', 'AYACUCHO', 'LA MAR', 'SANTA ROSA');
INSERT INTO "public"."ubigeos" VALUES ('760261c4-f464-4283-b133-1471dbeeb5cb', '050508', 'AYACUCHO', 'LA MAR', 'TAMBO');
INSERT INTO "public"."ubigeos" VALUES ('19b0d6af-0906-4886-979f-6165eddbc153', '050509', 'AYACUCHO', 'LA MAR', 'SAMUGARI');
INSERT INTO "public"."ubigeos" VALUES ('fd379511-0cc7-4e72-b80a-ae33667ad564', '050510', 'AYACUCHO', 'LA MAR', 'ANCHIHUAY');
INSERT INTO "public"."ubigeos" VALUES ('4e4f4cb3-715b-46ec-806b-df48a9ed8be3', '050511', 'AYACUCHO', 'LA MAR', 'ORONCCOY');
INSERT INTO "public"."ubigeos" VALUES ('d5a64b0b-adc8-466a-b06d-9747aefe2018', '050512', 'AYACUCHO', 'LA MAR', 'UNION PROGRESO');
INSERT INTO "public"."ubigeos" VALUES ('9667b989-e56d-404b-b58c-a7234c739fd3', '050513', 'AYACUCHO', 'LA MAR', 'RIO MAGDALENA');
INSERT INTO "public"."ubigeos" VALUES ('bf18c8fd-e8dc-45b5-9ff3-9b6e34ae3812', '050514', 'AYACUCHO', 'LA MAR', 'NINABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('28eef608-24e7-4794-b87a-7cf1e4efd422', '050515', 'AYACUCHO', 'LA MAR', 'PATIBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('2ba06f84-1d08-484b-8530-19d7fb0cb694', '050601', 'AYACUCHO', 'LUCANAS', 'PUQUIO');
INSERT INTO "public"."ubigeos" VALUES ('56231d5d-2e0b-417f-a549-b2dd7d5431b3', '050602', 'AYACUCHO', 'LUCANAS', 'AUCARA');
INSERT INTO "public"."ubigeos" VALUES ('372d74ee-78bb-44d1-93a4-e5d5d65b1a04', '050603', 'AYACUCHO', 'LUCANAS', 'CABANA');
INSERT INTO "public"."ubigeos" VALUES ('1d26dd1a-192f-4c9b-91ac-a451f00b6c65', '050604', 'AYACUCHO', 'LUCANAS', 'CARMEN SALCEDO');
INSERT INTO "public"."ubigeos" VALUES ('82a968ca-0fbe-4a4e-835b-03a451b7ca93', '050605', 'AYACUCHO', 'LUCANAS', 'CHAVIÑA');
INSERT INTO "public"."ubigeos" VALUES ('e10aa825-ffc1-4ca8-95be-bc3dfb97ad58', '050606', 'AYACUCHO', 'LUCANAS', 'CHIPAO');
INSERT INTO "public"."ubigeos" VALUES ('ed02a206-0f84-4da3-816f-4d96d4716e5e', '050607', 'AYACUCHO', 'LUCANAS', 'HUAC-HUAS');
INSERT INTO "public"."ubigeos" VALUES ('0efbf193-b527-40dc-a525-a0fd483dc819', '050608', 'AYACUCHO', 'LUCANAS', 'LARAMATE');
INSERT INTO "public"."ubigeos" VALUES ('eb8ba131-6580-43f2-9117-2a1bee45e719', '050609', 'AYACUCHO', 'LUCANAS', 'LEONCIO PRADO');
INSERT INTO "public"."ubigeos" VALUES ('ec5c89a1-729e-4fd4-8ace-d4bd1e5c1eda', '050610', 'AYACUCHO', 'LUCANAS', 'LLAUTA');
INSERT INTO "public"."ubigeos" VALUES ('a28e17fe-1a3a-4b75-8456-332646b3267f', '050611', 'AYACUCHO', 'LUCANAS', 'LUCANAS');
INSERT INTO "public"."ubigeos" VALUES ('b67966de-0cec-4bff-8d98-e747816ecea0', '050612', 'AYACUCHO', 'LUCANAS', 'OCAÑA');
INSERT INTO "public"."ubigeos" VALUES ('f3fe4839-8495-427e-ad5d-fbcbff4e1581', '050613', 'AYACUCHO', 'LUCANAS', 'OTOCA');
INSERT INTO "public"."ubigeos" VALUES ('ca04fecb-8e58-4591-8d60-121de6f23265', '050614', 'AYACUCHO', 'LUCANAS', 'SAISA');
INSERT INTO "public"."ubigeos" VALUES ('d9bf9e7d-828f-4fcd-af8a-2ac3b899e35c', '050615', 'AYACUCHO', 'LUCANAS', 'SAN CRISTOBAL');
INSERT INTO "public"."ubigeos" VALUES ('94feaa04-783d-4dd0-b6f5-20fa8cb629e6', '050616', 'AYACUCHO', 'LUCANAS', 'SAN JUAN');
INSERT INTO "public"."ubigeos" VALUES ('b33b2176-b532-43e2-9202-fd0da934593f', '050617', 'AYACUCHO', 'LUCANAS', 'SAN PEDRO');
INSERT INTO "public"."ubigeos" VALUES ('fab37933-9947-46ab-9258-7d873c455d77', '050618', 'AYACUCHO', 'LUCANAS', 'SAN PEDRO DE PALCO');
INSERT INTO "public"."ubigeos" VALUES ('b2dbe25b-4b54-4118-b1ca-ba53320eaba4', '050619', 'AYACUCHO', 'LUCANAS', 'SANCOS');
INSERT INTO "public"."ubigeos" VALUES ('a05e2b5b-9a09-4172-a10b-6b84b47a8996', '050620', 'AYACUCHO', 'LUCANAS', 'SANTA ANA DE HUAYCAHUACHO');
INSERT INTO "public"."ubigeos" VALUES ('efc9f0e5-f799-4c52-ac70-eedc6b45d9dd', '050621', 'AYACUCHO', 'LUCANAS', 'SANTA LUCIA');
INSERT INTO "public"."ubigeos" VALUES ('af9a879b-c9d3-4e6f-aa63-3474119d3c8f', '050701', 'AYACUCHO', 'PARINACOCHAS', 'CORACORA');
INSERT INTO "public"."ubigeos" VALUES ('f2100beb-7d55-40c9-b9af-9eccfe1ad188', '050702', 'AYACUCHO', 'PARINACOCHAS', 'CHUMPI');
INSERT INTO "public"."ubigeos" VALUES ('c84f370c-5677-477a-b7ae-f6f64ca43e0c', '050703', 'AYACUCHO', 'PARINACOCHAS', 'CORONEL CASTAÑEDA');
INSERT INTO "public"."ubigeos" VALUES ('5b9815f5-65b2-4c8d-acce-822075259e00', '050704', 'AYACUCHO', 'PARINACOCHAS', 'PACAPAUSA');
INSERT INTO "public"."ubigeos" VALUES ('b2a8f937-cddd-4866-a91d-2d9b61625fa4', '050705', 'AYACUCHO', 'PARINACOCHAS', 'PULLO');
INSERT INTO "public"."ubigeos" VALUES ('929f8ff4-156a-4ac0-b014-caff4ea8b96c', '050706', 'AYACUCHO', 'PARINACOCHAS', 'PUYUSCA');
INSERT INTO "public"."ubigeos" VALUES ('d3029527-ce1b-484d-b599-3b1401e27cc0', '050707', 'AYACUCHO', 'PARINACOCHAS', 'SAN FRANCISCO DE RIVACAYCO');
INSERT INTO "public"."ubigeos" VALUES ('62ec6d61-0b51-4e25-b8e1-e7277671f306', '050708', 'AYACUCHO', 'PARINACOCHAS', 'UPAHUACHO');
INSERT INTO "public"."ubigeos" VALUES ('ca192397-a929-47c3-88b9-6a4aac0b32bc', '050801', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'PAUSA');
INSERT INTO "public"."ubigeos" VALUES ('6b1f5b5c-f0fd-44c5-bbca-3afbb78b7d31', '050802', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'COLTA');
INSERT INTO "public"."ubigeos" VALUES ('75f6ce87-7aca-4e05-bd03-0b106d0a185d', '050803', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'CORCULLA');
INSERT INTO "public"."ubigeos" VALUES ('c19825a5-a000-40f3-a210-f5a8a65311e2', '050804', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'LAMPA');
INSERT INTO "public"."ubigeos" VALUES ('cc1b0a73-5e8b-4c7a-8d05-edc847fbdff0', '050805', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'MARCABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('97caed25-c2c8-4370-8949-6e196905a029', '050806', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'OYOLO');
INSERT INTO "public"."ubigeos" VALUES ('0e326bd6-91f2-4840-b932-ed637d2ab2e5', '050807', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'PARARCA');
INSERT INTO "public"."ubigeos" VALUES ('4cb056c8-eee0-4ad7-9ecc-f1d01289022d', '050808', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'SAN JAVIER DE ALPABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('2b511fd9-8635-4e9d-a7c7-fa15e4071ed2', '050809', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'SAN JOSE DE USHUA');
INSERT INTO "public"."ubigeos" VALUES ('6c7fbe59-1c40-405a-a2d8-9fe2600c4d1f', '050810', 'AYACUCHO', 'PAUCAR DEL SARA SARA', 'SARA SARA');
INSERT INTO "public"."ubigeos" VALUES ('24069a4f-78bf-46db-8267-e56231700716', '050901', 'AYACUCHO', 'SUCRE', 'QUEROBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('3b119c3c-3d0b-45c1-acc1-2b3e0f47ae7d', '050902', 'AYACUCHO', 'SUCRE', 'BELEN');
INSERT INTO "public"."ubigeos" VALUES ('e8d76da9-4fbc-40a7-9318-3937e9679c4d', '050903', 'AYACUCHO', 'SUCRE', 'CHALCOS');
INSERT INTO "public"."ubigeos" VALUES ('690e1385-e8f5-4ab2-8c1e-29c0c4ab9ea8', '050904', 'AYACUCHO', 'SUCRE', 'CHILCAYOC');
INSERT INTO "public"."ubigeos" VALUES ('40fe37c0-33e1-4ee4-8d7a-3f3fe0dc3a79', '050905', 'AYACUCHO', 'SUCRE', 'HUACAÑA');
INSERT INTO "public"."ubigeos" VALUES ('75c07ef6-3f8b-4f22-8355-3bc66d9951a7', '050906', 'AYACUCHO', 'SUCRE', 'MORCOLLA');
INSERT INTO "public"."ubigeos" VALUES ('71342c06-406d-4b0d-9de0-6cccc5ab4e34', '050907', 'AYACUCHO', 'SUCRE', 'PAICO');
INSERT INTO "public"."ubigeos" VALUES ('e96bc9ef-ca0d-4c3b-9e68-580ad5ce0452', '050908', 'AYACUCHO', 'SUCRE', 'SAN PEDRO DE LARCAY');
INSERT INTO "public"."ubigeos" VALUES ('fdc3283f-55b1-4a88-86b1-87630f8f4b46', '050909', 'AYACUCHO', 'SUCRE', 'SAN SALVADOR DE QUIJE');
INSERT INTO "public"."ubigeos" VALUES ('14e9054f-f813-4141-908f-7193293bfb91', '050910', 'AYACUCHO', 'SUCRE', 'SANTIAGO DE PAUCARAY');
INSERT INTO "public"."ubigeos" VALUES ('7c88de21-9328-4515-a543-184786826862', '050911', 'AYACUCHO', 'SUCRE', 'SORAS');
INSERT INTO "public"."ubigeos" VALUES ('fe79caa7-0575-45c7-8b0d-4f698a0f2aa2', '051001', 'AYACUCHO', 'VICTOR FAJARDO', 'HUANCAPI');
INSERT INTO "public"."ubigeos" VALUES ('39ec5aee-9254-4098-a0ad-09dc9ca2be54', '051002', 'AYACUCHO', 'VICTOR FAJARDO', 'ALCAMENCA');
INSERT INTO "public"."ubigeos" VALUES ('b4420c2e-f78c-4119-93cc-82bcead9e81e', '051003', 'AYACUCHO', 'VICTOR FAJARDO', 'APONGO');
INSERT INTO "public"."ubigeos" VALUES ('83ddba02-92f9-4dac-9d02-f61e6b1ca43d', '051004', 'AYACUCHO', 'VICTOR FAJARDO', 'ASQUIPATA');
INSERT INTO "public"."ubigeos" VALUES ('ecee821b-e33a-4c44-b737-920da309e465', '051005', 'AYACUCHO', 'VICTOR FAJARDO', 'CANARIA');
INSERT INTO "public"."ubigeos" VALUES ('359671e0-ee22-4fb3-be83-139a56c27ccd', '051006', 'AYACUCHO', 'VICTOR FAJARDO', 'CAYARA');
INSERT INTO "public"."ubigeos" VALUES ('55b5d10c-68c6-4c12-9e17-b3b345fc2af3', '051007', 'AYACUCHO', 'VICTOR FAJARDO', 'COLCA');
INSERT INTO "public"."ubigeos" VALUES ('75f5da36-3577-49a0-8f9e-8b165b84574f', '051008', 'AYACUCHO', 'VICTOR FAJARDO', 'HUAMANQUIQUIA');
INSERT INTO "public"."ubigeos" VALUES ('66e39c0f-5f41-4085-8189-a928cc8ea3b1', '051009', 'AYACUCHO', 'VICTOR FAJARDO', 'HUANCARAYLLA');
INSERT INTO "public"."ubigeos" VALUES ('2bb9f4c0-a87f-48af-842e-6ebd992d0b43', '051010', 'AYACUCHO', 'VICTOR FAJARDO', 'HUALLA');
INSERT INTO "public"."ubigeos" VALUES ('a12ffd60-d5d8-460d-a7a8-37afe77e7f61', '051011', 'AYACUCHO', 'VICTOR FAJARDO', 'SARHUA');
INSERT INTO "public"."ubigeos" VALUES ('f81a8487-8ad1-46a6-b8bf-489afb6c347b', '051012', 'AYACUCHO', 'VICTOR FAJARDO', 'VILCANCHOS');
INSERT INTO "public"."ubigeos" VALUES ('efa5afda-d121-46ff-b69d-11b7874268a1', '051101', 'AYACUCHO', 'VILCAS HUAMAN', 'VILCAS HUAMAN');
INSERT INTO "public"."ubigeos" VALUES ('124d97c2-195e-4e65-942b-c183e14be3b2', '051102', 'AYACUCHO', 'VILCAS HUAMAN', 'ACCOMARCA');
INSERT INTO "public"."ubigeos" VALUES ('32bf25d8-77f4-4cd8-8f9f-18470cdb9740', '051103', 'AYACUCHO', 'VILCAS HUAMAN', 'CARHUANCA');
INSERT INTO "public"."ubigeos" VALUES ('75f7140f-4e16-4676-aa1f-464e537649b9', '051104', 'AYACUCHO', 'VILCAS HUAMAN', 'CONCEPCION');
INSERT INTO "public"."ubigeos" VALUES ('b40dcf20-a5f3-4234-8889-76789168ee65', '051105', 'AYACUCHO', 'VILCAS HUAMAN', 'HUAMBALPA');
INSERT INTO "public"."ubigeos" VALUES ('76e2d4ce-f483-4c42-bf84-b519f2afb8fb', '051106', 'AYACUCHO', 'VILCAS HUAMAN', 'INDEPENDENCIA');
INSERT INTO "public"."ubigeos" VALUES ('56e6d853-cc38-4352-9e23-f06f5fd54641', '051107', 'AYACUCHO', 'VILCAS HUAMAN', 'SAURAMA');
INSERT INTO "public"."ubigeos" VALUES ('c25d9c4c-c835-478d-b0df-422a1284a08c', '051108', 'AYACUCHO', 'VILCAS HUAMAN', 'VISCHONGO');
INSERT INTO "public"."ubigeos" VALUES ('dfabcbc9-8a8c-4342-bd73-79b7229c35f6', '060101', 'CAJAMARCA', 'CAJAMARCA', 'CAJAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('8903f023-db55-4514-a11b-239699258677', '060102', 'CAJAMARCA', 'CAJAMARCA', 'ASUNCION');
INSERT INTO "public"."ubigeos" VALUES ('0b6ed935-44e1-401e-82bc-c062cc6b4d4b', '060103', 'CAJAMARCA', 'CAJAMARCA', 'CHETILLA');
INSERT INTO "public"."ubigeos" VALUES ('c629fd40-051f-4c25-b53f-09a8afc32671', '060104', 'CAJAMARCA', 'CAJAMARCA', 'COSPAN');
INSERT INTO "public"."ubigeos" VALUES ('a250e387-16e8-41ad-ae32-aedd796296b0', '060105', 'CAJAMARCA', 'CAJAMARCA', 'ENCAÑADA');
INSERT INTO "public"."ubigeos" VALUES ('543cc06b-d092-4086-8007-a0be599ceaa6', '060106', 'CAJAMARCA', 'CAJAMARCA', 'JESUS');
INSERT INTO "public"."ubigeos" VALUES ('1b99deef-67d1-498c-953d-4eb88aa624f3', '060107', 'CAJAMARCA', 'CAJAMARCA', 'LLACANORA');
INSERT INTO "public"."ubigeos" VALUES ('44df0e33-3e75-40a5-890e-344d3890edc4', '060108', 'CAJAMARCA', 'CAJAMARCA', 'LOS BAÑOS DEL INCA');
INSERT INTO "public"."ubigeos" VALUES ('e982e90e-4807-4e9b-a480-2664ee4fb70b', '060109', 'CAJAMARCA', 'CAJAMARCA', 'MAGDALENA');
INSERT INTO "public"."ubigeos" VALUES ('cd7bd375-d282-44a8-9470-9b1848e7725b', '060110', 'CAJAMARCA', 'CAJAMARCA', 'MATARA');
INSERT INTO "public"."ubigeos" VALUES ('be0e4fd2-cdc6-411f-b444-285af8775e71', '060111', 'CAJAMARCA', 'CAJAMARCA', 'NAMORA');
INSERT INTO "public"."ubigeos" VALUES ('5a23833c-5a1b-4bea-a4cf-24af4115f320', '060112', 'CAJAMARCA', 'CAJAMARCA', 'SAN JUAN');
INSERT INTO "public"."ubigeos" VALUES ('9aa94c95-f113-47f3-9dfc-5dd00c657758', '060201', 'CAJAMARCA', 'CAJABAMBA', 'CAJABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('8687bf8d-d018-4b2e-8869-cde8b300b450', '060202', 'CAJAMARCA', 'CAJABAMBA', 'CACHACHI');
INSERT INTO "public"."ubigeos" VALUES ('996be281-ffdf-4a13-8c7a-54c1ee02dfee', '060203', 'CAJAMARCA', 'CAJABAMBA', 'CONDEBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('7ac8d6bc-5c4e-4f51-ad80-f857c8af3346', '060204', 'CAJAMARCA', 'CAJABAMBA', 'SITACOCHA');
INSERT INTO "public"."ubigeos" VALUES ('4ce2d9c6-a4ac-42d0-8a47-dff9e75a31c7', '060301', 'CAJAMARCA', 'CELENDIN', 'CELENDIN');
INSERT INTO "public"."ubigeos" VALUES ('9e8d33b6-c191-4210-9702-0068e7d8ecb7', '060302', 'CAJAMARCA', 'CELENDIN', 'CHUMUCH');
INSERT INTO "public"."ubigeos" VALUES ('13978008-b8e3-4db3-b4d0-e4cbd868c515', '060303', 'CAJAMARCA', 'CELENDIN', 'CORTEGANA');
INSERT INTO "public"."ubigeos" VALUES ('4229008d-f2ea-4472-bd1a-193a50aecac3', '060304', 'CAJAMARCA', 'CELENDIN', 'HUASMIN');
INSERT INTO "public"."ubigeos" VALUES ('582777c3-1769-4e8c-ac27-25c4867b8866', '060305', 'CAJAMARCA', 'CELENDIN', 'JORGE CHAVEZ');
INSERT INTO "public"."ubigeos" VALUES ('70ed0c90-b260-491a-895f-9fc37e14244f', '060306', 'CAJAMARCA', 'CELENDIN', 'JOSE GALVEZ');
INSERT INTO "public"."ubigeos" VALUES ('4fd8fdf1-0adc-48e5-8000-06496c2b4343', '060307', 'CAJAMARCA', 'CELENDIN', 'MIGUEL IGLESIAS');
INSERT INTO "public"."ubigeos" VALUES ('0c0b886b-ca5c-41c2-a43a-d03c69a92ecb', '060308', 'CAJAMARCA', 'CELENDIN', 'OXAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('e3aab5b1-cf14-4455-8514-07b2b47fc8b8', '060309', 'CAJAMARCA', 'CELENDIN', 'SOROCHUCO');
INSERT INTO "public"."ubigeos" VALUES ('0aa9d5d5-79a3-4f4b-b0a5-3d6d5d985c90', '060310', 'CAJAMARCA', 'CELENDIN', 'SUCRE');
INSERT INTO "public"."ubigeos" VALUES ('41f03bba-32cb-4ff5-8676-9a243afec6db', '060311', 'CAJAMARCA', 'CELENDIN', 'UTCO');
INSERT INTO "public"."ubigeos" VALUES ('fa9a75c5-303c-4456-a204-a9b8f7c66f6b', '060312', 'CAJAMARCA', 'CELENDIN', 'LA LIBERTAD DE PALLAN');
INSERT INTO "public"."ubigeos" VALUES ('e1a6cc58-0fd0-4a1f-a90a-177a83474050', '060401', 'CAJAMARCA', 'CHOTA', 'CHOTA');
INSERT INTO "public"."ubigeos" VALUES ('cb5b8a09-6d28-4b6e-a04c-17b5a8f86350', '060402', 'CAJAMARCA', 'CHOTA', 'ANGUIA');
INSERT INTO "public"."ubigeos" VALUES ('7374e603-431a-4d49-990c-677fdd05aee4', '060403', 'CAJAMARCA', 'CHOTA', 'CHADIN');
INSERT INTO "public"."ubigeos" VALUES ('55d9b2a4-d555-4061-89c6-bb68e209e431', '060404', 'CAJAMARCA', 'CHOTA', 'CHIGUIRIP');
INSERT INTO "public"."ubigeos" VALUES ('12c4433a-5c60-4e18-9935-424903b84f08', '060405', 'CAJAMARCA', 'CHOTA', 'CHIMBAN');
INSERT INTO "public"."ubigeos" VALUES ('41749978-d64f-4237-a867-fda3d4d6461b', '060406', 'CAJAMARCA', 'CHOTA', 'CHOROPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('b64b4e9a-3fe0-41f9-9862-967e0bbdf129', '060407', 'CAJAMARCA', 'CHOTA', 'COCHABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('5e75a1ec-13cc-463d-9245-051d545d46dc', '060408', 'CAJAMARCA', 'CHOTA', 'CONCHAN');
INSERT INTO "public"."ubigeos" VALUES ('4b95b0ba-35a6-4b5d-87ba-5b33cd7e3803', '060409', 'CAJAMARCA', 'CHOTA', 'HUAMBOS');
INSERT INTO "public"."ubigeos" VALUES ('b06ed619-77f7-4871-8720-818232062073', '060410', 'CAJAMARCA', 'CHOTA', 'LAJAS');
INSERT INTO "public"."ubigeos" VALUES ('014a3d17-c59b-4d65-981c-cf2f5deb0e96', '060411', 'CAJAMARCA', 'CHOTA', 'LLAMA');
INSERT INTO "public"."ubigeos" VALUES ('1332d99d-11d5-4b17-bafa-17a790cb7663', '060412', 'CAJAMARCA', 'CHOTA', 'MIRACOSTA');
INSERT INTO "public"."ubigeos" VALUES ('9d8b604a-78d5-4555-a634-d8c5385af020', '060413', 'CAJAMARCA', 'CHOTA', 'PACCHA');
INSERT INTO "public"."ubigeos" VALUES ('5f8247ec-9171-4382-9308-94c46b4e92aa', '060414', 'CAJAMARCA', 'CHOTA', 'PION');
INSERT INTO "public"."ubigeos" VALUES ('210228b1-1707-435e-863c-51e837c10392', '060415', 'CAJAMARCA', 'CHOTA', 'QUEROCOTO');
INSERT INTO "public"."ubigeos" VALUES ('27daa5f7-b1c6-4a20-bf3a-563999c693f5', '060416', 'CAJAMARCA', 'CHOTA', 'SAN JUAN DE LICUPIS');
INSERT INTO "public"."ubigeos" VALUES ('f9760cfc-a54b-4dc8-ac62-06a3eb9bce68', '060417', 'CAJAMARCA', 'CHOTA', 'TACABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('f1f52b54-7dd3-45dd-97f5-59d4afc0bac5', '060418', 'CAJAMARCA', 'CHOTA', 'TOCMOCHE');
INSERT INTO "public"."ubigeos" VALUES ('a511b22b-c6a1-429d-bf0d-a8034831aefa', '060419', 'CAJAMARCA', 'CHOTA', 'CHALAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('e676b14c-6502-49b2-9ee6-c4eb0b61fbca', '060501', 'CAJAMARCA', 'CONTUMAZA', 'CONTUMAZA');
INSERT INTO "public"."ubigeos" VALUES ('5caee3f2-d1a0-4b04-a428-caef7c926c99', '060502', 'CAJAMARCA', 'CONTUMAZA', 'CHILETE');
INSERT INTO "public"."ubigeos" VALUES ('19044d5a-b080-4983-aaf0-018c44b66d93', '060503', 'CAJAMARCA', 'CONTUMAZA', 'CUPISNIQUE');
INSERT INTO "public"."ubigeos" VALUES ('dc934245-f6f2-4246-9d81-28a78968de18', '060504', 'CAJAMARCA', 'CONTUMAZA', 'GUZMANGO');
INSERT INTO "public"."ubigeos" VALUES ('1a68c494-e622-4a68-847b-4cd19986e580', '060505', 'CAJAMARCA', 'CONTUMAZA', 'SAN BENITO');
INSERT INTO "public"."ubigeos" VALUES ('0b5771cf-a5f1-474f-9b11-e208b9fc8658', '060506', 'CAJAMARCA', 'CONTUMAZA', 'SANTA CRUZ DE TOLED');
INSERT INTO "public"."ubigeos" VALUES ('68b53f55-fb7b-4909-a329-d11a89ef67de', '060507', 'CAJAMARCA', 'CONTUMAZA', 'TANTARICA');
INSERT INTO "public"."ubigeos" VALUES ('5a5d5aba-8a9c-4ecf-89df-dd8b182cb83a', '060508', 'CAJAMARCA', 'CONTUMAZA', 'YONAN');
INSERT INTO "public"."ubigeos" VALUES ('2fb03444-4e67-40d4-a94f-b460bbc52ab3', '060601', 'CAJAMARCA', 'CUTERVO', 'CUTERVO');
INSERT INTO "public"."ubigeos" VALUES ('126a73cb-a146-41c3-bfc7-c141e9439934', '060602', 'CAJAMARCA', 'CUTERVO', 'CALLAYUC');
INSERT INTO "public"."ubigeos" VALUES ('544aa772-dcba-47ec-8638-3c7bb182fbc3', '060603', 'CAJAMARCA', 'CUTERVO', 'CHOROS');
INSERT INTO "public"."ubigeos" VALUES ('c22253aa-399d-407a-a328-f87be29b8b26', '060604', 'CAJAMARCA', 'CUTERVO', 'CUJILLO');
INSERT INTO "public"."ubigeos" VALUES ('b3ecde11-4af3-4d32-834d-860ddaeead72', '060605', 'CAJAMARCA', 'CUTERVO', 'LA RAMADA');
INSERT INTO "public"."ubigeos" VALUES ('75c59b3c-84f8-43c4-8000-75cb4bba994a', '060606', 'CAJAMARCA', 'CUTERVO', 'PIMPINGOS');
INSERT INTO "public"."ubigeos" VALUES ('f99e9dc9-a4d6-4f33-9cef-c54086452652', '060607', 'CAJAMARCA', 'CUTERVO', 'QUEROCOTILLO');
INSERT INTO "public"."ubigeos" VALUES ('bb91b773-2764-4782-b936-3f03ce219bd6', '060608', 'CAJAMARCA', 'CUTERVO', 'SAN ANDRES DE CUTERVO');
INSERT INTO "public"."ubigeos" VALUES ('241d10fd-45d9-4f21-9f37-c210d6feba33', '060609', 'CAJAMARCA', 'CUTERVO', 'SAN JUAN DE CUTERVO');
INSERT INTO "public"."ubigeos" VALUES ('35f5f3c1-f5ca-406b-9175-5f478f3346af', '060610', 'CAJAMARCA', 'CUTERVO', 'SAN LUIS DE LUCMA');
INSERT INTO "public"."ubigeos" VALUES ('e69cd926-45d1-4233-adc4-4256d7ee5902', '060611', 'CAJAMARCA', 'CUTERVO', 'SANTA CRUZ');
INSERT INTO "public"."ubigeos" VALUES ('e1420d54-6022-444f-af8c-30ebcb82ca3f', '060612', 'CAJAMARCA', 'CUTERVO', 'SANTO DOMINGO DE LA CAPILLA');
INSERT INTO "public"."ubigeos" VALUES ('a2beddf7-a4a9-416e-965d-d5f49f2b506e', '060613', 'CAJAMARCA', 'CUTERVO', 'SANTO TOMAS');
INSERT INTO "public"."ubigeos" VALUES ('f4446a31-17ec-4656-bfff-5034b2804f1b', '060614', 'CAJAMARCA', 'CUTERVO', 'SOCOTA');
INSERT INTO "public"."ubigeos" VALUES ('a2df3acc-09ae-4f8a-978c-4b52914e44ed', '060615', 'CAJAMARCA', 'CUTERVO', 'TORIBIO CASANOVA');
INSERT INTO "public"."ubigeos" VALUES ('89d28ed9-b6da-4719-93fa-370e6027783c', '060701', 'CAJAMARCA', 'HUALGAYOC', 'BAMBAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('b0171e33-270c-40dd-82c6-231345e59b7c', '060702', 'CAJAMARCA', 'HUALGAYOC', 'CHUGUR');
INSERT INTO "public"."ubigeos" VALUES ('39f4ac21-c516-4621-859c-91d39dc033be', '060703', 'CAJAMARCA', 'HUALGAYOC', 'HUALGAYOC');
INSERT INTO "public"."ubigeos" VALUES ('b3b991a2-b9ea-484d-94a9-a4fbff649267', '060801', 'CAJAMARCA', 'JAEN', 'JAEN');
INSERT INTO "public"."ubigeos" VALUES ('2d6f0c07-18b3-4db5-81d9-28446af0c504', '060802', 'CAJAMARCA', 'JAEN', 'BELLAVISTA');
INSERT INTO "public"."ubigeos" VALUES ('2ed4791b-a1de-48dc-9551-732ac6c33c93', '060803', 'CAJAMARCA', 'JAEN', 'CHONTALI');
INSERT INTO "public"."ubigeos" VALUES ('6d973ea8-5ff2-4ce1-96dd-c18d2db2886e', '060804', 'CAJAMARCA', 'JAEN', 'COLASAY');
INSERT INTO "public"."ubigeos" VALUES ('af3d88fe-ef11-42e9-8a04-3ab596e1016d', '060805', 'CAJAMARCA', 'JAEN', 'HUABAL');
INSERT INTO "public"."ubigeos" VALUES ('02ae3025-4885-4f8a-a035-6c218d643350', '060806', 'CAJAMARCA', 'JAEN', 'LAS PIRIAS');
INSERT INTO "public"."ubigeos" VALUES ('030757d9-f20f-4032-81b8-1d9da78fb68c', '060807', 'CAJAMARCA', 'JAEN', 'POMAHUACA');
INSERT INTO "public"."ubigeos" VALUES ('be850607-f9a2-4d2e-b644-d8af483d188f', '060808', 'CAJAMARCA', 'JAEN', 'PUCARA');
INSERT INTO "public"."ubigeos" VALUES ('1221f73f-2ece-4f5d-bb6d-48a82caea97b', '060809', 'CAJAMARCA', 'JAEN', 'SALLIQUE');
INSERT INTO "public"."ubigeos" VALUES ('2d8c1e50-ec29-420c-a1b8-c7415dd22687', '060810', 'CAJAMARCA', 'JAEN', 'SAN FELIPE');
INSERT INTO "public"."ubigeos" VALUES ('23cec6f5-e00a-4e32-a294-466161a7da29', '060811', 'CAJAMARCA', 'JAEN', 'SAN JOSE DEL ALTO');
INSERT INTO "public"."ubigeos" VALUES ('3438109a-8001-4b1e-aed5-cd7a1f7f25b7', '060812', 'CAJAMARCA', 'JAEN', 'SANTA ROSA');
INSERT INTO "public"."ubigeos" VALUES ('4aa2b5d8-f44d-4c38-9ad9-359d1f188f26', '060901', 'CAJAMARCA', 'SAN IGNACIO', 'SAN IGNACIO');
INSERT INTO "public"."ubigeos" VALUES ('07ec2552-57e1-45b3-a528-d8d2f6b2c67a', '060902', 'CAJAMARCA', 'SAN IGNACIO', 'CHIRINOS');
INSERT INTO "public"."ubigeos" VALUES ('fb1bd159-2be7-42ea-843d-59dce3622442', '060903', 'CAJAMARCA', 'SAN IGNACIO', 'HUARANGO');
INSERT INTO "public"."ubigeos" VALUES ('be4dfe52-efd4-4c5c-bebb-df5415e02218', '060904', 'CAJAMARCA', 'SAN IGNACIO', 'LA COIPA');
INSERT INTO "public"."ubigeos" VALUES ('8abbf506-3bdd-4ae0-aa81-b56bd245aac7', '060905', 'CAJAMARCA', 'SAN IGNACIO', 'NAMBALLE');
INSERT INTO "public"."ubigeos" VALUES ('752d8b0d-f973-404c-9bc1-493d4df17162', '060906', 'CAJAMARCA', 'SAN IGNACIO', 'SAN JOSE DE LOURDES');
INSERT INTO "public"."ubigeos" VALUES ('33f5c152-4009-4c9a-930a-c21f1abf1fc4', '060907', 'CAJAMARCA', 'SAN IGNACIO', 'TABACONAS');
INSERT INTO "public"."ubigeos" VALUES ('61c8ae2c-cd7c-48f9-b870-a8346cfcabf1', '061001', 'CAJAMARCA', 'SAN MARCOS', 'PEDRO GALVEZ');
INSERT INTO "public"."ubigeos" VALUES ('9b97882b-62f7-4258-b623-7258ce313513', '061002', 'CAJAMARCA', 'SAN MARCOS', 'CHANCAY');
INSERT INTO "public"."ubigeos" VALUES ('f6ac326f-2eb7-4df1-96d2-21841e43826d', '061003', 'CAJAMARCA', 'SAN MARCOS', 'EDUARDO VILLANUEVA');
INSERT INTO "public"."ubigeos" VALUES ('31a23252-515c-470c-83fd-e0b094bd60c8', '061004', 'CAJAMARCA', 'SAN MARCOS', 'GREGORIO PITA');
INSERT INTO "public"."ubigeos" VALUES ('eca70eb9-e1d7-4f13-be4a-e7d372258f7f', '061005', 'CAJAMARCA', 'SAN MARCOS', 'ICHOCAN');
INSERT INTO "public"."ubigeos" VALUES ('4c844017-b457-4443-aee6-889dbce8f764', '061006', 'CAJAMARCA', 'SAN MARCOS', 'JOSE MANUEL QUIROZ');
INSERT INTO "public"."ubigeos" VALUES ('b536d829-c381-4e55-be7d-96e66f965414', '061007', 'CAJAMARCA', 'SAN MARCOS', 'JOSE SABOGAL');
INSERT INTO "public"."ubigeos" VALUES ('1a824f04-9317-4e1f-8b2f-3f29fa793826', '061101', 'CAJAMARCA', 'SAN MIGUEL', 'SAN MIGUEL');
INSERT INTO "public"."ubigeos" VALUES ('5c4900cb-958f-46d5-88f2-ae95ee58d83c', '061102', 'CAJAMARCA', 'SAN MIGUEL', 'BOLIVAR');
INSERT INTO "public"."ubigeos" VALUES ('e440cd37-5230-48fe-a431-54a4096f11ac', '061103', 'CAJAMARCA', 'SAN MIGUEL', 'CALQUIS');
INSERT INTO "public"."ubigeos" VALUES ('42bd34a7-79fb-4db6-a380-fd89bf7334b2', '061104', 'CAJAMARCA', 'SAN MIGUEL', 'CATILLUC');
INSERT INTO "public"."ubigeos" VALUES ('ad393e94-822e-4aae-96b4-9f5a8370cf6c', '061105', 'CAJAMARCA', 'SAN MIGUEL', 'EL PRADO');
INSERT INTO "public"."ubigeos" VALUES ('54b70231-554b-4ceb-b9d8-161a0c8287d0', '061106', 'CAJAMARCA', 'SAN MIGUEL', 'LA FLORIDA');
INSERT INTO "public"."ubigeos" VALUES ('7f43e1d8-9eb6-4f2a-8cee-08734e32cecc', '061107', 'CAJAMARCA', 'SAN MIGUEL', 'LLAPA');
INSERT INTO "public"."ubigeos" VALUES ('fb1a0efd-13a3-4696-8b61-7b4e5a3eb9a9', '061108', 'CAJAMARCA', 'SAN MIGUEL', 'NANCHOC');
INSERT INTO "public"."ubigeos" VALUES ('e1ccfc4f-5985-48cc-a74c-88cca12a48f4', '061109', 'CAJAMARCA', 'SAN MIGUEL', 'NIEPOS');
INSERT INTO "public"."ubigeos" VALUES ('f82e17f2-95b8-490e-a670-32d98c17a36e', '061110', 'CAJAMARCA', 'SAN MIGUEL', 'SAN GREGORIO');
INSERT INTO "public"."ubigeos" VALUES ('8cea360e-9702-4934-9249-f8d02d3213b5', '061111', 'CAJAMARCA', 'SAN MIGUEL', 'SAN SILVESTRE DE COCHAN');
INSERT INTO "public"."ubigeos" VALUES ('785b8a28-9d0f-4e29-915b-9e8e69de7792', '061112', 'CAJAMARCA', 'SAN MIGUEL', 'TONGOD');
INSERT INTO "public"."ubigeos" VALUES ('9b4ecc2a-3cf5-4942-a5d0-d8130312d91b', '061113', 'CAJAMARCA', 'SAN MIGUEL', 'UNION AGUA BLANCA');
INSERT INTO "public"."ubigeos" VALUES ('916e17d9-8cf9-40b0-8220-4e81d0d384c0', '061201', 'CAJAMARCA', 'SAN PABLO', 'SAN PABLO');
INSERT INTO "public"."ubigeos" VALUES ('25039edc-88a9-47b2-9e5b-97cd3f844987', '061202', 'CAJAMARCA', 'SAN PABLO', 'SAN BERNARDINO');
INSERT INTO "public"."ubigeos" VALUES ('29e6bd40-3a46-4b15-b3ac-9cc931de2d3c', '061203', 'CAJAMARCA', 'SAN PABLO', 'SAN LUIS');
INSERT INTO "public"."ubigeos" VALUES ('1e550958-8b63-4509-b2d1-67349c52a619', '061204', 'CAJAMARCA', 'SAN PABLO', 'TUMBADEN');
INSERT INTO "public"."ubigeos" VALUES ('a06beb65-ed73-4f64-83a5-a2007c52ad3b', '061301', 'CAJAMARCA', 'SANTA CRUZ', 'SANTA CRUZ');
INSERT INTO "public"."ubigeos" VALUES ('9497bd30-c369-4fd8-95f1-3d9cc6b64b4a', '061302', 'CAJAMARCA', 'SANTA CRUZ', 'ANDABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('99ba82e1-6d1f-4351-b6b2-4980bd93e577', '061303', 'CAJAMARCA', 'SANTA CRUZ', 'CATACHE');
INSERT INTO "public"."ubigeos" VALUES ('f91c45b1-bc29-4d11-94a2-915e3a0d059d', '061304', 'CAJAMARCA', 'SANTA CRUZ', 'CHANCAYBAÑOS');
INSERT INTO "public"."ubigeos" VALUES ('7cbd74f6-78b2-4f9f-9945-026fa4ba6437', '061305', 'CAJAMARCA', 'SANTA CRUZ', 'LA ESPERANZA');
INSERT INTO "public"."ubigeos" VALUES ('645a198d-1c56-4e21-9985-e7e6eb7b8ef7', '061306', 'CAJAMARCA', 'SANTA CRUZ', 'NINABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('7af64470-052d-48d3-841a-2ab83a2a444a', '061307', 'CAJAMARCA', 'SANTA CRUZ', 'PULAN');
INSERT INTO "public"."ubigeos" VALUES ('bd46ec4b-11a8-475b-94a8-5b68598661d2', '061308', 'CAJAMARCA', 'SANTA CRUZ', 'SAUCEPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('5fbc29b4-f278-41e9-8a81-dfa3dc4c39e7', '061309', 'CAJAMARCA', 'SANTA CRUZ', 'SEXI');
INSERT INTO "public"."ubigeos" VALUES ('995ac0aa-bc75-4e5c-ba9d-755d19c61794', '061310', 'CAJAMARCA', 'SANTA CRUZ', 'UTICYACU');
INSERT INTO "public"."ubigeos" VALUES ('80eb5a9d-b9ca-4cdb-9808-cf8fb87451b8', '061311', 'CAJAMARCA', 'SANTA CRUZ', 'YAUYUCAN');
INSERT INTO "public"."ubigeos" VALUES ('4a5a34c6-f7fd-42f3-a31b-3ff0bd09fd43', '070101', 'CALLAO', 'CALLAO', 'CALLAO');
INSERT INTO "public"."ubigeos" VALUES ('770d8b22-6b78-4f57-a280-e5724bcef224', '070102', 'CALLAO', 'CALLAO', 'BELLAVISTA');
INSERT INTO "public"."ubigeos" VALUES ('93e08750-cf89-4542-abb3-5671a7565af1', '070103', 'CALLAO', 'CALLAO', 'CARMEN DE LA LEGUA REYNOSO');
INSERT INTO "public"."ubigeos" VALUES ('7450b75d-50b1-4404-85a7-7a0dc0fafc27', '070104', 'CALLAO', 'CALLAO', 'LA PERLA');
INSERT INTO "public"."ubigeos" VALUES ('be2a5513-cd0d-45c9-9ac4-e9c185e5ae79', '070105', 'CALLAO', 'CALLAO', 'LA PUNTA');
INSERT INTO "public"."ubigeos" VALUES ('63481006-79a2-4957-9110-960000375091', '070106', 'CALLAO', 'CALLAO', 'VENTANILLA');
INSERT INTO "public"."ubigeos" VALUES ('423056b2-48e4-4021-8a73-54113396c6df', '070107', 'CALLAO', 'CALLAO', 'MI PERU');
INSERT INTO "public"."ubigeos" VALUES ('6aada6c2-d3eb-4f2f-9893-9b3e657f1f47', '080101', 'CUSCO', 'CUSCO', 'CUSCO');
INSERT INTO "public"."ubigeos" VALUES ('0e7628e2-1025-48d9-9598-5117d09df5c6', '080102', 'CUSCO', 'CUSCO', 'CCORCA');
INSERT INTO "public"."ubigeos" VALUES ('5249b2e2-6d46-4837-a86d-af1f35d5dbdf', '080103', 'CUSCO', 'CUSCO', 'POROY');
INSERT INTO "public"."ubigeos" VALUES ('6c6a8b2e-24c4-48ca-99cd-ea20076052d4', '080104', 'CUSCO', 'CUSCO', 'SAN JERONIMO');
INSERT INTO "public"."ubigeos" VALUES ('f034b40e-31ad-469f-b089-bb41f44337e5', '080105', 'CUSCO', 'CUSCO', 'SAN SEBASTIAN');
INSERT INTO "public"."ubigeos" VALUES ('fc6a36da-798e-410f-92a6-1d5704681394', '080106', 'CUSCO', 'CUSCO', 'SANTIAGO');
INSERT INTO "public"."ubigeos" VALUES ('7c26a40a-7e61-4c0e-9411-0427538bfc8b', '080107', 'CUSCO', 'CUSCO', 'SAYLLA');
INSERT INTO "public"."ubigeos" VALUES ('7fdc83e1-cea8-41bd-957d-be1977159aa5', '080108', 'CUSCO', 'CUSCO', 'WANCHAQ');
INSERT INTO "public"."ubigeos" VALUES ('e311d4e4-93c9-4777-909c-dbf1df807cef', '080201', 'CUSCO', 'ACOMAYO', 'ACOMAYO');
INSERT INTO "public"."ubigeos" VALUES ('4747e599-8e14-4226-91df-41f890adfbe8', '080202', 'CUSCO', 'ACOMAYO', 'ACOPIA');
INSERT INTO "public"."ubigeos" VALUES ('426c7a0c-77fc-44e7-9569-3de666204736', '080203', 'CUSCO', 'ACOMAYO', 'ACOS');
INSERT INTO "public"."ubigeos" VALUES ('4c7dd4c6-8e8a-4df6-9806-60d3713a2ecb', '080204', 'CUSCO', 'ACOMAYO', 'MOSOC LLACTA');
INSERT INTO "public"."ubigeos" VALUES ('01a2c5d5-e5de-4213-809c-936616aebfde', '080205', 'CUSCO', 'ACOMAYO', 'POMACANCHI');
INSERT INTO "public"."ubigeos" VALUES ('044e69af-9353-4859-ad81-3ae1f2a0c1fc', '080206', 'CUSCO', 'ACOMAYO', 'RONDOCAN');
INSERT INTO "public"."ubigeos" VALUES ('b2399f6c-12db-47e3-af1e-8ebdf5f5c1f4', '080207', 'CUSCO', 'ACOMAYO', 'SANGARARA');
INSERT INTO "public"."ubigeos" VALUES ('b2cbfc72-b1e4-4a2c-bc77-5550b092645c', '080301', 'CUSCO', 'ANTA', 'ANTA');
INSERT INTO "public"."ubigeos" VALUES ('41ff0ede-b8ca-4926-961a-7da8da254db0', '080302', 'CUSCO', 'ANTA', 'ANCAHUASI');
INSERT INTO "public"."ubigeos" VALUES ('99dc63de-3d08-41cf-bee0-964a6add42c2', '080303', 'CUSCO', 'ANTA', 'CACHIMAYO');
INSERT INTO "public"."ubigeos" VALUES ('070d3cc2-6c4f-460d-a565-c5a6f7d2a804', '080304', 'CUSCO', 'ANTA', 'CHINCHAYPUJIO');
INSERT INTO "public"."ubigeos" VALUES ('6de957ec-a767-43da-950d-b1ff462f1526', '080305', 'CUSCO', 'ANTA', 'HUAROCONDO');
INSERT INTO "public"."ubigeos" VALUES ('02187dc7-854e-4351-ad98-6953337963f9', '080306', 'CUSCO', 'ANTA', 'LIMATAMBO');
INSERT INTO "public"."ubigeos" VALUES ('3dcd4d9d-fe1f-458c-ae90-20d1cf781c90', '080307', 'CUSCO', 'ANTA', 'MOLLEPATA');
INSERT INTO "public"."ubigeos" VALUES ('5e2fbe38-8134-422d-bdf3-8271506a2e1b', '080308', 'CUSCO', 'ANTA', 'PUCYURA');
INSERT INTO "public"."ubigeos" VALUES ('613d2b6a-24e7-4a1f-aee4-f16511964505', '080309', 'CUSCO', 'ANTA', 'ZURITE');
INSERT INTO "public"."ubigeos" VALUES ('41804fe6-385c-4308-9cb3-2624eefedcb9', '080401', 'CUSCO', 'CALCA', 'CALCA');
INSERT INTO "public"."ubigeos" VALUES ('92a662a1-ea3f-46c5-a6f5-e1229e4fcfba', '080402', 'CUSCO', 'CALCA', 'COYA');
INSERT INTO "public"."ubigeos" VALUES ('c197142e-f3aa-495c-8d55-55d71f4cda6e', '080403', 'CUSCO', 'CALCA', 'LAMAY');
INSERT INTO "public"."ubigeos" VALUES ('f09d613d-8974-4a2a-8a2e-a60a1fcaa8c0', '080404', 'CUSCO', 'CALCA', 'LARES');
INSERT INTO "public"."ubigeos" VALUES ('4fbe44ea-15d0-4e24-9f78-cfd05694b54e', '080405', 'CUSCO', 'CALCA', 'PISAC');
INSERT INTO "public"."ubigeos" VALUES ('2990d2ff-9910-4d28-9dc3-13e9c6f5c249', '080406', 'CUSCO', 'CALCA', 'SAN SALVADOR');
INSERT INTO "public"."ubigeos" VALUES ('efbe0d80-7cc3-4f5b-afe6-cec9eda1c4b4', '080407', 'CUSCO', 'CALCA', 'TARAY');
INSERT INTO "public"."ubigeos" VALUES ('59db99d9-d3bb-48e8-8a90-87a00dc08920', '080408', 'CUSCO', 'CALCA', 'YANATILE');
INSERT INTO "public"."ubigeos" VALUES ('f8ab5682-b371-43c9-b321-4b0f8564fd5d', '080501', 'CUSCO', 'CANAS', 'YANAOCA');
INSERT INTO "public"."ubigeos" VALUES ('c48970d5-b8a8-4f05-a9fb-eeb47b69d71a', '080502', 'CUSCO', 'CANAS', 'CHECCA');
INSERT INTO "public"."ubigeos" VALUES ('ce6dee41-1d44-4acf-9cb6-841f9d439346', '080503', 'CUSCO', 'CANAS', 'KUNTURKANKI');
INSERT INTO "public"."ubigeos" VALUES ('fd40df0b-2445-4e55-95ed-480e5f0dbd38', '080504', 'CUSCO', 'CANAS', 'LANGUI');
INSERT INTO "public"."ubigeos" VALUES ('5fdf2106-a706-4c4d-9063-96a43145cc42', '080505', 'CUSCO', 'CANAS', 'LAYO');
INSERT INTO "public"."ubigeos" VALUES ('7bbea60b-56bf-4c1d-9e81-79bac72fb2f3', '080506', 'CUSCO', 'CANAS', 'PAMPAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('8b191bf9-effa-4a81-8776-a09780802549', '080507', 'CUSCO', 'CANAS', 'QUEHUE');
INSERT INTO "public"."ubigeos" VALUES ('cf989268-d36f-4251-8b56-9f8c77af1711', '080508', 'CUSCO', 'CANAS', 'TUPAC AMARU');
INSERT INTO "public"."ubigeos" VALUES ('f85597f4-f91f-4def-bf04-d8d50ecdeaa9', '080601', 'CUSCO', 'CANCHIS', 'SICUANI');
INSERT INTO "public"."ubigeos" VALUES ('c3194aac-8424-4b70-bfee-08848954160c', '080602', 'CUSCO', 'CANCHIS', 'CHECACUPE');
INSERT INTO "public"."ubigeos" VALUES ('de4a26b7-682f-4307-b1d3-022a244cc7a1', '080603', 'CUSCO', 'CANCHIS', 'COMBAPATA');
INSERT INTO "public"."ubigeos" VALUES ('f2722ab7-9ab9-48d0-8ee6-fb3c44ff45b1', '080604', 'CUSCO', 'CANCHIS', 'MARANGANI');
INSERT INTO "public"."ubigeos" VALUES ('a4df0ea0-0b14-4c77-8daa-d1d1c70effd7', '080605', 'CUSCO', 'CANCHIS', 'PITUMARCA');
INSERT INTO "public"."ubigeos" VALUES ('f1e80ca8-8dd6-4586-bc50-40fd4b5df67e', '080606', 'CUSCO', 'CANCHIS', 'SAN PABLO');
INSERT INTO "public"."ubigeos" VALUES ('59ffced5-a8e6-4140-b780-c399e1bd3a72', '080607', 'CUSCO', 'CANCHIS', 'SAN PEDRO');
INSERT INTO "public"."ubigeos" VALUES ('7d3c160a-c39c-4747-8dd7-6488b85c79c7', '080608', 'CUSCO', 'CANCHIS', 'TINTA');
INSERT INTO "public"."ubigeos" VALUES ('a30cf0ea-65d9-4f03-996c-435ed6e2eeef', '080701', 'CUSCO', 'CHUMBIVILCAS', 'SANTO TOMAS');
INSERT INTO "public"."ubigeos" VALUES ('c4c31b09-bf07-4fa4-9c8b-e283b34c6be8', '080702', 'CUSCO', 'CHUMBIVILCAS', 'CAPACMARCA');
INSERT INTO "public"."ubigeos" VALUES ('9b654e21-1994-4d93-a60e-b4f1295acc0f', '080703', 'CUSCO', 'CHUMBIVILCAS', 'CHAMACA');
INSERT INTO "public"."ubigeos" VALUES ('7881baac-6f4c-423d-b74c-afaf9e3f1141', '080704', 'CUSCO', 'CHUMBIVILCAS', 'COLQUEMARCA');
INSERT INTO "public"."ubigeos" VALUES ('6e9b466e-6242-496a-b461-58c0d67a0adc', '080705', 'CUSCO', 'CHUMBIVILCAS', 'LIVITACA');
INSERT INTO "public"."ubigeos" VALUES ('c8194812-4ad4-49d6-a730-a4e87a0350c2', '080706', 'CUSCO', 'CHUMBIVILCAS', 'LLUSCO');
INSERT INTO "public"."ubigeos" VALUES ('3c256242-7656-47bb-a6df-c3e6a6b9af7b', '080707', 'CUSCO', 'CHUMBIVILCAS', 'QUIÑOTA');
INSERT INTO "public"."ubigeos" VALUES ('db039cca-df0f-41ec-b4c6-d8a47ee866cd', '080708', 'CUSCO', 'CHUMBIVILCAS', 'VELILLE');
INSERT INTO "public"."ubigeos" VALUES ('efeaea29-bcc7-4316-965e-e6dab818174d', '080801', 'CUSCO', 'ESPINAR', 'ESPINAR');
INSERT INTO "public"."ubigeos" VALUES ('3183b43f-934d-4a9f-97a1-20f52936afa7', '080802', 'CUSCO', 'ESPINAR', 'CONDOROMA');
INSERT INTO "public"."ubigeos" VALUES ('40060cea-78cf-4d82-bcb3-a999e29775cf', '080803', 'CUSCO', 'ESPINAR', 'COPORAQUE');
INSERT INTO "public"."ubigeos" VALUES ('9032d0f2-abbb-424d-b9b3-60fd885872e7', '080804', 'CUSCO', 'ESPINAR', 'OCORURO');
INSERT INTO "public"."ubigeos" VALUES ('a52dd62e-e320-4527-816d-d053bcca631b', '080805', 'CUSCO', 'ESPINAR', 'PALLPATA');
INSERT INTO "public"."ubigeos" VALUES ('5daaf901-30c5-45dc-9a63-9ae4ee6f1cd1', '080806', 'CUSCO', 'ESPINAR', 'PICHIGUA');
INSERT INTO "public"."ubigeos" VALUES ('0fc6ae05-5cb9-4d6b-8c77-f6b3817f8d87', '080807', 'CUSCO', 'ESPINAR', 'SUYCKUTAMBO');
INSERT INTO "public"."ubigeos" VALUES ('32d6a2c9-c1ca-4107-a644-a26edb95f35e', '080808', 'CUSCO', 'ESPINAR', 'ALTO PICHIGUA');
INSERT INTO "public"."ubigeos" VALUES ('159c0420-684a-4794-b5a3-7ade188f0c06', '080901', 'CUSCO', 'LA CONVENCION', 'SANTA ANA');
INSERT INTO "public"."ubigeos" VALUES ('ef7f7b81-dbe9-4897-a3f8-8cda316559de', '080902', 'CUSCO', 'LA CONVENCION', 'ECHARATE');
INSERT INTO "public"."ubigeos" VALUES ('32683555-b4d2-4cc4-acda-0555eed701e9', '080903', 'CUSCO', 'LA CONVENCION', 'HUAYOPATA');
INSERT INTO "public"."ubigeos" VALUES ('49da7773-58cc-4f65-993d-351e29eee257', '080904', 'CUSCO', 'LA CONVENCION', 'MARANURA');
INSERT INTO "public"."ubigeos" VALUES ('8710d1d8-ec66-4f9a-824d-3db7e23f02d3', '080905', 'CUSCO', 'LA CONVENCION', 'OCOBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('0926d6f8-99ae-4556-a8f9-9f6b1067edc6', '080906', 'CUSCO', 'LA CONVENCION', 'QUELLOUNO');
INSERT INTO "public"."ubigeos" VALUES ('91438b79-8499-491a-afeb-2915b094e5eb', '080907', 'CUSCO', 'LA CONVENCION', 'KIMBIRI');
INSERT INTO "public"."ubigeos" VALUES ('e3ab2c4b-73b6-41e2-b1d1-7a2ad32ffbde', '080908', 'CUSCO', 'LA CONVENCION', 'SANTA TERESA');
INSERT INTO "public"."ubigeos" VALUES ('efbf020a-c4d6-483e-91d9-44e8cd0c1bd9', '080909', 'CUSCO', 'LA CONVENCION', 'VILCABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('47b2a836-8571-4cf9-b47c-0e977dafe9c1', '080910', 'CUSCO', 'LA CONVENCION', 'PICHARI');
INSERT INTO "public"."ubigeos" VALUES ('059ef1b6-3d41-4cfc-bf69-c282475cd4b9', '080911', 'CUSCO', 'LA CONVENCION', 'INKAWASI');
INSERT INTO "public"."ubigeos" VALUES ('326bd99e-0d2f-4bad-85eb-492e5665cb53', '080912', 'CUSCO', 'LA CONVENCION', 'VILLA VIRGEN');
INSERT INTO "public"."ubigeos" VALUES ('01770ab2-ee84-48f9-99e4-7b2565c7b6c0', '080913', 'CUSCO', 'LA CONVENCION', 'VILLA KINTIARINA');
INSERT INTO "public"."ubigeos" VALUES ('73da4efc-4c16-4b14-8a9e-8acafb4b358d', '080914', 'CUSCO', 'LA CONVENCION', 'MEGANTONI');
INSERT INTO "public"."ubigeos" VALUES ('c0a4acea-ff0f-4d5a-9465-1b00eb737583', '080915', 'CUSCO', 'LA CONVENCION', 'KUMPIRUSHIATO');
INSERT INTO "public"."ubigeos" VALUES ('1518d5c3-b2ce-49ba-89a1-981cc32bf723', '080916', 'CUSCO', 'LA CONVENCION', 'CIELO PUNCO');
INSERT INTO "public"."ubigeos" VALUES ('8bb561fa-26cb-48b9-97b3-41b16577ab32', '080917', 'CUSCO', 'LA CONVENCION', 'MANITEA');
INSERT INTO "public"."ubigeos" VALUES ('25e83b53-8ce4-48ed-9335-67546ef20215', '080918', 'CUSCO', 'LA CONVENCION', 'UNION ASHANINKA');
INSERT INTO "public"."ubigeos" VALUES ('80069477-e020-4ed9-85bb-ab556ce0f73c', '081001', 'CUSCO', 'PARURO', 'PARURO');
INSERT INTO "public"."ubigeos" VALUES ('8790434f-26e6-4192-bf58-c4a632696bd7', '081002', 'CUSCO', 'PARURO', 'ACCHA');
INSERT INTO "public"."ubigeos" VALUES ('b01f2567-073c-4b09-9b2b-5515e5729e29', '081003', 'CUSCO', 'PARURO', 'CCAPI');
INSERT INTO "public"."ubigeos" VALUES ('5ae04bd8-b553-45f4-ac9c-adedfdf78fb5', '081004', 'CUSCO', 'PARURO', 'COLCHA');
INSERT INTO "public"."ubigeos" VALUES ('320e130a-7362-4f6d-996e-ea6d67e8fb21', '081005', 'CUSCO', 'PARURO', 'HUANOQUITE');
INSERT INTO "public"."ubigeos" VALUES ('14bc51a3-efc8-405a-8f4b-8c7e2959e313', '081006', 'CUSCO', 'PARURO', 'OMACHA');
INSERT INTO "public"."ubigeos" VALUES ('b5d8d74d-7223-4f8e-a31f-13054a467487', '081007', 'CUSCO', 'PARURO', 'PACCARITAMBO');
INSERT INTO "public"."ubigeos" VALUES ('86853626-bf21-465f-89de-463427dc3784', '081008', 'CUSCO', 'PARURO', 'PILLPINTO');
INSERT INTO "public"."ubigeos" VALUES ('467c3bfc-cd4f-491c-962e-68ddf63ce840', '081009', 'CUSCO', 'PARURO', 'YAURISQUE');
INSERT INTO "public"."ubigeos" VALUES ('b6f751cd-3eab-439f-8233-60994e8f6bd8', '081101', 'CUSCO', 'PAUCARTAMBO', 'PAUCARTAMBO');
INSERT INTO "public"."ubigeos" VALUES ('a7582a7d-280b-4034-8c46-47b52fff7761', '081102', 'CUSCO', 'PAUCARTAMBO', 'CAICAY');
INSERT INTO "public"."ubigeos" VALUES ('c3b27883-0d58-4910-a8a5-3f1a9e695080', '081103', 'CUSCO', 'PAUCARTAMBO', 'CHALLABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('9ef8d192-d841-4ff8-9aff-1055c7f67050', '081104', 'CUSCO', 'PAUCARTAMBO', 'COLQUEPATA');
INSERT INTO "public"."ubigeos" VALUES ('4ed7b532-f6c9-4223-89a1-6b7a1ccf2e6f', '081105', 'CUSCO', 'PAUCARTAMBO', 'HUANCARANI');
INSERT INTO "public"."ubigeos" VALUES ('08c73795-39d4-4529-87ac-eabdde48b29c', '081106', 'CUSCO', 'PAUCARTAMBO', 'KOSÑIPATA');
INSERT INTO "public"."ubigeos" VALUES ('916de5a5-8b4f-49b7-aac5-3feaf7864470', '081201', 'CUSCO', 'QUISPICANCHI', 'URCOS');
INSERT INTO "public"."ubigeos" VALUES ('c80fd09b-2cc8-4e89-8125-d5644427932e', '081202', 'CUSCO', 'QUISPICANCHI', 'ANDAHUAYLILLAS');
INSERT INTO "public"."ubigeos" VALUES ('59e16aef-d6a1-49c2-a75c-7345e81ef958', '081203', 'CUSCO', 'QUISPICANCHI', 'CAMANTI');
INSERT INTO "public"."ubigeos" VALUES ('939484ac-43a2-4465-a92d-24da5a8f8989', '081204', 'CUSCO', 'QUISPICANCHI', 'CCARHUAYO');
INSERT INTO "public"."ubigeos" VALUES ('374b05d7-c4a8-4f9d-b4e0-ec7a024271ae', '081205', 'CUSCO', 'QUISPICANCHI', 'CCATCA');
INSERT INTO "public"."ubigeos" VALUES ('0fab14f4-966e-4458-a5bb-bf99a28aabb3', '081206', 'CUSCO', 'QUISPICANCHI', 'CUSIPATA');
INSERT INTO "public"."ubigeos" VALUES ('5cd18ce2-c720-4280-845c-eee3151649b6', '081207', 'CUSCO', 'QUISPICANCHI', 'HUARO');
INSERT INTO "public"."ubigeos" VALUES ('b149cf54-399d-41db-a280-7010b1c1714e', '081208', 'CUSCO', 'QUISPICANCHI', 'LUCRE');
INSERT INTO "public"."ubigeos" VALUES ('e310c4e8-93ae-4e50-a3b7-afcf74d0aa60', '081209', 'CUSCO', 'QUISPICANCHI', 'MARCAPATA');
INSERT INTO "public"."ubigeos" VALUES ('5f5d1213-a68f-4c3d-9feb-ee7c798de8d9', '081210', 'CUSCO', 'QUISPICANCHI', 'OCONGATE');
INSERT INTO "public"."ubigeos" VALUES ('99185d32-8c85-4237-bad7-5ef5077177b3', '081211', 'CUSCO', 'QUISPICANCHI', 'OROPESA');
INSERT INTO "public"."ubigeos" VALUES ('7adda727-2d17-4292-9bf6-d36c85fb16c5', '081212', 'CUSCO', 'QUISPICANCHI', 'QUIQUIJANA');
INSERT INTO "public"."ubigeos" VALUES ('40d6019b-411a-490c-877b-656f95f7cc3b', '081301', 'CUSCO', 'URUBAMBA', 'URUBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('aae43470-33f9-4de1-973d-9e2112f29912', '081302', 'CUSCO', 'URUBAMBA', 'CHINCHERO');
INSERT INTO "public"."ubigeos" VALUES ('cffbf176-d77f-4c4e-8790-f3f64ca64dad', '081303', 'CUSCO', 'URUBAMBA', 'HUAYLLABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('2581650d-592a-47c8-ab65-6f7c5e2e398d', '081304', 'CUSCO', 'URUBAMBA', 'MACHUPICCHU');
INSERT INTO "public"."ubigeos" VALUES ('536d8e31-dbf2-429b-ad75-05365e6b7f8e', '081305', 'CUSCO', 'URUBAMBA', 'MARAS');
INSERT INTO "public"."ubigeos" VALUES ('38c532ce-6dde-42e2-bf99-fcb566c8671f', '081306', 'CUSCO', 'URUBAMBA', 'OLLANTAYTAMBO');
INSERT INTO "public"."ubigeos" VALUES ('a9965539-7330-416b-911c-ebd54430dc90', '081307', 'CUSCO', 'URUBAMBA', 'YUCAY');
INSERT INTO "public"."ubigeos" VALUES ('39d246ff-e69c-4774-885c-3f93d0ac773c', '090101', 'HUANCAVELICA', 'HUANCAVELICA', 'HUANCAVELICA');
INSERT INTO "public"."ubigeos" VALUES ('77df767b-4889-44f6-b6a7-1d7c4bcfea70', '090102', 'HUANCAVELICA', 'HUANCAVELICA', 'ACOBAMBILLA');
INSERT INTO "public"."ubigeos" VALUES ('484581ce-4eb3-42d1-9b61-5bc8c51747c7', '090103', 'HUANCAVELICA', 'HUANCAVELICA', 'ACORIA');
INSERT INTO "public"."ubigeos" VALUES ('744e9811-9006-432b-bf53-79a223a425f6', '090104', 'HUANCAVELICA', 'HUANCAVELICA', 'CONAYCA');
INSERT INTO "public"."ubigeos" VALUES ('cdc3c8b4-2782-4b06-ad1b-d75209d58437', '090105', 'HUANCAVELICA', 'HUANCAVELICA', 'CUENCA');
INSERT INTO "public"."ubigeos" VALUES ('eac528fd-3147-4481-a7a2-8da4d2b5e56e', '090106', 'HUANCAVELICA', 'HUANCAVELICA', 'HUACHOCOLPA');
INSERT INTO "public"."ubigeos" VALUES ('ad202398-6543-4e7b-a233-a485a86c2ba5', '090107', 'HUANCAVELICA', 'HUANCAVELICA', 'HUAYLLAHUARA');
INSERT INTO "public"."ubigeos" VALUES ('0fb505cc-7b0f-4f83-9e24-7e80c293631f', '090108', 'HUANCAVELICA', 'HUANCAVELICA', 'IZCUCHACA');
INSERT INTO "public"."ubigeos" VALUES ('5e41bc09-22f7-47c2-86d1-9182045103ec', '090109', 'HUANCAVELICA', 'HUANCAVELICA', 'LARIA');
INSERT INTO "public"."ubigeos" VALUES ('714525cc-5339-4e33-bf3e-89d9ad916038', '090110', 'HUANCAVELICA', 'HUANCAVELICA', 'MANTA');
INSERT INTO "public"."ubigeos" VALUES ('8421d1d3-e3c9-4e7e-a5e5-c4865210525e', '090111', 'HUANCAVELICA', 'HUANCAVELICA', 'MARISCAL CACERES');
INSERT INTO "public"."ubigeos" VALUES ('900d3282-4b9f-41af-beab-a27091e89f63', '090112', 'HUANCAVELICA', 'HUANCAVELICA', 'MOYA');
INSERT INTO "public"."ubigeos" VALUES ('47a9f1d1-4c5c-4f42-b8fc-c57442840e6b', '090113', 'HUANCAVELICA', 'HUANCAVELICA', 'NUEVO OCCORO');
INSERT INTO "public"."ubigeos" VALUES ('457c1071-3b2a-4d0d-932f-e4dc22b6d209', '090114', 'HUANCAVELICA', 'HUANCAVELICA', 'PALCA');
INSERT INTO "public"."ubigeos" VALUES ('061f34e6-336e-4ad3-b0a4-f8c53e4c1d06', '090115', 'HUANCAVELICA', 'HUANCAVELICA', 'PILCHACA');
INSERT INTO "public"."ubigeos" VALUES ('8b26c724-a50b-47b0-87ab-c512134b7baf', '090116', 'HUANCAVELICA', 'HUANCAVELICA', 'VILCA');
INSERT INTO "public"."ubigeos" VALUES ('d1f870ee-7349-4bdd-9861-fa2d2b3bb450', '090117', 'HUANCAVELICA', 'HUANCAVELICA', 'YAULI');
INSERT INTO "public"."ubigeos" VALUES ('ab0af237-9fc3-4911-86b0-8f443c54425b', '090118', 'HUANCAVELICA', 'HUANCAVELICA', 'ASCENSION');
INSERT INTO "public"."ubigeos" VALUES ('e597c24b-39b2-4361-8c65-5543ad08e867', '090119', 'HUANCAVELICA', 'HUANCAVELICA', 'HUANDO');
INSERT INTO "public"."ubigeos" VALUES ('5237eeb3-a3e8-479c-9c4a-8fecaec454f5', '090201', 'HUANCAVELICA', 'ACOBAMBA', 'ACOBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('c589eb83-957b-4762-a7f6-9db3ec85f1b7', '090202', 'HUANCAVELICA', 'ACOBAMBA', 'ANDABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('a6f68438-d827-4bc2-96c0-505795ff48a4', '090203', 'HUANCAVELICA', 'ACOBAMBA', 'ANTA');
INSERT INTO "public"."ubigeos" VALUES ('a3845a4b-97b9-4b55-bf29-981f4850cf8d', '090204', 'HUANCAVELICA', 'ACOBAMBA', 'CAJA');
INSERT INTO "public"."ubigeos" VALUES ('0f1eab4d-07a5-491d-9fc0-aef5702b7dd8', '090205', 'HUANCAVELICA', 'ACOBAMBA', 'MARCAS');
INSERT INTO "public"."ubigeos" VALUES ('04ddd867-9c63-42a6-ad6d-a5647eeb4e8b', '090206', 'HUANCAVELICA', 'ACOBAMBA', 'PAUCARA');
INSERT INTO "public"."ubigeos" VALUES ('573ab230-955f-4d8b-b162-eb44364ae2de', '090207', 'HUANCAVELICA', 'ACOBAMBA', 'POMACOCHA');
INSERT INTO "public"."ubigeos" VALUES ('13525bca-b76a-437c-b25f-d7d99d7b182e', '090208', 'HUANCAVELICA', 'ACOBAMBA', 'ROSARIO');
INSERT INTO "public"."ubigeos" VALUES ('a14ab798-86df-4e91-bc5e-7172b7952749', '090301', 'HUANCAVELICA', 'ANGARAES', 'LIRCAY');
INSERT INTO "public"."ubigeos" VALUES ('ef073d12-a6d6-4eaf-aaaf-e8c42f04dd6c', '090302', 'HUANCAVELICA', 'ANGARAES', 'ANCHONGA');
INSERT INTO "public"."ubigeos" VALUES ('fa4e9b46-ec33-458f-918f-0a354278d59b', '090303', 'HUANCAVELICA', 'ANGARAES', 'CALLANMARCA');
INSERT INTO "public"."ubigeos" VALUES ('b90866a6-a54a-4724-8889-1c2b3d476e1c', '090304', 'HUANCAVELICA', 'ANGARAES', 'CCOCHACCASA');
INSERT INTO "public"."ubigeos" VALUES ('8e02ea30-b2ef-42ad-94ae-8dee844696ca', '090305', 'HUANCAVELICA', 'ANGARAES', 'CHINCHO');
INSERT INTO "public"."ubigeos" VALUES ('c2b16ffe-15b5-4fc1-bd52-c9242af330df', '090306', 'HUANCAVELICA', 'ANGARAES', 'CONGALLA');
INSERT INTO "public"."ubigeos" VALUES ('67073769-f9f9-4923-a24a-4d3475d961ef', '090307', 'HUANCAVELICA', 'ANGARAES', 'HUANCA-HUANCA');
INSERT INTO "public"."ubigeos" VALUES ('0976a9ee-08db-471a-9fa2-31779abcf583', '090308', 'HUANCAVELICA', 'ANGARAES', 'HUAYLLAY GRANDE');
INSERT INTO "public"."ubigeos" VALUES ('9c892f15-abca-4405-899f-b60f56d0e9a0', '090309', 'HUANCAVELICA', 'ANGARAES', 'JULCAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('9ecb4f31-c6ee-4b80-92e3-65e504a48738', '090310', 'HUANCAVELICA', 'ANGARAES', 'SAN ANTONIO DE ANTAPARCO');
INSERT INTO "public"."ubigeos" VALUES ('903b8d3f-b8b0-425e-beca-e496d1782c90', '090311', 'HUANCAVELICA', 'ANGARAES', 'SANTO TOMAS DE PATA');
INSERT INTO "public"."ubigeos" VALUES ('9e16f7e0-89b7-4cd7-a35c-f7f265b76c4d', '090312', 'HUANCAVELICA', 'ANGARAES', 'SECCLLA');
INSERT INTO "public"."ubigeos" VALUES ('e72997ab-6fab-4774-9bba-ef5c72fc3e23', '090401', 'HUANCAVELICA', 'CASTROVIRREYNA', 'CASTROVIRREYNA');
INSERT INTO "public"."ubigeos" VALUES ('ea339b0d-1cd5-44a4-acb7-0e8e2fdab108', '090402', 'HUANCAVELICA', 'CASTROVIRREYNA', 'ARMA');
INSERT INTO "public"."ubigeos" VALUES ('f51c5618-b2bc-4228-a41a-9cd67b045c0e', '120407', 'JUNIN', 'JAUJA', 'EL MANTARO');
INSERT INTO "public"."ubigeos" VALUES ('ab328587-3ffa-4a20-9b29-8751277b7841', '090403', 'HUANCAVELICA', 'CASTROVIRREYNA', 'AURAHUA');
INSERT INTO "public"."ubigeos" VALUES ('f9e98d71-a1c0-42da-b800-bcac7fa8d8e0', '090404', 'HUANCAVELICA', 'CASTROVIRREYNA', 'CAPILLAS');
INSERT INTO "public"."ubigeos" VALUES ('704a774a-6a6c-444b-8f86-457d9f8e30b2', '090405', 'HUANCAVELICA', 'CASTROVIRREYNA', 'CHUPAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('6719cfea-fba7-48d0-9829-cc0d25d435e1', '090406', 'HUANCAVELICA', 'CASTROVIRREYNA', 'COCAS');
INSERT INTO "public"."ubigeos" VALUES ('c8baa4b4-b4f2-4515-9dad-78657a2fa720', '090407', 'HUANCAVELICA', 'CASTROVIRREYNA', 'HUACHOS');
INSERT INTO "public"."ubigeos" VALUES ('32ed681b-8a84-4f48-a36d-b206a574a2a5', '090408', 'HUANCAVELICA', 'CASTROVIRREYNA', 'HUAMATAMBO');
INSERT INTO "public"."ubigeos" VALUES ('c6be1571-8a48-456e-8624-7488d3527cf3', '090409', 'HUANCAVELICA', 'CASTROVIRREYNA', 'MOLLEPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('e7c6483c-bf54-4104-b728-4732079b5e54', '090410', 'HUANCAVELICA', 'CASTROVIRREYNA', 'SAN JUAN');
INSERT INTO "public"."ubigeos" VALUES ('c4cb61b1-f4c5-4bac-93f6-2158a47271c7', '090411', 'HUANCAVELICA', 'CASTROVIRREYNA', 'SANTA ANA');
INSERT INTO "public"."ubigeos" VALUES ('3bc3ed01-263b-40dd-9282-392ae63456c8', '090412', 'HUANCAVELICA', 'CASTROVIRREYNA', 'TANTARA');
INSERT INTO "public"."ubigeos" VALUES ('a1098fd5-2787-4ba6-b7f1-120892d95efc', '090413', 'HUANCAVELICA', 'CASTROVIRREYNA', 'TICRAPO');
INSERT INTO "public"."ubigeos" VALUES ('a1850a05-fc97-41ff-83c1-ae5db00efeb8', '090501', 'HUANCAVELICA', 'CHURCAMPA', 'CHURCAMPA');
INSERT INTO "public"."ubigeos" VALUES ('d58e6f08-dc9a-4933-b6ce-aaa035aed36b', '090502', 'HUANCAVELICA', 'CHURCAMPA', 'ANCO');
INSERT INTO "public"."ubigeos" VALUES ('73214bf3-2139-44ff-94ea-61030d1a20ad', '090503', 'HUANCAVELICA', 'CHURCAMPA', 'CHINCHIHUASI');
INSERT INTO "public"."ubigeos" VALUES ('b45ce337-abee-4e7e-a557-8034910ebcf9', '090504', 'HUANCAVELICA', 'CHURCAMPA', 'EL CARMEN');
INSERT INTO "public"."ubigeos" VALUES ('cc857c3f-8caf-4aed-bd99-2021f5d0eb8a', '090505', 'HUANCAVELICA', 'CHURCAMPA', 'LA MERCED');
INSERT INTO "public"."ubigeos" VALUES ('9403719a-280e-411e-8b77-c5ea861c66ff', '090506', 'HUANCAVELICA', 'CHURCAMPA', 'LOCROJA');
INSERT INTO "public"."ubigeos" VALUES ('b78ac556-f2a6-4ae8-8c90-811b4f4fae61', '090507', 'HUANCAVELICA', 'CHURCAMPA', 'PAUCARBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('a485f9cd-8b72-403d-90f0-b5db4abac8fc', '090508', 'HUANCAVELICA', 'CHURCAMPA', 'SAN MIGUEL DE MAYOCC');
INSERT INTO "public"."ubigeos" VALUES ('b7d8eff9-d215-4011-bb1b-33a0c47909a5', '090509', 'HUANCAVELICA', 'CHURCAMPA', 'SAN PEDRO DE CORIS');
INSERT INTO "public"."ubigeos" VALUES ('02ff81dc-b83f-4a41-9d66-d7eabce981a0', '090510', 'HUANCAVELICA', 'CHURCAMPA', 'PACHAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('5038735a-cc5c-430a-b003-173546115d8b', '090511', 'HUANCAVELICA', 'CHURCAMPA', 'COSME');
INSERT INTO "public"."ubigeos" VALUES ('8022d6c1-6110-4adc-b403-b894aed3830c', '090601', 'HUANCAVELICA', 'HUAYTARA', 'HUAYTARA');
INSERT INTO "public"."ubigeos" VALUES ('d9317919-ff90-4ef7-bb18-a677295a93b4', '090602', 'HUANCAVELICA', 'HUAYTARA', 'AYAVI');
INSERT INTO "public"."ubigeos" VALUES ('bd9b6fde-7bb7-4a13-962d-79d1ec3d908b', '090603', 'HUANCAVELICA', 'HUAYTARA', 'CORDOVA');
INSERT INTO "public"."ubigeos" VALUES ('984d45d5-2f91-4d18-bb4a-da1c08f7f196', '090604', 'HUANCAVELICA', 'HUAYTARA', 'HUAYACUNDO ARMA');
INSERT INTO "public"."ubigeos" VALUES ('72770184-d18b-4c3e-98be-6a375ce5861c', '090605', 'HUANCAVELICA', 'HUAYTARA', 'LARAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('6d9f7d1e-5894-43a3-89bc-56b6aa5a1585', '090606', 'HUANCAVELICA', 'HUAYTARA', 'OCOYO');
INSERT INTO "public"."ubigeos" VALUES ('c04bac1a-72ef-43f5-867c-df6080bda9ab', '090607', 'HUANCAVELICA', 'HUAYTARA', 'PILPICHACA');
INSERT INTO "public"."ubigeos" VALUES ('77740e9b-c5ce-4be7-ba40-673ff0e2ffa7', '090608', 'HUANCAVELICA', 'HUAYTARA', 'QUERCO');
INSERT INTO "public"."ubigeos" VALUES ('b07f6f1a-b0f2-4f58-bb38-2e66112ac611', '090609', 'HUANCAVELICA', 'HUAYTARA', 'QUITO-ARMA');
INSERT INTO "public"."ubigeos" VALUES ('be01e3ca-155f-4d9c-bb82-d4a596d953b1', '090610', 'HUANCAVELICA', 'HUAYTARA', 'SAN ANTONIO DE CUSICANCHA');
INSERT INTO "public"."ubigeos" VALUES ('fb0f9587-4965-42c8-adec-73cc30dac2de', '090611', 'HUANCAVELICA', 'HUAYTARA', 'SAN FRANCISCO DE SANGAYAICO');
INSERT INTO "public"."ubigeos" VALUES ('c1b9e128-8731-49a4-8407-99b3ba46f00e', '090612', 'HUANCAVELICA', 'HUAYTARA', 'SAN ISIDRO');
INSERT INTO "public"."ubigeos" VALUES ('932e4286-7b1c-4673-9f44-d0293390635f', '090613', 'HUANCAVELICA', 'HUAYTARA', 'SANTIAGO DE CHOCORVOS');
INSERT INTO "public"."ubigeos" VALUES ('ab220dc8-790c-401c-aff2-1df0a21cc860', '090614', 'HUANCAVELICA', 'HUAYTARA', 'SANTIAGO DE QUIRAHUARA');
INSERT INTO "public"."ubigeos" VALUES ('66d3940e-afed-4b12-8cda-eda2bd3fb82d', '090615', 'HUANCAVELICA', 'HUAYTARA', 'SANTO DOMINGO DE CAPILLAS');
INSERT INTO "public"."ubigeos" VALUES ('95e697f8-ddbe-4ec9-8693-dfa195e52852', '090616', 'HUANCAVELICA', 'HUAYTARA', 'TAMBO');
INSERT INTO "public"."ubigeos" VALUES ('039a865b-b700-46ce-88e6-52161265576b', '090701', 'HUANCAVELICA', 'TAYACAJA', 'PAMPAS');
INSERT INTO "public"."ubigeos" VALUES ('fa48fc96-1d6c-44bd-b560-daaef222f0fe', '090702', 'HUANCAVELICA', 'TAYACAJA', 'ACOSTAMBO');
INSERT INTO "public"."ubigeos" VALUES ('5961cf3a-c910-4b63-8eca-5b6785cac866', '090703', 'HUANCAVELICA', 'TAYACAJA', 'ACRAQUIA');
INSERT INTO "public"."ubigeos" VALUES ('2bed4e50-923a-46ba-bd88-090b5c70ff56', '090704', 'HUANCAVELICA', 'TAYACAJA', 'AHUAYCHA');
INSERT INTO "public"."ubigeos" VALUES ('5ba8e775-d39a-4e12-a196-738e2d74e4e8', '090705', 'HUANCAVELICA', 'TAYACAJA', 'COLCABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('f7e6a737-6963-483c-8135-8df4873708bf', '090706', 'HUANCAVELICA', 'TAYACAJA', 'DANIEL HERNANDEZ');
INSERT INTO "public"."ubigeos" VALUES ('a7ad25dc-9d1c-46dd-9a82-9d70acf1c806', '090707', 'HUANCAVELICA', 'TAYACAJA', 'HUACHOCOLPA');
INSERT INTO "public"."ubigeos" VALUES ('df92ad2a-6dec-41a7-a7cb-094002c47c45', '090709', 'HUANCAVELICA', 'TAYACAJA', 'HUARIBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('0731650d-5969-4d2b-86ac-4408ca52e775', '090710', 'HUANCAVELICA', 'TAYACAJA', 'ÑAHUIMPUQUIO');
INSERT INTO "public"."ubigeos" VALUES ('5a544ff3-c183-4a9b-bb88-59c9afe2d647', '090711', 'HUANCAVELICA', 'TAYACAJA', 'PAZOS');
INSERT INTO "public"."ubigeos" VALUES ('496de1f5-d9b1-44f9-8bc9-f05dab20a59a', '090713', 'HUANCAVELICA', 'TAYACAJA', 'QUISHUAR');
INSERT INTO "public"."ubigeos" VALUES ('41c96d90-d359-41da-8b34-5921fa1fdef8', '090714', 'HUANCAVELICA', 'TAYACAJA', 'SALCABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('560c32b7-f1f5-4550-8bf4-7dbfe4c3f1ff', '090715', 'HUANCAVELICA', 'TAYACAJA', 'SALCAHUASI');
INSERT INTO "public"."ubigeos" VALUES ('7a3508ae-a1b7-4c2c-976d-d1e218a28492', '090716', 'HUANCAVELICA', 'TAYACAJA', 'SAN MARCOS DE ROCCHAC');
INSERT INTO "public"."ubigeos" VALUES ('14e941d5-2f52-4f61-af4d-1dc2a035fba7', '090717', 'HUANCAVELICA', 'TAYACAJA', 'SURCUBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('50e6e4c2-ce08-4453-ae2e-ff97c79c76de', '090718', 'HUANCAVELICA', 'TAYACAJA', 'TINTAY PUNCU');
INSERT INTO "public"."ubigeos" VALUES ('71931600-676c-4fc8-8cdf-e01be600cbc8', '090719', 'HUANCAVELICA', 'TAYACAJA', 'QUICHUAS');
INSERT INTO "public"."ubigeos" VALUES ('7f290e70-30d7-47b8-ae18-8ce70419c6f5', '090720', 'HUANCAVELICA', 'TAYACAJA', 'ANDAYMARCA');
INSERT INTO "public"."ubigeos" VALUES ('c94cf317-3381-4ddc-8c01-d8f7c1167841', '090721', 'HUANCAVELICA', 'TAYACAJA', 'ROBLE');
INSERT INTO "public"."ubigeos" VALUES ('3d967fbd-a5c2-4e7d-ba43-c22980390931', '090722', 'HUANCAVELICA', 'TAYACAJA', 'PICHOS');
INSERT INTO "public"."ubigeos" VALUES ('9198d8a6-fa33-4bd7-b350-cd2387cf9e5e', '090723', 'HUANCAVELICA', 'TAYACAJA', 'SANTIAGO DE TUCUMA');
INSERT INTO "public"."ubigeos" VALUES ('0868ef6a-c2c2-4a8f-b5fa-bce3b08a41e5', '090724', 'HUANCAVELICA', 'TAYACAJA', 'LAMBRAS');
INSERT INTO "public"."ubigeos" VALUES ('dac28626-3f5e-494f-911d-a57f0f087a3e', '090725', 'HUANCAVELICA', 'TAYACAJA', 'COCHABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('9558f027-f477-427d-a1ef-6ea3315a6bd1', '100101', 'HUANUCO', 'HUANUCO', 'HUANUCO');
INSERT INTO "public"."ubigeos" VALUES ('e5b472c7-fb17-47a9-818b-b4cd61204f83', '100102', 'HUANUCO', 'HUANUCO', 'AMARILIS');
INSERT INTO "public"."ubigeos" VALUES ('440dc5ba-1a64-45b2-8304-0e4fb7e215d5', '100103', 'HUANUCO', 'HUANUCO', 'CHINCHAO');
INSERT INTO "public"."ubigeos" VALUES ('5fada723-40b2-47a9-abc5-7b4ffee9eaee', '100104', 'HUANUCO', 'HUANUCO', 'CHURUBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('dda0498c-785f-4c48-a243-e1e28c93a1de', '100105', 'HUANUCO', 'HUANUCO', 'MARGOS');
INSERT INTO "public"."ubigeos" VALUES ('fa3e4951-7c5b-435e-a1c4-afecdd7299d7', '100106', 'HUANUCO', 'HUANUCO', 'QUISQUI (KICHKI)');
INSERT INTO "public"."ubigeos" VALUES ('4992bb0d-f642-46e3-b7fe-f73a0ec44b63', '100107', 'HUANUCO', 'HUANUCO', 'SAN FRANCISCO DE CAYRAN');
INSERT INTO "public"."ubigeos" VALUES ('a4708b8f-d880-4c16-95fd-a4e9a2d75899', '100108', 'HUANUCO', 'HUANUCO', 'SAN PEDRO DE CHAULAN');
INSERT INTO "public"."ubigeos" VALUES ('614b8302-4f9c-4716-9c18-43d85c2769e9', '100109', 'HUANUCO', 'HUANUCO', 'SANTA MARIA DEL VALLE');
INSERT INTO "public"."ubigeos" VALUES ('3110f722-0d3c-4957-af0a-85c564af2efe', '100110', 'HUANUCO', 'HUANUCO', 'YARUMAYO');
INSERT INTO "public"."ubigeos" VALUES ('7577c345-5f54-4ace-9010-417baa396cfd', '100111', 'HUANUCO', 'HUANUCO', 'PILLCO MARCA');
INSERT INTO "public"."ubigeos" VALUES ('5b87c0f3-ad70-4ca3-b5df-3d254017a535', '100112', 'HUANUCO', 'HUANUCO', 'YACUS');
INSERT INTO "public"."ubigeos" VALUES ('8021148f-9783-4347-b712-90609e30be00', '100113', 'HUANUCO', 'HUANUCO', 'SAN PABLO DE PILLAO');
INSERT INTO "public"."ubigeos" VALUES ('25668403-2a1e-49d2-a41a-862218b52ad9', '100201', 'HUANUCO', 'AMBO', 'AMBO');
INSERT INTO "public"."ubigeos" VALUES ('e20468b3-908d-4ccf-9257-5cff34785968', '100202', 'HUANUCO', 'AMBO', 'CAYNA');
INSERT INTO "public"."ubigeos" VALUES ('ef59d637-bd4b-4a5c-b86f-3b9782919b2d', '100203', 'HUANUCO', 'AMBO', 'COLPAS');
INSERT INTO "public"."ubigeos" VALUES ('0e52cd2e-1092-43da-be16-63d563109db4', '100204', 'HUANUCO', 'AMBO', 'CONCHAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('725d5334-e849-40d5-b8aa-b9af07ba04ad', '100205', 'HUANUCO', 'AMBO', 'HUACAR');
INSERT INTO "public"."ubigeos" VALUES ('066c4079-0eac-4343-b2c1-64879b622021', '100206', 'HUANUCO', 'AMBO', 'SAN FRANCISCO');
INSERT INTO "public"."ubigeos" VALUES ('39eac08b-9eeb-462b-8a38-c538e075b174', '100207', 'HUANUCO', 'AMBO', 'SAN RAFAEL');
INSERT INTO "public"."ubigeos" VALUES ('f90f34c9-95c3-492a-9603-78fd1317f064', '100208', 'HUANUCO', 'AMBO', 'TOMAY KICHWA');
INSERT INTO "public"."ubigeos" VALUES ('37e4c9b2-c3eb-4523-a59d-fd88db65d051', '100301', 'HUANUCO', 'DOS DE MAYO', 'LA UNION');
INSERT INTO "public"."ubigeos" VALUES ('dd34f235-1bec-434b-98b9-cec8aa102e0d', '100307', 'HUANUCO', 'DOS DE MAYO', 'CHUQUIS');
INSERT INTO "public"."ubigeos" VALUES ('bf7b3a83-4c69-4962-a4a0-c707685a315f', '100311', 'HUANUCO', 'DOS DE MAYO', 'MARIAS');
INSERT INTO "public"."ubigeos" VALUES ('3d917155-abdd-4812-91ed-cdc3235d7da3', '100313', 'HUANUCO', 'DOS DE MAYO', 'PACHAS');
INSERT INTO "public"."ubigeos" VALUES ('53739ced-7e39-4b3c-b4e4-4dde9b25f87e', '100316', 'HUANUCO', 'DOS DE MAYO', 'QUIVILLA');
INSERT INTO "public"."ubigeos" VALUES ('39fd6bad-2434-447d-8520-781c24e57e3d', '100317', 'HUANUCO', 'DOS DE MAYO', 'RIPAN');
INSERT INTO "public"."ubigeos" VALUES ('3500af5f-774c-4e06-b93b-3dd02da5191d', '100321', 'HUANUCO', 'DOS DE MAYO', 'SHUNQUI');
INSERT INTO "public"."ubigeos" VALUES ('421e53eb-45e1-4af2-b38d-478a4183323d', '100322', 'HUANUCO', 'DOS DE MAYO', 'SILLAPATA');
INSERT INTO "public"."ubigeos" VALUES ('699b7810-2c9a-4eb4-98f4-aea2fca41581', '100323', 'HUANUCO', 'DOS DE MAYO', 'YANAS');
INSERT INTO "public"."ubigeos" VALUES ('809793fa-a16c-47bd-9e23-8438ad237261', '100401', 'HUANUCO', 'HUACAYBAMBA', 'HUACAYBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('f9c6ac78-2362-44d9-bfdf-3aabdb9f9230', '100402', 'HUANUCO', 'HUACAYBAMBA', 'CANCHABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('3b800325-ee3c-46d4-8d12-8057d6b5aeba', '100403', 'HUANUCO', 'HUACAYBAMBA', 'COCHABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('e3fdc82b-95d7-49c0-98c5-f452aedef467', '100404', 'HUANUCO', 'HUACAYBAMBA', 'PINRA');
INSERT INTO "public"."ubigeos" VALUES ('9d3ebf40-bbd7-497c-baea-564204476dca', '100501', 'HUANUCO', 'HUAMALIES', 'LLATA');
INSERT INTO "public"."ubigeos" VALUES ('197bb101-f309-4c5a-aee4-a02e3f6f18d9', '100502', 'HUANUCO', 'HUAMALIES', 'ARANCAY');
INSERT INTO "public"."ubigeos" VALUES ('5f41d2c6-1c80-41d2-adaf-61af6eee0faa', '100503', 'HUANUCO', 'HUAMALIES', 'CHAVIN DE PARIARCA');
INSERT INTO "public"."ubigeos" VALUES ('ad843b83-66c0-4b21-a76c-ba8a4b716d1a', '100504', 'HUANUCO', 'HUAMALIES', 'JACAS GRANDE');
INSERT INTO "public"."ubigeos" VALUES ('57a0fc30-e649-4165-b96c-a0901d7c3841', '100505', 'HUANUCO', 'HUAMALIES', 'JIRCAN');
INSERT INTO "public"."ubigeos" VALUES ('ff113996-82f7-4083-9cdd-b5fc62197302', '100506', 'HUANUCO', 'HUAMALIES', 'MIRAFLORES');
INSERT INTO "public"."ubigeos" VALUES ('0ebefe70-9037-4cbe-a052-ad9ebfe14239', '100507', 'HUANUCO', 'HUAMALIES', 'MONZON');
INSERT INTO "public"."ubigeos" VALUES ('6b348842-3432-40b6-abbf-2c71eba36f7b', '100508', 'HUANUCO', 'HUAMALIES', 'PUNCHAO');
INSERT INTO "public"."ubigeos" VALUES ('bc27671f-de28-45e8-88c4-f5bfb9f7b120', '100509', 'HUANUCO', 'HUAMALIES', 'PUÑOS');
INSERT INTO "public"."ubigeos" VALUES ('2d09670c-0e70-47e7-a3df-67a1adb61e21', '100510', 'HUANUCO', 'HUAMALIES', 'SINGA');
INSERT INTO "public"."ubigeos" VALUES ('0434baca-0787-4e0e-a65f-4a3c9bd6fbc7', '100511', 'HUANUCO', 'HUAMALIES', 'TANTAMAYO');
INSERT INTO "public"."ubigeos" VALUES ('a675d6f6-152a-409f-a0ee-c3f730d9ad83', '100601', 'HUANUCO', 'LEONCIO PRADO', 'RUPA-RUPA');
INSERT INTO "public"."ubigeos" VALUES ('457f58e7-bd96-48ee-96ed-726024c20451', '100602', 'HUANUCO', 'LEONCIO PRADO', 'DANIEL ALOMIA ROBLES');
INSERT INTO "public"."ubigeos" VALUES ('b12b4bc8-92ce-4730-a5b6-34d44ce5f0e1', '100603', 'HUANUCO', 'LEONCIO PRADO', 'HERMILIO VALDIZAN');
INSERT INTO "public"."ubigeos" VALUES ('a63827b9-fcd0-446d-be46-2ac979c57c37', '100604', 'HUANUCO', 'LEONCIO PRADO', 'JOSE CRESPO Y CASTILLO');
INSERT INTO "public"."ubigeos" VALUES ('f4eb8da9-d1ad-4ce8-8145-137da368121b', '100605', 'HUANUCO', 'LEONCIO PRADO', 'LUYANDO');
INSERT INTO "public"."ubigeos" VALUES ('b1d9f058-c0b9-4b1b-aa58-940994a91fa0', '100606', 'HUANUCO', 'LEONCIO PRADO', 'MARIANO DAMASO BERAUN');
INSERT INTO "public"."ubigeos" VALUES ('e12647e0-64a6-4c8b-a0ca-1df2d298fcc0', '100607', 'HUANUCO', 'LEONCIO PRADO', 'PUCAYACU');
INSERT INTO "public"."ubigeos" VALUES ('18491ac9-486d-477a-91fe-938f8a52911d', '100608', 'HUANUCO', 'LEONCIO PRADO', 'CASTILLO GRANDE');
INSERT INTO "public"."ubigeos" VALUES ('d5adecc4-fc4f-4c13-ad34-f8777bf8051a', '100609', 'HUANUCO', 'LEONCIO PRADO', 'PUEBLO NUEVO');
INSERT INTO "public"."ubigeos" VALUES ('d405c2c8-9fdd-42ea-832f-818bbd640c79', '120408', 'JUNIN', 'JAUJA', 'HUAMALI');
INSERT INTO "public"."ubigeos" VALUES ('08a76d39-e359-4b4b-aab4-8384a682b02c', '100610', 'HUANUCO', 'LEONCIO PRADO', 'SANTO DOMINGO DE ANDA');
INSERT INTO "public"."ubigeos" VALUES ('fb27ff18-4f33-49a0-8f0a-361039a0cfce', '100701', 'HUANUCO', 'MARAÑON', 'HUACRACHUCO');
INSERT INTO "public"."ubigeos" VALUES ('c452615b-74cd-4d2f-bab5-cd8857d5c313', '100702', 'HUANUCO', 'MARAÑON', 'CHOLON');
INSERT INTO "public"."ubigeos" VALUES ('3f58cd0a-72b8-45e7-9d70-ad5dda954f96', '100703', 'HUANUCO', 'MARAÑON', 'SAN BUENAVENTURA');
INSERT INTO "public"."ubigeos" VALUES ('252f3b3a-3f24-4a9f-b346-c30b330b7621', '100704', 'HUANUCO', 'MARAÑON', 'LA MORADA');
INSERT INTO "public"."ubigeos" VALUES ('75a10468-a165-46cc-b297-373e48dd799f', '100705', 'HUANUCO', 'MARAÑON', 'SANTA ROSA DE ALTO YANAJANCA');
INSERT INTO "public"."ubigeos" VALUES ('d20c9b0b-d6dd-4b59-801a-6a6243016fdf', '100801', 'HUANUCO', 'PACHITEA', 'PANAO');
INSERT INTO "public"."ubigeos" VALUES ('e4ef4daa-1236-4eaa-81a0-2ae2d6aeaa38', '100802', 'HUANUCO', 'PACHITEA', 'CHAGLLA');
INSERT INTO "public"."ubigeos" VALUES ('f1448487-3c5c-4497-b56c-fdfc72f0b2d1', '100803', 'HUANUCO', 'PACHITEA', 'MOLINO');
INSERT INTO "public"."ubigeos" VALUES ('279d74b2-0c36-4447-9834-f8fdfdaa4d1f', '100804', 'HUANUCO', 'PACHITEA', 'UMARI');
INSERT INTO "public"."ubigeos" VALUES ('01123edb-f050-4553-9505-6bcbe0d6b185', '100901', 'HUANUCO', 'PUERTO INCA', 'PUERTO INCA');
INSERT INTO "public"."ubigeos" VALUES ('19094caa-72c4-4b00-9276-e00d7d9a65af', '100902', 'HUANUCO', 'PUERTO INCA', 'CODO DEL POZUZO');
INSERT INTO "public"."ubigeos" VALUES ('e3ebe072-b2e9-42c0-bdd2-e43ed9f1a1d3', '100903', 'HUANUCO', 'PUERTO INCA', 'HONORIA');
INSERT INTO "public"."ubigeos" VALUES ('4c3959e6-b3dd-4020-b9bf-714d94abdae6', '100904', 'HUANUCO', 'PUERTO INCA', 'TOURNAVISTA');
INSERT INTO "public"."ubigeos" VALUES ('eee90612-f113-448d-9f3d-d9a58f5fd32d', '100905', 'HUANUCO', 'PUERTO INCA', 'YUYAPICHIS');
INSERT INTO "public"."ubigeos" VALUES ('6db40ca2-3eb0-473a-9415-bc6a80d3d95b', '101001', 'HUANUCO', 'LAURICOCHA', 'JESUS');
INSERT INTO "public"."ubigeos" VALUES ('b127e286-dacb-4b5f-b42a-1d568bf806e3', '101002', 'HUANUCO', 'LAURICOCHA', 'BAÑOS');
INSERT INTO "public"."ubigeos" VALUES ('09038e3b-609e-408f-b30c-dc9e339b5680', '101003', 'HUANUCO', 'LAURICOCHA', 'JIVIA');
INSERT INTO "public"."ubigeos" VALUES ('2b095013-a438-458d-a56b-573ad45cf494', '101004', 'HUANUCO', 'LAURICOCHA', 'QUEROPALCA');
INSERT INTO "public"."ubigeos" VALUES ('256aee78-14ba-4242-add1-3497c4cbdd4a', '101005', 'HUANUCO', 'LAURICOCHA', 'RONDOS');
INSERT INTO "public"."ubigeos" VALUES ('5d1d5c8f-955b-44aa-bd4d-ba4b169235f5', '101006', 'HUANUCO', 'LAURICOCHA', 'SAN FRANCISCO DE ASIS');
INSERT INTO "public"."ubigeos" VALUES ('c296e8b8-160d-4807-89ea-bba267efba86', '101007', 'HUANUCO', 'LAURICOCHA', 'SAN MIGUEL DE CAURI');
INSERT INTO "public"."ubigeos" VALUES ('ed92b22d-1764-4963-9c1b-41ecec92395e', '101101', 'HUANUCO', 'YAROWILCA', 'CHAVINILLO');
INSERT INTO "public"."ubigeos" VALUES ('80a01aec-048a-4c20-ad7c-66d3a28ae1b1', '101102', 'HUANUCO', 'YAROWILCA', 'CAHUAC');
INSERT INTO "public"."ubigeos" VALUES ('9dbf9f5a-4078-4dc1-b44c-743b27a5cbb9', '101103', 'HUANUCO', 'YAROWILCA', 'CHACABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('d436ea71-1ca7-45dd-a301-59b8a7b3c11e', '101104', 'HUANUCO', 'YAROWILCA', 'APARICIO POMARES');
INSERT INTO "public"."ubigeos" VALUES ('0804a35c-ea2c-4893-a52f-77ecfc9724eb', '101105', 'HUANUCO', 'YAROWILCA', 'JACAS CHICO');
INSERT INTO "public"."ubigeos" VALUES ('55c0a3f1-a48e-4f0f-aeea-ac3fe1814a85', '101106', 'HUANUCO', 'YAROWILCA', 'OBAS');
INSERT INTO "public"."ubigeos" VALUES ('a4a7938e-eb34-4f15-a4d2-77ff1a83be0f', '101107', 'HUANUCO', 'YAROWILCA', 'PAMPAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('d51a2c25-a4f4-4d13-af94-d7d52bf27461', '101108', 'HUANUCO', 'YAROWILCA', 'CHORAS');
INSERT INTO "public"."ubigeos" VALUES ('c08ba794-4bda-49e8-b09b-3f21f2439ac2', '110101', 'ICA', 'ICA', 'ICA');
INSERT INTO "public"."ubigeos" VALUES ('61241b99-66d6-4f5a-acef-bd0ad50e3576', '110102', 'ICA', 'ICA', 'LA TINGUIÑA');
INSERT INTO "public"."ubigeos" VALUES ('5e755b21-c85b-4bc4-96f0-86b547f60273', '110103', 'ICA', 'ICA', 'LOS AQUIJES');
INSERT INTO "public"."ubigeos" VALUES ('3a7d37b1-c0d1-4d39-9e95-e2ad82fcc544', '110104', 'ICA', 'ICA', 'OCUCAJE');
INSERT INTO "public"."ubigeos" VALUES ('0253cb8e-1943-4d7e-855f-1f54c8a5d431', '110105', 'ICA', 'ICA', 'PACHACUTEC');
INSERT INTO "public"."ubigeos" VALUES ('7f7945db-e4f0-4f6e-82f9-9ea70d40a0ff', '110106', 'ICA', 'ICA', 'PARCONA');
INSERT INTO "public"."ubigeos" VALUES ('fbc21897-e72a-4936-b678-c0bf2d4a3f04', '110107', 'ICA', 'ICA', 'PUEBLO NUEVO');
INSERT INTO "public"."ubigeos" VALUES ('c1d89eca-2b8a-494a-8c32-4f7a9bcc9adf', '110108', 'ICA', 'ICA', 'SALAS');
INSERT INTO "public"."ubigeos" VALUES ('34f5cf53-4ea2-4ade-9f6c-4862ab71dc8c', '110109', 'ICA', 'ICA', 'SAN JOSE DE LOS MOLINOS');
INSERT INTO "public"."ubigeos" VALUES ('16e9c282-075d-4c86-b333-453ee6f647d5', '110110', 'ICA', 'ICA', 'SAN JUAN BAUTISTA');
INSERT INTO "public"."ubigeos" VALUES ('34df8c3c-2e3f-4c64-8a1d-57764efb68f8', '110111', 'ICA', 'ICA', 'SANTIAGO');
INSERT INTO "public"."ubigeos" VALUES ('10d447be-ea73-456e-a67b-cfbc94884d8c', '110112', 'ICA', 'ICA', 'SUBTANJALLA');
INSERT INTO "public"."ubigeos" VALUES ('0f34ab21-ad4b-4b3e-ad25-50dcb5788773', '110113', 'ICA', 'ICA', 'TATE');
INSERT INTO "public"."ubigeos" VALUES ('4d44dc72-87ba-4527-8884-ed6f07ee638a', '110114', 'ICA', 'ICA', 'YAUCA DEL ROSARIO');
INSERT INTO "public"."ubigeos" VALUES ('009375fe-e133-4bb0-9232-4dc74bd1d315', '110201', 'ICA', 'CHINCHA', 'CHINCHA ALTA');
INSERT INTO "public"."ubigeos" VALUES ('dc09bd0c-1e36-49f2-888b-0ec3d432d639', '110202', 'ICA', 'CHINCHA', 'ALTO LARAN');
INSERT INTO "public"."ubigeos" VALUES ('9a00ec28-4c5b-4453-b4df-041b2f0616ba', '110203', 'ICA', 'CHINCHA', 'CHAVIN');
INSERT INTO "public"."ubigeos" VALUES ('b2e19a1f-958d-47a2-a46a-38290165f71a', '110204', 'ICA', 'CHINCHA', 'CHINCHA BAJA');
INSERT INTO "public"."ubigeos" VALUES ('4d65946f-30df-4820-b50b-018be5a49b99', '110205', 'ICA', 'CHINCHA', 'EL CARMEN');
INSERT INTO "public"."ubigeos" VALUES ('7c831246-6146-46cf-92ac-680fdbebadaf', '110206', 'ICA', 'CHINCHA', 'GROCIO PRADO');
INSERT INTO "public"."ubigeos" VALUES ('fac93501-6961-4b5c-bff4-787642126298', '110207', 'ICA', 'CHINCHA', 'PUEBLO NUEVO');
INSERT INTO "public"."ubigeos" VALUES ('8d444b6f-d3d2-4543-a3fd-9c4e46dea2dc', '110208', 'ICA', 'CHINCHA', 'SAN JUAN DE YANAC');
INSERT INTO "public"."ubigeos" VALUES ('b9babd81-3916-4d66-8f73-25403f58b8e7', '110209', 'ICA', 'CHINCHA', 'SAN PEDRO DE HUACARPANA');
INSERT INTO "public"."ubigeos" VALUES ('73f27c86-6be2-496a-99a4-d32858fd4c12', '110210', 'ICA', 'CHINCHA', 'SUNAMPE');
INSERT INTO "public"."ubigeos" VALUES ('66355dd2-0e1e-4c7e-bb04-590598a80fc3', '110211', 'ICA', 'CHINCHA', 'TAMBO DE MORA');
INSERT INTO "public"."ubigeos" VALUES ('f8dab084-ac07-47f1-9daa-18408dec1d8a', '110301', 'ICA', 'NASCA', 'NASCA');
INSERT INTO "public"."ubigeos" VALUES ('4a108189-d607-4995-8819-e67861957c9b', '110302', 'ICA', 'NASCA', 'CHANGUILLO');
INSERT INTO "public"."ubigeos" VALUES ('63f3d80d-4ae9-4872-91c8-2f3195f6796c', '110303', 'ICA', 'NASCA', 'EL INGENIO');
INSERT INTO "public"."ubigeos" VALUES ('9ea110f4-4b84-4010-ba65-ca3b11707932', '110304', 'ICA', 'NASCA', 'MARCONA');
INSERT INTO "public"."ubigeos" VALUES ('4ffe40ea-6896-4ba8-a01d-46df976e1bab', '110305', 'ICA', 'NASCA', 'VISTA ALEGRE');
INSERT INTO "public"."ubigeos" VALUES ('366232d1-95cf-474e-ba9f-73e7ca99e878', '110401', 'ICA', 'PALPA', 'PALPA');
INSERT INTO "public"."ubigeos" VALUES ('8d05e062-9892-4002-b9fc-a5b376535ed3', '110402', 'ICA', 'PALPA', 'LLIPATA');
INSERT INTO "public"."ubigeos" VALUES ('c7fe5730-e1fd-4e6c-92b1-f57685760869', '110403', 'ICA', 'PALPA', 'RIO GRANDE');
INSERT INTO "public"."ubigeos" VALUES ('3cd5f4bc-a6c2-4caa-a931-278233191ebb', '110404', 'ICA', 'PALPA', 'SANTA CRUZ');
INSERT INTO "public"."ubigeos" VALUES ('afad1f3c-a8a3-45d4-bb1a-e8b393105844', '110405', 'ICA', 'PALPA', 'TIBILLO');
INSERT INTO "public"."ubigeos" VALUES ('de954a3a-cf1a-4e40-95d1-1aa89b7a3e3d', '110501', 'ICA', 'PISCO', 'PISCO');
INSERT INTO "public"."ubigeos" VALUES ('2bf61b16-42de-4326-8cfa-6a64f99a83aa', '110502', 'ICA', 'PISCO', 'HUANCANO');
INSERT INTO "public"."ubigeos" VALUES ('a0b73ac3-43ff-458a-93f7-43881d4281d4', '110503', 'ICA', 'PISCO', 'HUMAY');
INSERT INTO "public"."ubigeos" VALUES ('978782b1-6ee4-49bc-83f2-4ce4bda574e4', '110504', 'ICA', 'PISCO', 'INDEPENDENCIA');
INSERT INTO "public"."ubigeos" VALUES ('15a690dc-7c36-465e-ad8a-0c95309243a4', '110505', 'ICA', 'PISCO', 'PARACAS');
INSERT INTO "public"."ubigeos" VALUES ('442e5215-f1e1-41c4-ac2a-e9dd3b5f7287', '110506', 'ICA', 'PISCO', 'SAN ANDRES');
INSERT INTO "public"."ubigeos" VALUES ('249eb06c-cc29-4ca6-bac1-b0684a98a7d6', '110507', 'ICA', 'PISCO', 'SAN CLEMENTE');
INSERT INTO "public"."ubigeos" VALUES ('a123f3ff-dc2e-44a9-be13-d298b14539ae', '110508', 'ICA', 'PISCO', 'TUPAC AMARU INCA');
INSERT INTO "public"."ubigeos" VALUES ('ff4b459c-f501-4b64-ad35-0f7afb435b84', '120101', 'JUNIN', 'HUANCAYO', 'HUANCAYO');
INSERT INTO "public"."ubigeos" VALUES ('8eb95d40-b361-4176-b78a-6e21a0500183', '120104', 'JUNIN', 'HUANCAYO', 'CARHUACALLANGA');
INSERT INTO "public"."ubigeos" VALUES ('a10df6e9-8db4-4b4e-b846-1ffc015f0980', '120105', 'JUNIN', 'HUANCAYO', 'CHACAPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('9f4d34f9-f7ff-40d6-9857-1c97eb661099', '120106', 'JUNIN', 'HUANCAYO', 'CHICCHE');
INSERT INTO "public"."ubigeos" VALUES ('f60e2871-c1ce-4557-bf80-465396a83103', '120107', 'JUNIN', 'HUANCAYO', 'CHILCA');
INSERT INTO "public"."ubigeos" VALUES ('c8937548-a022-476d-a8c3-5969dd765327', '120108', 'JUNIN', 'HUANCAYO', 'CHONGOS ALTO');
INSERT INTO "public"."ubigeos" VALUES ('7e3ce8dd-c9d5-472a-8f6f-1b7d858dfc80', '120111', 'JUNIN', 'HUANCAYO', 'CHUPURO');
INSERT INTO "public"."ubigeos" VALUES ('2d8472c8-7bb8-41ae-83b3-eaa3f5809279', '120112', 'JUNIN', 'HUANCAYO', 'COLCA');
INSERT INTO "public"."ubigeos" VALUES ('e5729b7d-16bd-4317-b52f-712540b74eb0', '120113', 'JUNIN', 'HUANCAYO', 'CULLHUAS');
INSERT INTO "public"."ubigeos" VALUES ('047cb057-d682-4bb9-a3a2-134deeeba4ba', '120114', 'JUNIN', 'HUANCAYO', 'EL TAMBO');
INSERT INTO "public"."ubigeos" VALUES ('432a0eac-576d-4a34-8583-4fa2a70b7fba', '120116', 'JUNIN', 'HUANCAYO', 'HUACRAPUQUIO');
INSERT INTO "public"."ubigeos" VALUES ('7a63de51-a2fd-4f38-8d5e-b6313972e1f7', '120117', 'JUNIN', 'HUANCAYO', 'HUALHUAS');
INSERT INTO "public"."ubigeos" VALUES ('a45e8450-81ac-45f8-a000-ea73a3b884df', '120119', 'JUNIN', 'HUANCAYO', 'HUANCAN');
INSERT INTO "public"."ubigeos" VALUES ('637590e2-55dd-4b30-8582-71ad383c64d8', '120120', 'JUNIN', 'HUANCAYO', 'HUASICANCHA');
INSERT INTO "public"."ubigeos" VALUES ('cb65c73e-4305-4d57-929a-77a44ef025dc', '120121', 'JUNIN', 'HUANCAYO', 'HUAYUCACHI');
INSERT INTO "public"."ubigeos" VALUES ('d76040a5-3386-4014-bc22-3f333aefa096', '120122', 'JUNIN', 'HUANCAYO', 'INGENIO');
INSERT INTO "public"."ubigeos" VALUES ('3812783c-9d2a-4f3b-847b-286c0d736aa7', '120124', 'JUNIN', 'HUANCAYO', 'PARIAHUANCA');
INSERT INTO "public"."ubigeos" VALUES ('8e75b4bc-b19d-4095-8e78-88715ac87f71', '120125', 'JUNIN', 'HUANCAYO', 'PILCOMAYO');
INSERT INTO "public"."ubigeos" VALUES ('e3b97667-17d8-4c98-9cc4-6d2182a91669', '120126', 'JUNIN', 'HUANCAYO', 'PUCARA');
INSERT INTO "public"."ubigeos" VALUES ('11f54457-48ca-455d-89da-ca3d5bdd926e', '120127', 'JUNIN', 'HUANCAYO', 'QUICHUAY');
INSERT INTO "public"."ubigeos" VALUES ('55459413-2b06-4367-a392-a9bd9fa62ccb', '120128', 'JUNIN', 'HUANCAYO', 'QUILCAS');
INSERT INTO "public"."ubigeos" VALUES ('13728603-9aa7-4969-9316-0a09ed775f3e', '120129', 'JUNIN', 'HUANCAYO', 'SAN AGUSTIN');
INSERT INTO "public"."ubigeos" VALUES ('4ac4d080-eda5-4197-85bb-4cb46a6ffe68', '120130', 'JUNIN', 'HUANCAYO', 'SAN JERONIMO DE TUNAN');
INSERT INTO "public"."ubigeos" VALUES ('8423cac9-5c1a-4556-ba1f-57220d4c4cef', '120132', 'JUNIN', 'HUANCAYO', 'SAÑO');
INSERT INTO "public"."ubigeos" VALUES ('e79da2fc-ebdd-4b5c-bc10-eb19ac7bb2be', '120133', 'JUNIN', 'HUANCAYO', 'SAPALLANGA');
INSERT INTO "public"."ubigeos" VALUES ('7432c4b5-2b94-4871-aa3d-756532b97e1f', '120134', 'JUNIN', 'HUANCAYO', 'SICAYA');
INSERT INTO "public"."ubigeos" VALUES ('7eb2cb5c-8093-4bed-a9e7-09e5e83f7e48', '120135', 'JUNIN', 'HUANCAYO', 'SANTO DOMINGO DE ACOBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('03cabeec-b024-4f61-b6e8-3b3300dce014', '120136', 'JUNIN', 'HUANCAYO', 'VIQUES');
INSERT INTO "public"."ubigeos" VALUES ('2ab5f141-851d-41ec-919e-b84b4065e4f4', '120201', 'JUNIN', 'CONCEPCION', 'CONCEPCION');
INSERT INTO "public"."ubigeos" VALUES ('5a7bce34-fb63-4d83-9615-fde24b786cc5', '120202', 'JUNIN', 'CONCEPCION', 'ACO');
INSERT INTO "public"."ubigeos" VALUES ('4b1705fe-1cad-47b1-adb7-f1272738f40a', '120203', 'JUNIN', 'CONCEPCION', 'ANDAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('e3cb6471-ed6f-441b-967f-cbda8ded7ab1', '120204', 'JUNIN', 'CONCEPCION', 'CHAMBARA');
INSERT INTO "public"."ubigeos" VALUES ('a73712e1-f8b6-4f70-b72e-12583208787d', '120205', 'JUNIN', 'CONCEPCION', 'COCHAS');
INSERT INTO "public"."ubigeos" VALUES ('765ab665-6c30-4079-acc5-9e217071738d', '120206', 'JUNIN', 'CONCEPCION', 'COMAS');
INSERT INTO "public"."ubigeos" VALUES ('c6dbac86-14df-42fd-9e26-dd907377e5d3', '120207', 'JUNIN', 'CONCEPCION', 'HEROINAS TOLEDO');
INSERT INTO "public"."ubigeos" VALUES ('b90bce1b-9337-42bf-ab3d-a7475019c993', '120208', 'JUNIN', 'CONCEPCION', 'MANZANARES');
INSERT INTO "public"."ubigeos" VALUES ('ad9884fd-36ca-4a28-84aa-74a0adf6578b', '120209', 'JUNIN', 'CONCEPCION', 'MARISCAL CASTILLA');
INSERT INTO "public"."ubigeos" VALUES ('eaa2b642-9cae-4bc8-9c3a-72a50c23734e', '120210', 'JUNIN', 'CONCEPCION', 'MATAHUASI');
INSERT INTO "public"."ubigeos" VALUES ('edf9d464-d82d-46fe-aa80-057932c7635c', '120211', 'JUNIN', 'CONCEPCION', 'MITO');
INSERT INTO "public"."ubigeos" VALUES ('d0cc2d1d-7ad1-4235-9da0-6fb5e02c5db3', '120212', 'JUNIN', 'CONCEPCION', 'NUEVE DE JULIO');
INSERT INTO "public"."ubigeos" VALUES ('70447fc2-cf18-478e-b200-f48a272ba51f', '120213', 'JUNIN', 'CONCEPCION', 'ORCOTUNA');
INSERT INTO "public"."ubigeos" VALUES ('87063f86-29db-4854-9f43-8fe78a2facb6', '120214', 'JUNIN', 'CONCEPCION', 'SAN JOSE DE QUERO');
INSERT INTO "public"."ubigeos" VALUES ('db221dc2-da0a-4efa-9814-e52b012dc38f', '120215', 'JUNIN', 'CONCEPCION', 'SANTA ROSA DE OCOPA');
INSERT INTO "public"."ubigeos" VALUES ('97eaaafe-803c-4162-b5fe-907fca642818', '120301', 'JUNIN', 'CHANCHAMAYO', 'CHANCHAMAYO');
INSERT INTO "public"."ubigeos" VALUES ('4ec2dcda-f4ab-43e5-bd54-2ee1a997b484', '120302', 'JUNIN', 'CHANCHAMAYO', 'PERENE');
INSERT INTO "public"."ubigeos" VALUES ('196fdd03-b26b-443e-86e5-e25190e57521', '120303', 'JUNIN', 'CHANCHAMAYO', 'PICHANAQUI');
INSERT INTO "public"."ubigeos" VALUES ('8d3584c3-712e-472f-8fc4-891e89f9e786', '120304', 'JUNIN', 'CHANCHAMAYO', 'SAN LUIS DE SHUARO');
INSERT INTO "public"."ubigeos" VALUES ('973e4884-5329-49ec-abab-8edb01aa1d19', '120305', 'JUNIN', 'CHANCHAMAYO', 'SAN RAMON');
INSERT INTO "public"."ubigeos" VALUES ('459076ab-7d48-465a-a4ac-16e6cbe8fdf5', '120306', 'JUNIN', 'CHANCHAMAYO', 'VITOC');
INSERT INTO "public"."ubigeos" VALUES ('2db8602b-dba2-4dbc-bd1f-00187c419a90', '120401', 'JUNIN', 'JAUJA', 'JAUJA');
INSERT INTO "public"."ubigeos" VALUES ('8eb0dfec-74cd-426a-ab02-bf639955fd3b', '120402', 'JUNIN', 'JAUJA', 'ACOLLA');
INSERT INTO "public"."ubigeos" VALUES ('ff33d78f-8484-4981-a0f8-07e9f68dc043', '120403', 'JUNIN', 'JAUJA', 'APATA');
INSERT INTO "public"."ubigeos" VALUES ('01a35c0d-cdd7-4989-88a3-a36e1cb417f2', '120404', 'JUNIN', 'JAUJA', 'ATAURA');
INSERT INTO "public"."ubigeos" VALUES ('bfc53f58-5470-41fd-8156-2ccb5b1cbe4d', '120405', 'JUNIN', 'JAUJA', 'CANCHAYLLO');
INSERT INTO "public"."ubigeos" VALUES ('c57f51de-5dc0-4903-a4dc-473636227900', '120406', 'JUNIN', 'JAUJA', 'CURICACA');
INSERT INTO "public"."ubigeos" VALUES ('a84a48b3-b4b1-474c-aea4-a476752c9ec4', '120409', 'JUNIN', 'JAUJA', 'HUARIPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('d01bce75-5928-4f00-afac-1b0bccf3f526', '120410', 'JUNIN', 'JAUJA', 'HUERTAS');
INSERT INTO "public"."ubigeos" VALUES ('a361be83-5156-4b57-9be1-b2d9ab7b460d', '120411', 'JUNIN', 'JAUJA', 'JANJAILLO');
INSERT INTO "public"."ubigeos" VALUES ('047a6edf-d843-4340-b75a-d858d2b73498', '120412', 'JUNIN', 'JAUJA', 'JULCAN');
INSERT INTO "public"."ubigeos" VALUES ('a29dc557-5cca-403d-b3d4-68586910e143', '120413', 'JUNIN', 'JAUJA', 'LEONOR ORDOÑEZ');
INSERT INTO "public"."ubigeos" VALUES ('b3cce55f-1fb0-4ed1-bb33-8bad69efa5de', '120414', 'JUNIN', 'JAUJA', 'LLOCLLAPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('07ff8a5c-14c1-4788-9720-343d08c87edb', '120415', 'JUNIN', 'JAUJA', 'MARCO');
INSERT INTO "public"."ubigeos" VALUES ('f2918fda-0bd0-4063-b5af-6312252bc83e', '120416', 'JUNIN', 'JAUJA', 'MASMA');
INSERT INTO "public"."ubigeos" VALUES ('02a6a7b0-f1f3-426b-95c5-31118de57bf6', '120417', 'JUNIN', 'JAUJA', 'MASMA CHICCHE');
INSERT INTO "public"."ubigeos" VALUES ('8772db16-88d0-49f1-9c9a-c6eac6ab62c7', '120418', 'JUNIN', 'JAUJA', 'MOLINOS');
INSERT INTO "public"."ubigeos" VALUES ('ad762aed-c65f-45f7-8938-104dec04ab85', '120419', 'JUNIN', 'JAUJA', 'MONOBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('01a30ca2-dc7d-4b1d-a9b8-7c81ee5f121e', '120420', 'JUNIN', 'JAUJA', 'MUQUI');
INSERT INTO "public"."ubigeos" VALUES ('9e2ff5a7-2d84-479b-8ace-a378c723657f', '120421', 'JUNIN', 'JAUJA', 'MUQUIYAUYO');
INSERT INTO "public"."ubigeos" VALUES ('bd15cb6b-8f48-40aa-9e24-b579e6146761', '120422', 'JUNIN', 'JAUJA', 'PACA');
INSERT INTO "public"."ubigeos" VALUES ('445c27d6-76f1-4736-8d51-70abc231f4b1', '120423', 'JUNIN', 'JAUJA', 'PACCHA');
INSERT INTO "public"."ubigeos" VALUES ('043ade17-b3c4-433b-8fa2-d9d6db9b5e01', '120424', 'JUNIN', 'JAUJA', 'PANCAN');
INSERT INTO "public"."ubigeos" VALUES ('a8dd46e4-e6db-411b-a20d-6e718c120083', '120425', 'JUNIN', 'JAUJA', 'PARCO');
INSERT INTO "public"."ubigeos" VALUES ('b954110e-1bf0-496f-b0db-baf37732a562', '120426', 'JUNIN', 'JAUJA', 'POMACANCHA');
INSERT INTO "public"."ubigeos" VALUES ('3a3f3188-510f-4469-8964-06d1e81effeb', '120427', 'JUNIN', 'JAUJA', 'RICRAN');
INSERT INTO "public"."ubigeos" VALUES ('e9986728-515f-4c72-b2c0-af44d8c3d10d', '120428', 'JUNIN', 'JAUJA', 'SAN LORENZO');
INSERT INTO "public"."ubigeos" VALUES ('569d6133-cf0e-4d1a-a4b1-64383250b857', '120429', 'JUNIN', 'JAUJA', 'SAN PEDRO DE CHUNAN');
INSERT INTO "public"."ubigeos" VALUES ('d5b7e678-52f0-4c21-9d36-37a1e8d4ce02', '120430', 'JUNIN', 'JAUJA', 'SAUSA');
INSERT INTO "public"."ubigeos" VALUES ('470ae67f-5460-4b7a-8801-91fd227f96db', '120431', 'JUNIN', 'JAUJA', 'SINCOS');
INSERT INTO "public"."ubigeos" VALUES ('91ffe0e0-8ae1-4d83-8a9f-a905707357bf', '120432', 'JUNIN', 'JAUJA', 'TUNAN MARCA');
INSERT INTO "public"."ubigeos" VALUES ('bfa820fd-ca4b-4f74-a873-aa9224541c54', '120433', 'JUNIN', 'JAUJA', 'YAULI');
INSERT INTO "public"."ubigeos" VALUES ('bff9a35c-f2f3-4508-9706-9b16b64c4033', '120434', 'JUNIN', 'JAUJA', 'YAUYOS');
INSERT INTO "public"."ubigeos" VALUES ('934550f7-ea8f-4128-be6a-142a63afef12', '120501', 'JUNIN', 'JUNIN', 'JUNIN');
INSERT INTO "public"."ubigeos" VALUES ('8aec0ae3-d401-4bdc-bb49-d010d5d2ddb6', '120502', 'JUNIN', 'JUNIN', 'CARHUAMAYO');
INSERT INTO "public"."ubigeos" VALUES ('1b0e0ab0-9fce-45c9-869e-f8e5eea9858c', '120503', 'JUNIN', 'JUNIN', 'ONDORES');
INSERT INTO "public"."ubigeos" VALUES ('71617da5-0ed7-4aac-ac36-35d52259977f', '120504', 'JUNIN', 'JUNIN', 'ULCUMAYO');
INSERT INTO "public"."ubigeos" VALUES ('2d1037f6-ca3e-44eb-94bc-dfae6464ed19', '120601', 'JUNIN', 'SATIPO', 'SATIPO');
INSERT INTO "public"."ubigeos" VALUES ('8b5194a0-1b16-450b-9857-672ee46a929f', '120602', 'JUNIN', 'SATIPO', 'COVIRIALI');
INSERT INTO "public"."ubigeos" VALUES ('76bb313e-cedf-4faa-a2e7-26318af5ace8', '120603', 'JUNIN', 'SATIPO', 'LLAYLLA');
INSERT INTO "public"."ubigeos" VALUES ('603b0c75-4843-4c15-b8cb-e786989cce0d', '120604', 'JUNIN', 'SATIPO', 'MAZAMARI');
INSERT INTO "public"."ubigeos" VALUES ('dc07ce22-2d25-41f7-a30e-a650789c3308', '120605', 'JUNIN', 'SATIPO', 'PAMPA HERMOSA');
INSERT INTO "public"."ubigeos" VALUES ('761f999c-3390-40a6-8ca2-772869517616', '120606', 'JUNIN', 'SATIPO', 'PANGOA');
INSERT INTO "public"."ubigeos" VALUES ('f6c81c88-aac6-4003-b475-c297727395e2', '120607', 'JUNIN', 'SATIPO', 'RIO NEGRO');
INSERT INTO "public"."ubigeos" VALUES ('1e11efd3-9ca3-40f8-8c68-5c33ec7bcc11', '120608', 'JUNIN', 'SATIPO', 'RIO TAMBO');
INSERT INTO "public"."ubigeos" VALUES ('42544b73-36d9-4a8b-b256-abef96de4be9', '120609', 'JUNIN', 'SATIPO', 'VIZCATÁN DEL ENE');
INSERT INTO "public"."ubigeos" VALUES ('0f4e2049-24cd-44de-927b-52b9dbcecbe0', '120701', 'JUNIN', 'TARMA', 'TARMA');
INSERT INTO "public"."ubigeos" VALUES ('dbe7e78a-4c9e-47af-8563-72f27e5b55cf', '120702', 'JUNIN', 'TARMA', 'ACOBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('7405d8fa-abbb-4768-a1f5-274f5862d399', '120703', 'JUNIN', 'TARMA', 'HUARICOLCA');
INSERT INTO "public"."ubigeos" VALUES ('3883b17b-799d-4782-9c06-7a4e20f701d0', '120704', 'JUNIN', 'TARMA', 'HUASAHUASI');
INSERT INTO "public"."ubigeos" VALUES ('7e9af054-6f76-4458-85d9-0d78ba7d9e97', '120705', 'JUNIN', 'TARMA', 'LA UNION');
INSERT INTO "public"."ubigeos" VALUES ('4b337910-4051-43fc-bc37-acbb24d217a5', '120706', 'JUNIN', 'TARMA', 'PALCA');
INSERT INTO "public"."ubigeos" VALUES ('146e9530-f516-4d84-a0f1-e63b5ae9f534', '120707', 'JUNIN', 'TARMA', 'PALCAMAYO');
INSERT INTO "public"."ubigeos" VALUES ('1ee5e8a0-9641-4cb4-87a7-782468eb8014', '120708', 'JUNIN', 'TARMA', 'SAN PEDRO DE CAJAS');
INSERT INTO "public"."ubigeos" VALUES ('a909d960-5d54-44cb-80e5-377741deee46', '120709', 'JUNIN', 'TARMA', 'TAPO');
INSERT INTO "public"."ubigeos" VALUES ('e0c6202e-c26b-419a-907c-b793f93bf994', '120801', 'JUNIN', 'YAULI', 'LA OROYA');
INSERT INTO "public"."ubigeos" VALUES ('7c87e10c-cf0b-488b-99f0-957421304485', '120802', 'JUNIN', 'YAULI', 'CHACAPALPA');
INSERT INTO "public"."ubigeos" VALUES ('606510f3-6a09-472b-b080-c6c199107f13', '120803', 'JUNIN', 'YAULI', 'HUAY-HUAY');
INSERT INTO "public"."ubigeos" VALUES ('3664e7e4-eee7-4824-a502-ee0ef415cfb6', '120804', 'JUNIN', 'YAULI', 'MARCAPOMACOCHA');
INSERT INTO "public"."ubigeos" VALUES ('bfe4a51a-005d-46bd-820f-019aa4ced1fb', '120805', 'JUNIN', 'YAULI', 'MOROCOCHA');
INSERT INTO "public"."ubigeos" VALUES ('153b85ab-6f91-494c-8e28-65655f6c2501', '120806', 'JUNIN', 'YAULI', 'PACCHA');
INSERT INTO "public"."ubigeos" VALUES ('5a92a0b0-8ff0-4087-9093-87398458c825', '120807', 'JUNIN', 'YAULI', 'SANTA BARBARA DE CARHUACAYAN');
INSERT INTO "public"."ubigeos" VALUES ('c58f99bb-87f4-469f-859e-92bcea495230', '120808', 'JUNIN', 'YAULI', 'SANTA ROSA DE SACCO');
INSERT INTO "public"."ubigeos" VALUES ('f3b53ece-24d1-43b1-968c-63a767bd7ba5', '120809', 'JUNIN', 'YAULI', 'SUITUCANCHA');
INSERT INTO "public"."ubigeos" VALUES ('5f57845d-13f6-4df8-ad97-4b757b218717', '120810', 'JUNIN', 'YAULI', 'YAULI');
INSERT INTO "public"."ubigeos" VALUES ('bd9968ac-cc0f-4a41-8a5c-2f78cda6e423', '120901', 'JUNIN', 'CHUPACA', 'CHUPACA');
INSERT INTO "public"."ubigeos" VALUES ('ae91f284-b4ae-47b2-9fb1-56f909b887c3', '120902', 'JUNIN', 'CHUPACA', 'AHUAC');
INSERT INTO "public"."ubigeos" VALUES ('5c3f33b2-2ff8-4beb-89a7-9ed239a3d1d9', '120903', 'JUNIN', 'CHUPACA', 'CHONGOS BAJO');
INSERT INTO "public"."ubigeos" VALUES ('25456d64-2c86-44f6-bdc1-9fefe700c3e4', '120904', 'JUNIN', 'CHUPACA', 'HUACHAC');
INSERT INTO "public"."ubigeos" VALUES ('848bec0f-1f52-4e33-9ade-c14554f950c2', '120905', 'JUNIN', 'CHUPACA', 'HUAMANCACA CHICO');
INSERT INTO "public"."ubigeos" VALUES ('f7ea3171-23de-48c2-9791-58ad6b894baa', '120906', 'JUNIN', 'CHUPACA', 'SAN JUAN DE ISCOS');
INSERT INTO "public"."ubigeos" VALUES ('d0568c06-a25c-415c-93c8-23b68fbc4baa', '120907', 'JUNIN', 'CHUPACA', 'SAN JUAN DE JARPA');
INSERT INTO "public"."ubigeos" VALUES ('b01a4916-4682-462c-b5f3-01bc06e7a792', '120908', 'JUNIN', 'CHUPACA', 'TRES DE DICIEMBRE');
INSERT INTO "public"."ubigeos" VALUES ('74d7c58a-67c3-46ec-809f-53ae75287fc6', '120909', 'JUNIN', 'CHUPACA', 'YANACANCHA');
INSERT INTO "public"."ubigeos" VALUES ('8e7b0315-ed5c-4590-a9fc-9f138c374848', '130101', 'LA LIBERTAD', 'TRUJILLO', 'TRUJILLO');
INSERT INTO "public"."ubigeos" VALUES ('bba18436-5b65-4dde-b1b4-6847f14b77bc', '130102', 'LA LIBERTAD', 'TRUJILLO', 'EL PORVENIR');
INSERT INTO "public"."ubigeos" VALUES ('a7bc985d-5375-43a8-9479-144c09313b32', '130103', 'LA LIBERTAD', 'TRUJILLO', 'FLORENCIA DE MORA');
INSERT INTO "public"."ubigeos" VALUES ('55a254fd-48a0-48f6-a2e5-6596bebfb3fd', '130104', 'LA LIBERTAD', 'TRUJILLO', 'HUANCHACO');
INSERT INTO "public"."ubigeos" VALUES ('165b7aa4-01c2-48ef-8a9a-e029191c8902', '130105', 'LA LIBERTAD', 'TRUJILLO', 'LA ESPERANZA');
INSERT INTO "public"."ubigeos" VALUES ('42bc09ef-040c-4954-a355-ef214718a72c', '130106', 'LA LIBERTAD', 'TRUJILLO', 'LAREDO');
INSERT INTO "public"."ubigeos" VALUES ('ffcbaa98-2294-40c5-b5a5-76620a0c70d4', '130107', 'LA LIBERTAD', 'TRUJILLO', 'MOCHE');
INSERT INTO "public"."ubigeos" VALUES ('dcb7dd93-5515-4050-b26f-68b6111c81f6', '130108', 'LA LIBERTAD', 'TRUJILLO', 'POROTO');
INSERT INTO "public"."ubigeos" VALUES ('69282d0e-e1d4-4d32-bf97-ab383974b3c8', '130109', 'LA LIBERTAD', 'TRUJILLO', 'SALAVERRY');
INSERT INTO "public"."ubigeos" VALUES ('efccf1ac-f4e7-4cfc-bca6-84c07630e836', '130110', 'LA LIBERTAD', 'TRUJILLO', 'SIMBAL');
INSERT INTO "public"."ubigeos" VALUES ('dc52a3a1-5220-4eae-aa38-e127cdb47fe1', '130111', 'LA LIBERTAD', 'TRUJILLO', 'VICTOR LARCO HERRERA');
INSERT INTO "public"."ubigeos" VALUES ('3a76456f-33e8-48d9-8d1e-a3c9be959339', '130112', 'LA LIBERTAD', 'TRUJILLO', 'ALTO TRUJILLO');
INSERT INTO "public"."ubigeos" VALUES ('526f3d9c-d431-4d7e-8bba-84996f130da5', '130201', 'LA LIBERTAD', 'ASCOPE', 'ASCOPE');
INSERT INTO "public"."ubigeos" VALUES ('4c768511-2135-4f6b-8254-0e27a6f9fb2d', '130202', 'LA LIBERTAD', 'ASCOPE', 'CHICAMA');
INSERT INTO "public"."ubigeos" VALUES ('1fc17aff-0c1d-496a-9074-e471421722f5', '130203', 'LA LIBERTAD', 'ASCOPE', 'CHOCOPE');
INSERT INTO "public"."ubigeos" VALUES ('9c3ee2b7-b671-456d-a932-316c967c3348', '130204', 'LA LIBERTAD', 'ASCOPE', 'MAGDALENA DE CAO');
INSERT INTO "public"."ubigeos" VALUES ('4acb9135-262a-4246-8ebc-e037baccc8a0', '130205', 'LA LIBERTAD', 'ASCOPE', 'PAIJAN');
INSERT INTO "public"."ubigeos" VALUES ('65215cf8-a533-4884-967f-7d1b5eba7109', '130206', 'LA LIBERTAD', 'ASCOPE', 'RAZURI');
INSERT INTO "public"."ubigeos" VALUES ('7c67b719-b2ff-4f24-895e-20818595e2f5', '130207', 'LA LIBERTAD', 'ASCOPE', 'SANTIAGO DE CAO');
INSERT INTO "public"."ubigeos" VALUES ('91b79890-bf3f-4e66-a357-a42d15e9ba48', '130208', 'LA LIBERTAD', 'ASCOPE', 'CASA GRANDE');
INSERT INTO "public"."ubigeos" VALUES ('4946d08d-031e-46ce-be4c-4123c4d8302d', '130301', 'LA LIBERTAD', 'BOLIVAR', 'BOLIVAR');
INSERT INTO "public"."ubigeos" VALUES ('6d6c062c-4288-463d-9102-3adcf86f1491', '130302', 'LA LIBERTAD', 'BOLIVAR', 'BAMBAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('02f00d82-1e04-4924-a52f-9a55a27024b9', '130303', 'LA LIBERTAD', 'BOLIVAR', 'CONDORMARCA');
INSERT INTO "public"."ubigeos" VALUES ('75e77066-81e9-4ac4-8e20-85dee778eeac', '130304', 'LA LIBERTAD', 'BOLIVAR', 'LONGOTEA');
INSERT INTO "public"."ubigeos" VALUES ('02105260-f2f1-4306-9c2f-d52a0e039d91', '130305', 'LA LIBERTAD', 'BOLIVAR', 'UCHUMARCA');
INSERT INTO "public"."ubigeos" VALUES ('e71aa87b-532a-47bc-9dc1-bf7a281c0aa3', '130306', 'LA LIBERTAD', 'BOLIVAR', 'UCUNCHA');
INSERT INTO "public"."ubigeos" VALUES ('34fb32ce-deca-4601-9ab2-bd7b3d46e42a', '130401', 'LA LIBERTAD', 'CHEPEN', 'CHEPEN');
INSERT INTO "public"."ubigeos" VALUES ('b4b80fc6-1d63-4171-8346-ddb390b3b5a0', '130402', 'LA LIBERTAD', 'CHEPEN', 'PACANGA');
INSERT INTO "public"."ubigeos" VALUES ('8862a1c3-f984-4f48-a389-1ddc02dda4cf', '130403', 'LA LIBERTAD', 'CHEPEN', 'PUEBLO NUEVO');
INSERT INTO "public"."ubigeos" VALUES ('012eb94b-5dda-4ffa-a437-29ce1d0e1d8f', '130501', 'LA LIBERTAD', 'JULCAN', 'JULCAN');
INSERT INTO "public"."ubigeos" VALUES ('c95e86f1-0120-4269-b73c-5a7b24d42ab8', '130502', 'LA LIBERTAD', 'JULCAN', 'CALAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('d0a6bf07-ab22-4304-8f3d-199db0463dff', '130503', 'LA LIBERTAD', 'JULCAN', 'CARABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('1ea43e49-a5f5-4736-8fa3-9681a4816b0c', '130504', 'LA LIBERTAD', 'JULCAN', 'HUASO');
INSERT INTO "public"."ubigeos" VALUES ('866c9dc8-ae78-4f8a-b6f0-6f9a42b75e8b', '130601', 'LA LIBERTAD', 'OTUZCO', 'OTUZCO');
INSERT INTO "public"."ubigeos" VALUES ('bfd3f192-4a23-45d4-aeb3-4e4d3675d820', '130602', 'LA LIBERTAD', 'OTUZCO', 'AGALLPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('3e1371a0-6da3-41f6-9139-28ad3b1fad7d', '130604', 'LA LIBERTAD', 'OTUZCO', 'CHARAT');
INSERT INTO "public"."ubigeos" VALUES ('4f031ab1-9ec3-4d7e-b7cf-219a276ba17d', '130605', 'LA LIBERTAD', 'OTUZCO', 'HUARANCHAL');
INSERT INTO "public"."ubigeos" VALUES ('438461ac-5b66-43ce-ad45-196728be0c78', '130606', 'LA LIBERTAD', 'OTUZCO', 'LA CUESTA');
INSERT INTO "public"."ubigeos" VALUES ('9db72cb4-2fc3-4a1e-bf27-e8d0007b16ca', '130608', 'LA LIBERTAD', 'OTUZCO', 'MACHE');
INSERT INTO "public"."ubigeos" VALUES ('1fab8298-f755-4d23-9887-909410dcea4d', '130610', 'LA LIBERTAD', 'OTUZCO', 'PARANDAY');
INSERT INTO "public"."ubigeos" VALUES ('0444607d-0ada-407b-9f7a-340c54a56c77', '130611', 'LA LIBERTAD', 'OTUZCO', 'SALPO');
INSERT INTO "public"."ubigeos" VALUES ('c771a73f-6a6a-4f3a-a928-29d13c5f7a80', '130613', 'LA LIBERTAD', 'OTUZCO', 'SINSICAP');
INSERT INTO "public"."ubigeos" VALUES ('5c4b3319-98a6-4471-bcce-440f8bb55be6', '130614', 'LA LIBERTAD', 'OTUZCO', 'USQUIL');
INSERT INTO "public"."ubigeos" VALUES ('510f9910-3b54-465e-bb8e-189418bf1173', '130701', 'LA LIBERTAD', 'PACASMAYO', 'SAN PEDRO DE LLOC');
INSERT INTO "public"."ubigeos" VALUES ('efda960f-620a-4866-b728-2c5a654774e8', '130702', 'LA LIBERTAD', 'PACASMAYO', 'GUADALUPE');
INSERT INTO "public"."ubigeos" VALUES ('73defcd7-6539-4e72-b7d0-8104e42f55d7', '130703', 'LA LIBERTAD', 'PACASMAYO', 'JEQUETEPEQUE');
INSERT INTO "public"."ubigeos" VALUES ('687600ec-b54f-4ba2-94ea-a3fc726e1a76', '130704', 'LA LIBERTAD', 'PACASMAYO', 'PACASMAYO');
INSERT INTO "public"."ubigeos" VALUES ('517db78c-7ed7-4fd8-847b-9814d2b10d67', '130705', 'LA LIBERTAD', 'PACASMAYO', 'SAN JOSE');
INSERT INTO "public"."ubigeos" VALUES ('cd0a7234-728f-4994-99a4-b3bc75ca6495', '130801', 'LA LIBERTAD', 'PATAZ', 'TAYABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('d57b62da-80ef-427b-a00b-9f161e012d6b', '130802', 'LA LIBERTAD', 'PATAZ', 'BULDIBUYO');
INSERT INTO "public"."ubigeos" VALUES ('e3eb58d1-2721-491d-ac70-ca8018c6fed0', '130803', 'LA LIBERTAD', 'PATAZ', 'CHILLIA');
INSERT INTO "public"."ubigeos" VALUES ('ee8177df-fee9-488f-8c9f-bdc38b132e8e', '130804', 'LA LIBERTAD', 'PATAZ', 'HUANCASPATA');
INSERT INTO "public"."ubigeos" VALUES ('ea545266-66db-414c-afba-017e2b9a07e6', '130805', 'LA LIBERTAD', 'PATAZ', 'HUAYLILLAS');
INSERT INTO "public"."ubigeos" VALUES ('93e8a238-a5c9-4ddb-96bc-38f02c72df9b', '130806', 'LA LIBERTAD', 'PATAZ', 'HUAYO');
INSERT INTO "public"."ubigeos" VALUES ('d52973eb-8676-4321-badf-e3e469d6903e', '130807', 'LA LIBERTAD', 'PATAZ', 'ONGON');
INSERT INTO "public"."ubigeos" VALUES ('bf165145-6620-403c-8a30-dcf9950ee8bc', '130808', 'LA LIBERTAD', 'PATAZ', 'PARCOY');
INSERT INTO "public"."ubigeos" VALUES ('47a499ad-98c4-49ab-8c01-7b7527692407', '130809', 'LA LIBERTAD', 'PATAZ', 'PATAZ');
INSERT INTO "public"."ubigeos" VALUES ('7ff90377-acde-4581-aaab-992968f3e02d', '130810', 'LA LIBERTAD', 'PATAZ', 'PIAS');
INSERT INTO "public"."ubigeos" VALUES ('06f6a551-466f-461d-ba59-056eb1c6dfda', '130811', 'LA LIBERTAD', 'PATAZ', 'SANTIAGO DE CHALLAS');
INSERT INTO "public"."ubigeos" VALUES ('ff3a7821-ff92-44b9-8948-4ba953d84017', '130812', 'LA LIBERTAD', 'PATAZ', 'TAURIJA');
INSERT INTO "public"."ubigeos" VALUES ('b4ff7e21-5db3-47e0-8057-31bad5c1c25b', '130813', 'LA LIBERTAD', 'PATAZ', 'URPAY');
INSERT INTO "public"."ubigeos" VALUES ('b15051c7-91d1-44ed-9c6b-9c8d9730498e', '130901', 'LA LIBERTAD', 'SANCHEZ CARRION', 'HUAMACHUCO');
INSERT INTO "public"."ubigeos" VALUES ('64afc939-7594-440e-a368-5a59671cd49d', '130902', 'LA LIBERTAD', 'SANCHEZ CARRION', 'CHUGAY');
INSERT INTO "public"."ubigeos" VALUES ('41b7be22-fb4e-4038-a032-4cfc36df2cfe', '130903', 'LA LIBERTAD', 'SANCHEZ CARRION', 'COCHORCO');
INSERT INTO "public"."ubigeos" VALUES ('9b00c1a6-3cb3-467e-9fc4-4beee70c1226', '130904', 'LA LIBERTAD', 'SANCHEZ CARRION', 'CURGOS');
INSERT INTO "public"."ubigeos" VALUES ('3a4c6138-4413-4d63-b93d-cbf7065b937a', '130905', 'LA LIBERTAD', 'SANCHEZ CARRION', 'MARCABAL');
INSERT INTO "public"."ubigeos" VALUES ('4ec49e0e-e6e5-4c31-87bd-094435f2e264', '130906', 'LA LIBERTAD', 'SANCHEZ CARRION', 'SANAGORAN');
INSERT INTO "public"."ubigeos" VALUES ('275998fc-da43-442d-9e45-dffb654ace18', '130907', 'LA LIBERTAD', 'SANCHEZ CARRION', 'SARIN');
INSERT INTO "public"."ubigeos" VALUES ('e45bf6ef-95dd-4a3b-a238-db30820e0308', '130908', 'LA LIBERTAD', 'SANCHEZ CARRION', 'SARTIMBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('d6f4ddde-0808-460f-9a7b-7708ed342592', '131001', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'SANTIAGO DE CHUCO');
INSERT INTO "public"."ubigeos" VALUES ('9caccaf3-331c-4464-ab54-a3d6a4b39c4c', '131002', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'ANGASMARCA');
INSERT INTO "public"."ubigeos" VALUES ('54e3f232-ceb7-43bd-bf4d-1ef4969a4302', '131003', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'CACHICADAN');
INSERT INTO "public"."ubigeos" VALUES ('ddc65df8-ce3b-43fa-be94-c455701b506e', '131004', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'MOLLEBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('bfc0d6c6-84fb-4839-81a2-a31e246e87ba', '131005', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'MOLLEPATA');
INSERT INTO "public"."ubigeos" VALUES ('417e77a1-41ea-4c34-8129-82e37a0f53bb', '131006', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'QUIRUVILCA');
INSERT INTO "public"."ubigeos" VALUES ('ea639e5f-00e3-4407-9eaa-9b0a3b3a7964', '131007', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'SANTA CRUZ DE CHUCA');
INSERT INTO "public"."ubigeos" VALUES ('36bd4a01-39ec-4400-8ce1-647e15bac5c4', '131008', 'LA LIBERTAD', 'SANTIAGO DE CHUCO', 'SITABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('9d435e71-c046-4254-af74-25aba98df5d3', '131101', 'LA LIBERTAD', 'GRAN CHIMU', 'CASCAS');
INSERT INTO "public"."ubigeos" VALUES ('b364b4a2-acf3-4ea3-98db-2b6e03c91230', '131102', 'LA LIBERTAD', 'GRAN CHIMU', 'LUCMA');
INSERT INTO "public"."ubigeos" VALUES ('479289c9-9c03-4de3-af29-e8a43f26a5f3', '131103', 'LA LIBERTAD', 'GRAN CHIMU', 'MARMOT');
INSERT INTO "public"."ubigeos" VALUES ('a4b0e90d-f078-40f5-9ba3-2a0f39d2e3fc', '131104', 'LA LIBERTAD', 'GRAN CHIMU', 'SAYAPULLO');
INSERT INTO "public"."ubigeos" VALUES ('04ff29e2-072d-4aba-a6c2-d4721f6163e4', '131201', 'LA LIBERTAD', 'VIRU', 'VIRU');
INSERT INTO "public"."ubigeos" VALUES ('874cb42e-fb41-408a-86e5-54312d3063fa', '131202', 'LA LIBERTAD', 'VIRU', 'CHAO');
INSERT INTO "public"."ubigeos" VALUES ('8784cc92-cd3c-4c36-b7aa-0a2ba3bb39db', '131203', 'LA LIBERTAD', 'VIRU', 'GUADALUPITO');
INSERT INTO "public"."ubigeos" VALUES ('1e9a8ab8-db08-439f-9571-2a7d231bc1c2', '140101', 'LAMBAYEQUE', 'CHICLAYO', 'CHICLAYO');
INSERT INTO "public"."ubigeos" VALUES ('9c684fc7-afa0-41a0-b44c-4651e2653e75', '140102', 'LAMBAYEQUE', 'CHICLAYO', 'CHONGOYAPE');
INSERT INTO "public"."ubigeos" VALUES ('0d9c1acd-5ea8-41d4-808f-b751e0fe42d3', '140103', 'LAMBAYEQUE', 'CHICLAYO', 'ETEN');
INSERT INTO "public"."ubigeos" VALUES ('d64df08f-3f47-4b77-9b51-31f9ee06f97f', '140104', 'LAMBAYEQUE', 'CHICLAYO', 'ETEN PUERTO');
INSERT INTO "public"."ubigeos" VALUES ('93ea41dd-f15d-47c8-9fcf-71a93aa7009a', '140105', 'LAMBAYEQUE', 'CHICLAYO', 'JOSE LEONARDO ORTIZ');
INSERT INTO "public"."ubigeos" VALUES ('04d6fa55-c545-4f38-b303-01244d2f4804', '140106', 'LAMBAYEQUE', 'CHICLAYO', 'LA VICTORIA');
INSERT INTO "public"."ubigeos" VALUES ('610c0b1f-22f1-42ca-a9cc-ac814d4fb19a', '140107', 'LAMBAYEQUE', 'CHICLAYO', 'LAGUNAS');
INSERT INTO "public"."ubigeos" VALUES ('f725cc75-aa42-4a53-8cac-6ca747b7e438', '140108', 'LAMBAYEQUE', 'CHICLAYO', 'MONSEFU');
INSERT INTO "public"."ubigeos" VALUES ('2d25d590-a833-42be-9f2c-7f41c724d35f', '140109', 'LAMBAYEQUE', 'CHICLAYO', 'NUEVA ARICA');
INSERT INTO "public"."ubigeos" VALUES ('c96abd4a-00eb-4abb-b03f-4bd91e18bcea', '140110', 'LAMBAYEQUE', 'CHICLAYO', 'OYOTUN');
INSERT INTO "public"."ubigeos" VALUES ('6692dacf-06ba-43af-8c3a-b3ee011cca24', '140111', 'LAMBAYEQUE', 'CHICLAYO', 'PICSI');
INSERT INTO "public"."ubigeos" VALUES ('7b86d738-3038-4211-b217-117d42adc4cc', '140112', 'LAMBAYEQUE', 'CHICLAYO', 'PIMENTEL');
INSERT INTO "public"."ubigeos" VALUES ('22a256cc-f785-48a5-ad9a-dac8ae3023bc', '140113', 'LAMBAYEQUE', 'CHICLAYO', 'REQUE');
INSERT INTO "public"."ubigeos" VALUES ('6d2550b2-4db5-4366-a3ca-ae7dccc62c57', '140114', 'LAMBAYEQUE', 'CHICLAYO', 'SANTA ROSA');
INSERT INTO "public"."ubigeos" VALUES ('5ad4e8fe-7854-4303-b774-ee47dc1bbacc', '140115', 'LAMBAYEQUE', 'CHICLAYO', 'SAÑA');
INSERT INTO "public"."ubigeos" VALUES ('a03cbf0a-c1d9-4d45-8a4c-2d2e7d8905f6', '140116', 'LAMBAYEQUE', 'CHICLAYO', 'CAYALTI');
INSERT INTO "public"."ubigeos" VALUES ('46c8cb70-0dd5-454c-b9d7-a76dacb9993a', '140117', 'LAMBAYEQUE', 'CHICLAYO', 'PATAPO');
INSERT INTO "public"."ubigeos" VALUES ('d07e531b-8d61-41b3-bf1b-71a7d49202cd', '140118', 'LAMBAYEQUE', 'CHICLAYO', 'POMALCA');
INSERT INTO "public"."ubigeos" VALUES ('49522bc6-2dd4-4640-9fd6-8132e4eefc23', '140119', 'LAMBAYEQUE', 'CHICLAYO', 'PUCALA');
INSERT INTO "public"."ubigeos" VALUES ('39e080ec-8a19-43a7-ba00-6ebe79f65bd0', '140120', 'LAMBAYEQUE', 'CHICLAYO', 'TUMAN');
INSERT INTO "public"."ubigeos" VALUES ('8d3e80bb-5073-4ab6-811b-7a588f36361e', '140201', 'LAMBAYEQUE', 'FERREÑAFE', 'FERREÑAFE');
INSERT INTO "public"."ubigeos" VALUES ('492668fb-1f73-494e-8a2e-30db5da8c27d', '140202', 'LAMBAYEQUE', 'FERREÑAFE', 'CAÑARIS');
INSERT INTO "public"."ubigeos" VALUES ('e14d6855-55f7-4b59-bfb8-b71b7bcefc5e', '140203', 'LAMBAYEQUE', 'FERREÑAFE', 'INCAHUASI');
INSERT INTO "public"."ubigeos" VALUES ('69947c61-6ac6-4f9e-afbc-b78b21f5ab9b', '140204', 'LAMBAYEQUE', 'FERREÑAFE', 'MANUEL ANTONIO MESONES MURO');
INSERT INTO "public"."ubigeos" VALUES ('180a9753-423a-4225-8cf5-1dd38d04bbba', '140205', 'LAMBAYEQUE', 'FERREÑAFE', 'PITIPO');
INSERT INTO "public"."ubigeos" VALUES ('79ea4cbc-08f6-468b-9520-d238e005f4d7', '140206', 'LAMBAYEQUE', 'FERREÑAFE', 'PUEBLO NUEVO');
INSERT INTO "public"."ubigeos" VALUES ('fc640066-d20e-4238-a99d-b448356018fe', '140301', 'LAMBAYEQUE', 'LAMBAYEQUE', 'LAMBAYEQUE');
INSERT INTO "public"."ubigeos" VALUES ('8d34b038-1775-44b7-afd5-462697d64d02', '140302', 'LAMBAYEQUE', 'LAMBAYEQUE', 'CHOCHOPE');
INSERT INTO "public"."ubigeos" VALUES ('88225083-c428-4dc0-8fd6-8f3fb90b2408', '140303', 'LAMBAYEQUE', 'LAMBAYEQUE', 'ILLIMO');
INSERT INTO "public"."ubigeos" VALUES ('b4196dc2-f314-47ad-b142-9574ecdeadaf', '140304', 'LAMBAYEQUE', 'LAMBAYEQUE', 'JAYANCA');
INSERT INTO "public"."ubigeos" VALUES ('3817b025-edbe-42d2-ac4c-252adf4408f6', '140305', 'LAMBAYEQUE', 'LAMBAYEQUE', 'MOCHUMI');
INSERT INTO "public"."ubigeos" VALUES ('2d843f69-7a03-4d95-b336-8d1260972add', '140306', 'LAMBAYEQUE', 'LAMBAYEQUE', 'MORROPE');
INSERT INTO "public"."ubigeos" VALUES ('7216a0a8-4cb1-4e24-8f31-afd1dda4574b', '140307', 'LAMBAYEQUE', 'LAMBAYEQUE', 'MOTUPE');
INSERT INTO "public"."ubigeos" VALUES ('06418649-7478-41bf-95cf-4afe74def498', '140308', 'LAMBAYEQUE', 'LAMBAYEQUE', 'OLMOS');
INSERT INTO "public"."ubigeos" VALUES ('1ce4f432-458f-4bec-9cb9-ea1a71296a99', '140309', 'LAMBAYEQUE', 'LAMBAYEQUE', 'PACORA');
INSERT INTO "public"."ubigeos" VALUES ('a0edd97a-3262-4913-8af5-67fda365633c', '140310', 'LAMBAYEQUE', 'LAMBAYEQUE', 'SALAS');
INSERT INTO "public"."ubigeos" VALUES ('9d29f10b-2597-43ed-a82a-ecd4f3255bea', '140311', 'LAMBAYEQUE', 'LAMBAYEQUE', 'SAN JOSE');
INSERT INTO "public"."ubigeos" VALUES ('e0620191-a8de-479a-bea2-98cfbc864e5a', '140312', 'LAMBAYEQUE', 'LAMBAYEQUE', 'TUCUME');
INSERT INTO "public"."ubigeos" VALUES ('0736cbc5-3b28-4937-9dcb-f0718760cb6a', '150101', 'LIMA', 'LIMA', 'LIMA');
INSERT INTO "public"."ubigeos" VALUES ('cd3f5a78-dee7-49e0-ba9b-da8bbc49f403', '150102', 'LIMA', 'LIMA', 'ANCON');
INSERT INTO "public"."ubigeos" VALUES ('90cc2698-bf69-418f-8bbe-eaf36d8e09b2', '150103', 'LIMA', 'LIMA', 'ATE');
INSERT INTO "public"."ubigeos" VALUES ('18fe4448-d34e-49d3-ada6-679175c23678', '150104', 'LIMA', 'LIMA', 'BARRANCO');
INSERT INTO "public"."ubigeos" VALUES ('0d36de53-f145-48eb-b02d-4d3422bd6903', '150105', 'LIMA', 'LIMA', 'BREÑA');
INSERT INTO "public"."ubigeos" VALUES ('366e21f5-93f0-4781-9ff7-d82e271837b7', '150106', 'LIMA', 'LIMA', 'CARABAYLLO');
INSERT INTO "public"."ubigeos" VALUES ('e774a7a3-b401-48ce-9fec-0380fc20e56b', '150107', 'LIMA', 'LIMA', 'CHACLACAYO');
INSERT INTO "public"."ubigeos" VALUES ('105e2ec6-7097-462d-92f5-fdc0c7b3ad6d', '150108', 'LIMA', 'LIMA', 'CHORRILLOS');
INSERT INTO "public"."ubigeos" VALUES ('d3e97da4-dbeb-4899-bebd-25c57cee9ee5', '150109', 'LIMA', 'LIMA', 'CIENEGUILLA');
INSERT INTO "public"."ubigeos" VALUES ('05f619d3-824b-426e-9940-85ceb4b255aa', '150110', 'LIMA', 'LIMA', 'COMAS');
INSERT INTO "public"."ubigeos" VALUES ('efa2973c-bba6-4f40-b76c-8ca74fc43e05', '150111', 'LIMA', 'LIMA', 'EL AGUSTINO');
INSERT INTO "public"."ubigeos" VALUES ('b251f133-fc53-4da0-8c9e-605c941ed4f1', '150112', 'LIMA', 'LIMA', 'INDEPENDENCIA');
INSERT INTO "public"."ubigeos" VALUES ('1836430a-5f70-460a-b29d-bbf3146742cf', '150113', 'LIMA', 'LIMA', 'JESUS MARIA');
INSERT INTO "public"."ubigeos" VALUES ('6b1740ee-3e29-4a0e-8260-56b0f3ed33f6', '150114', 'LIMA', 'LIMA', 'LA MOLINA');
INSERT INTO "public"."ubigeos" VALUES ('8eece304-3030-4239-97b5-aac5a46d97b2', '150115', 'LIMA', 'LIMA', 'LA VICTORIA');
INSERT INTO "public"."ubigeos" VALUES ('3dff9869-e4a0-440d-8466-57309a542b0f', '150116', 'LIMA', 'LIMA', 'LINCE');
INSERT INTO "public"."ubigeos" VALUES ('1fd43d20-31ab-4abd-8391-577ac88a64c4', '150117', 'LIMA', 'LIMA', 'LOS OLIVOS');
INSERT INTO "public"."ubigeos" VALUES ('f3ace444-45df-4d2b-94e2-039405bc9174', '150118', 'LIMA', 'LIMA', 'LURIGANCHO');
INSERT INTO "public"."ubigeos" VALUES ('7d7cb18c-b443-4940-84e3-47e4832fdaa7', '150119', 'LIMA', 'LIMA', 'LURIN');
INSERT INTO "public"."ubigeos" VALUES ('aefbb8e8-1db6-4ddb-bc17-4857513a9a24', '150120', 'LIMA', 'LIMA', 'MAGDALENA DEL MAR');
INSERT INTO "public"."ubigeos" VALUES ('d3c825c3-6447-44d8-b0f0-f2108e09ed47', '150121', 'LIMA', 'LIMA', 'PUEBLO LIBRE');
INSERT INTO "public"."ubigeos" VALUES ('bb09cde5-d22d-49e7-a175-febc87696455', '150122', 'LIMA', 'LIMA', 'MIRAFLORES');
INSERT INTO "public"."ubigeos" VALUES ('12c731a6-abe2-4e27-a395-5d18377c6a78', '150123', 'LIMA', 'LIMA', 'PACHACAMAC');
INSERT INTO "public"."ubigeos" VALUES ('a8c44e21-b9bf-440a-823f-9261ada9c1bb', '150124', 'LIMA', 'LIMA', 'PUCUSANA');
INSERT INTO "public"."ubigeos" VALUES ('a50a6e09-6a9e-43ab-9cbe-5e95da623ed0', '150125', 'LIMA', 'LIMA', 'PUENTE PIEDRA');
INSERT INTO "public"."ubigeos" VALUES ('189d536d-2ec1-4d3e-b13b-51164c461197', '150126', 'LIMA', 'LIMA', 'PUNTA HERMOSA');
INSERT INTO "public"."ubigeos" VALUES ('fff153c6-94e0-4bf8-b53a-b038034e70c0', '150127', 'LIMA', 'LIMA', 'PUNTA NEGRA');
INSERT INTO "public"."ubigeos" VALUES ('98e54c4c-8f4a-4a14-b484-8a5fcc664116', '150128', 'LIMA', 'LIMA', 'RIMAC');
INSERT INTO "public"."ubigeos" VALUES ('f0f117a5-7c7a-42a6-93e4-80e35104b98d', '150129', 'LIMA', 'LIMA', 'SAN BARTOLO');
INSERT INTO "public"."ubigeos" VALUES ('60f8c417-2f0b-49c3-a0e7-921397533f4c', '150130', 'LIMA', 'LIMA', 'SAN BORJA');
INSERT INTO "public"."ubigeos" VALUES ('c8deedb4-b9c3-42b4-a5a6-8d394b5263f2', '150131', 'LIMA', 'LIMA', 'SAN ISIDRO');
INSERT INTO "public"."ubigeos" VALUES ('780af517-a10a-4369-ad6f-9b4d4f0d87bf', '150132', 'LIMA', 'LIMA', 'SAN JUAN DE LURIGANCHO');
INSERT INTO "public"."ubigeos" VALUES ('e2d2ab27-138e-4dbd-a36d-c3febaf69fac', '150133', 'LIMA', 'LIMA', 'SAN JUAN DE MIRAFLORES');
INSERT INTO "public"."ubigeos" VALUES ('3118aa4e-690d-4598-874a-d547b9663af1', '150134', 'LIMA', 'LIMA', 'SAN LUIS');
INSERT INTO "public"."ubigeos" VALUES ('e54a3132-6de4-467a-9002-d2fc8ace1ed1', '150135', 'LIMA', 'LIMA', 'SAN MARTIN DE PORRES');
INSERT INTO "public"."ubigeos" VALUES ('be6dec90-f8be-437b-9010-925ef58cf1ba', '150136', 'LIMA', 'LIMA', 'SAN MIGUEL');
INSERT INTO "public"."ubigeos" VALUES ('274a58b3-7156-4cd8-a3cf-3bc2d8d812b6', '150137', 'LIMA', 'LIMA', 'SANTA ANITA');
INSERT INTO "public"."ubigeos" VALUES ('932b474b-f33c-497c-ad33-099573e22b36', '150138', 'LIMA', 'LIMA', 'SANTA MARIA DEL MAR');
INSERT INTO "public"."ubigeos" VALUES ('a0205f26-9d3a-487b-8c00-7545c589255c', '150139', 'LIMA', 'LIMA', 'SANTA ROSA');
INSERT INTO "public"."ubigeos" VALUES ('9d0c9333-c6d0-4cf1-b51a-cb9c9e10a849', '150140', 'LIMA', 'LIMA', 'SANTIAGO DE SURCO');
INSERT INTO "public"."ubigeos" VALUES ('6ed9105d-6997-46c7-bc13-18821d35887c', '150141', 'LIMA', 'LIMA', 'SURQUILLO');
INSERT INTO "public"."ubigeos" VALUES ('4f09ebd3-fac1-4512-9af3-dcacede32d96', '150142', 'LIMA', 'LIMA', 'VILLA EL SALVADOR');
INSERT INTO "public"."ubigeos" VALUES ('de49ef41-3332-4869-a64a-f3db5e00b95a', '150143', 'LIMA', 'LIMA', 'VILLA MARIA DEL TRIUNFO');
INSERT INTO "public"."ubigeos" VALUES ('1c628e72-62ba-48bb-ab78-b9e201c6a4c9', '150201', 'LIMA', 'BARRANCA', 'BARRANCA');
INSERT INTO "public"."ubigeos" VALUES ('f970a653-1afb-4441-9d22-ff30213fd856', '150202', 'LIMA', 'BARRANCA', 'PARAMONGA');
INSERT INTO "public"."ubigeos" VALUES ('7272fe51-edc0-48c7-bbde-d28af29fa895', '150203', 'LIMA', 'BARRANCA', 'PATIVILCA');
INSERT INTO "public"."ubigeos" VALUES ('347663ee-fee3-4114-a05d-67d2775302ad', '150204', 'LIMA', 'BARRANCA', 'SUPE');
INSERT INTO "public"."ubigeos" VALUES ('33e080f9-18cc-43c4-95da-3287c1bc91b5', '150205', 'LIMA', 'BARRANCA', 'SUPE PUERTO');
INSERT INTO "public"."ubigeos" VALUES ('457a299e-ad00-4ce5-9db2-e0d93e64f3ae', '150301', 'LIMA', 'CAJATAMBO', 'CAJATAMBO');
INSERT INTO "public"."ubigeos" VALUES ('bf5a5e98-5428-4bb6-82cd-dbabf3be5367', '150302', 'LIMA', 'CAJATAMBO', 'COPA');
INSERT INTO "public"."ubigeos" VALUES ('2e69b508-01f6-42de-8e58-108c27d7963d', '150303', 'LIMA', 'CAJATAMBO', 'GORGOR');
INSERT INTO "public"."ubigeos" VALUES ('2b321a5d-caa5-4fae-9c2b-87a6b67fceb2', '150304', 'LIMA', 'CAJATAMBO', 'HUANCAPON');
INSERT INTO "public"."ubigeos" VALUES ('2121ccaa-7798-454d-8488-6ca97d419f55', '150305', 'LIMA', 'CAJATAMBO', 'MANAS');
INSERT INTO "public"."ubigeos" VALUES ('3f22836e-6245-4965-9e9b-a52251eb15d4', '150401', 'LIMA', 'CANTA', 'CANTA');
INSERT INTO "public"."ubigeos" VALUES ('c74a1d85-5997-4d8c-b274-24e8eddd208b', '150402', 'LIMA', 'CANTA', 'ARAHUAY');
INSERT INTO "public"."ubigeos" VALUES ('d4cc0c4e-d723-4f35-aa31-432113908aae', '150403', 'LIMA', 'CANTA', 'HUAMANTANGA');
INSERT INTO "public"."ubigeos" VALUES ('1e3236fa-07d3-422f-bba2-be33f379095a', '150404', 'LIMA', 'CANTA', 'HUAROS');
INSERT INTO "public"."ubigeos" VALUES ('0a4e9f57-692f-4f3b-aade-da75fa219a51', '150405', 'LIMA', 'CANTA', 'LACHAQUI');
INSERT INTO "public"."ubigeos" VALUES ('fbabe317-0ac8-4a73-bc1a-82d3b4270a67', '150406', 'LIMA', 'CANTA', 'SAN BUENAVENTURA');
INSERT INTO "public"."ubigeos" VALUES ('446e5e3e-4218-490a-ac73-dcd1147f2952', '150407', 'LIMA', 'CANTA', 'SANTA ROSA DE QUIVES');
INSERT INTO "public"."ubigeos" VALUES ('d8ce0eec-a7a2-41e2-bab8-7d84d0efa165', '150501', 'LIMA', 'CAÑETE', 'SAN VICENTE DE CAÑETE');
INSERT INTO "public"."ubigeos" VALUES ('c7a385f2-e93d-42b9-8604-9ea8cd6ca4af', '150502', 'LIMA', 'CAÑETE', 'ASIA');
INSERT INTO "public"."ubigeos" VALUES ('35a66651-74d1-47f0-9fcc-3792e3aff46f', '150503', 'LIMA', 'CAÑETE', 'CALANGO');
INSERT INTO "public"."ubigeos" VALUES ('9a6437e2-852b-41f0-99e6-9cfbad6174ff', '150504', 'LIMA', 'CAÑETE', 'CERRO AZUL');
INSERT INTO "public"."ubigeos" VALUES ('3678d44c-03ac-4c8a-82b3-24a5d630ed61', '150505', 'LIMA', 'CAÑETE', 'CHILCA');
INSERT INTO "public"."ubigeos" VALUES ('308096a0-c616-4759-b9f5-a68bed1bd435', '150506', 'LIMA', 'CAÑETE', 'COAYLLO');
INSERT INTO "public"."ubigeos" VALUES ('be888822-90d8-4cd0-b186-b1c7d24871cd', '150507', 'LIMA', 'CAÑETE', 'IMPERIAL');
INSERT INTO "public"."ubigeos" VALUES ('a4d0d59b-8ba3-499b-8269-e3da3f366bf5', '150508', 'LIMA', 'CAÑETE', 'LUNAHUANA');
INSERT INTO "public"."ubigeos" VALUES ('29d2eefd-f5c3-4a8d-939b-3453ef9122b0', '150509', 'LIMA', 'CAÑETE', 'MALA');
INSERT INTO "public"."ubigeos" VALUES ('c38e6c89-74f6-406d-84e5-8c77a258ade2', '150510', 'LIMA', 'CAÑETE', 'NUEVO IMPERIAL');
INSERT INTO "public"."ubigeos" VALUES ('6a1f1b9d-d282-4e64-bdc7-a61273cc05de', '150511', 'LIMA', 'CAÑETE', 'PACARAN');
INSERT INTO "public"."ubigeos" VALUES ('29b9a3d4-9793-4653-9378-b48948b005e7', '150512', 'LIMA', 'CAÑETE', 'QUILMANA');
INSERT INTO "public"."ubigeos" VALUES ('e44412dc-f8b5-4074-bcd6-5727b71265be', '150513', 'LIMA', 'CAÑETE', 'SAN ANTONIO');
INSERT INTO "public"."ubigeos" VALUES ('75666a09-0930-4047-8143-759ad922811b', '150514', 'LIMA', 'CAÑETE', 'SAN LUIS');
INSERT INTO "public"."ubigeos" VALUES ('f6f47fc8-af78-4519-b971-da862f1e9c0b', '150515', 'LIMA', 'CAÑETE', 'SANTA CRUZ DE FLORES');
INSERT INTO "public"."ubigeos" VALUES ('69a04d2a-0dad-4491-bbcc-7d0c199efe58', '150516', 'LIMA', 'CAÑETE', 'ZUÑIGA');
INSERT INTO "public"."ubigeos" VALUES ('e1351088-9be9-493d-9814-1e94ed435954', '150601', 'LIMA', 'HUARAL', 'HUARAL');
INSERT INTO "public"."ubigeos" VALUES ('0854ed2a-c704-48bc-b616-baabba9c9164', '150602', 'LIMA', 'HUARAL', 'ATAVILLOS ALTO');
INSERT INTO "public"."ubigeos" VALUES ('b639235f-ad5f-4e92-a25c-cb54e6122f50', '150603', 'LIMA', 'HUARAL', 'ATAVILLOS BAJO');
INSERT INTO "public"."ubigeos" VALUES ('1103ce1a-3eae-45cc-8485-69a9bd082f98', '150604', 'LIMA', 'HUARAL', 'AUCALLAMA');
INSERT INTO "public"."ubigeos" VALUES ('32a42390-4f1f-4c3d-b656-5c5877eae962', '150605', 'LIMA', 'HUARAL', 'CHANCAY');
INSERT INTO "public"."ubigeos" VALUES ('6bf50e2d-955d-4740-809b-4894f492fe5f', '150606', 'LIMA', 'HUARAL', 'IHUARI');
INSERT INTO "public"."ubigeos" VALUES ('e801f123-4964-4c5a-92b6-140251258b5c', '150607', 'LIMA', 'HUARAL', 'LAMPIAN');
INSERT INTO "public"."ubigeos" VALUES ('23034444-165a-45c1-bd5b-2a71e9846c7b', '150608', 'LIMA', 'HUARAL', 'PACARAOS');
INSERT INTO "public"."ubigeos" VALUES ('fae28cc8-4079-409b-b620-85ddc2a03808', '150609', 'LIMA', 'HUARAL', 'SAN MIGUEL DE ACOS');
INSERT INTO "public"."ubigeos" VALUES ('113d4ce6-cb18-4ab2-a89d-e1b37fe675bc', '150610', 'LIMA', 'HUARAL', 'SANTA CRUZ DE ANDAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('430d25b6-0d20-4ee0-85fa-29df520b96ef', '150611', 'LIMA', 'HUARAL', 'SUMBILCA');
INSERT INTO "public"."ubigeos" VALUES ('c8197552-3a0e-4a2b-a257-5f424327b7c1', '150612', 'LIMA', 'HUARAL', 'VEINTISIETE DE NOVIEMBRE');
INSERT INTO "public"."ubigeos" VALUES ('f326b5e1-129b-4ad0-950e-713972d8a1e4', '150701', 'LIMA', 'HUAROCHIRI', 'MATUCANA');
INSERT INTO "public"."ubigeos" VALUES ('4bf09cb8-1250-44b0-991d-4b5bc0e9c138', '150702', 'LIMA', 'HUAROCHIRI', 'ANTIOQUIA');
INSERT INTO "public"."ubigeos" VALUES ('6fa3a77d-9adc-4969-951b-ee743b4093b8', '150703', 'LIMA', 'HUAROCHIRI', 'CALLAHUANCA');
INSERT INTO "public"."ubigeos" VALUES ('7c98dceb-3812-4fdd-90b6-5cb444b23ca7', '150704', 'LIMA', 'HUAROCHIRI', 'CARAMPOMA');
INSERT INTO "public"."ubigeos" VALUES ('2583e3e9-6e45-42e5-ac72-7a179bca17cd', '150705', 'LIMA', 'HUAROCHIRI', 'CHICLA');
INSERT INTO "public"."ubigeos" VALUES ('bbc19429-f31b-439d-a54d-8bfe11e0c338', '150706', 'LIMA', 'HUAROCHIRI', 'CUENCA');
INSERT INTO "public"."ubigeos" VALUES ('e03cb8ff-d918-4fb5-9198-92235f8abd27', '150707', 'LIMA', 'HUAROCHIRI', 'HUACHUPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('209acf74-5835-4402-b61e-b86839d10767', '150708', 'LIMA', 'HUAROCHIRI', 'HUANZA');
INSERT INTO "public"."ubigeos" VALUES ('3e97d31f-5f30-4f6a-96af-552fe4a4cad0', '150709', 'LIMA', 'HUAROCHIRI', 'HUAROCHIRI');
INSERT INTO "public"."ubigeos" VALUES ('42ad8b47-deaa-47d6-a781-5e7a5f3e917c', '150710', 'LIMA', 'HUAROCHIRI', 'LAHUAYTAMBO');
INSERT INTO "public"."ubigeos" VALUES ('2506965b-7649-4221-a389-d052f83a5794', '150711', 'LIMA', 'HUAROCHIRI', 'LANGA');
INSERT INTO "public"."ubigeos" VALUES ('37a908ca-643a-4a78-852f-9e456425cbf5', '150712', 'LIMA', 'HUAROCHIRI', 'SAN PEDRO DE LARAOS');
INSERT INTO "public"."ubigeos" VALUES ('36da0fe7-9d5a-4f33-a222-347d1ea6c47f', '150713', 'LIMA', 'HUAROCHIRI', 'MARIATANA');
INSERT INTO "public"."ubigeos" VALUES ('ac6f7ac5-d9c2-41d2-b1fa-117e3c3746bf', '150714', 'LIMA', 'HUAROCHIRI', 'RICARDO PALMA');
INSERT INTO "public"."ubigeos" VALUES ('f0df216d-95c4-4b76-95b9-c0e918f6010c', '150715', 'LIMA', 'HUAROCHIRI', 'SAN ANDRES DE TUPICOCHA');
INSERT INTO "public"."ubigeos" VALUES ('d966bd95-a460-4228-95e4-816607f5093c', '150716', 'LIMA', 'HUAROCHIRI', 'SAN ANTONIO');
INSERT INTO "public"."ubigeos" VALUES ('2ce5b898-c8ea-4b41-80c7-52397559bd28', '150717', 'LIMA', 'HUAROCHIRI', 'SAN BARTOLOME');
INSERT INTO "public"."ubigeos" VALUES ('fa070be4-72e7-4d2e-a5bb-155317af542e', '150718', 'LIMA', 'HUAROCHIRI', 'SAN DAMIAN');
INSERT INTO "public"."ubigeos" VALUES ('621e81e7-e737-4cd8-ba13-93571eb06ef3', '150719', 'LIMA', 'HUAROCHIRI', 'SAN JUAN DE IRIS');
INSERT INTO "public"."ubigeos" VALUES ('68dcee31-31c0-4fa5-89da-5ba856f5308e', '150720', 'LIMA', 'HUAROCHIRI', 'SAN JUAN DE TANTARANCHE');
INSERT INTO "public"."ubigeos" VALUES ('5a343ee4-bef8-4c81-b546-73a76841735d', '150721', 'LIMA', 'HUAROCHIRI', 'SAN LORENZO DE QUINTI');
INSERT INTO "public"."ubigeos" VALUES ('1de5a822-5728-4b74-acc3-8bb72623b29d', '150722', 'LIMA', 'HUAROCHIRI', 'SAN MATEO');
INSERT INTO "public"."ubigeos" VALUES ('57656842-d43b-45e8-ad70-411d81164c09', '150723', 'LIMA', 'HUAROCHIRI', 'SAN MATEO DE OTAO');
INSERT INTO "public"."ubigeos" VALUES ('4d9f2c5b-a586-4fe7-9607-79da8b102552', '150724', 'LIMA', 'HUAROCHIRI', 'SAN PEDRO DE CASTA');
INSERT INTO "public"."ubigeos" VALUES ('09680657-b4dc-48e6-a623-c87cadf3816e', '150725', 'LIMA', 'HUAROCHIRI', 'SAN PEDRO DE HUANCAYRE');
INSERT INTO "public"."ubigeos" VALUES ('80810419-a75c-4ea8-8e8e-9b133bcd2576', '150726', 'LIMA', 'HUAROCHIRI', 'SANGALLAYA');
INSERT INTO "public"."ubigeos" VALUES ('6eefdedc-80c8-4c8d-9b4f-d63dac0ab297', '150727', 'LIMA', 'HUAROCHIRI', 'SANTA CRUZ DE COCACHACRA');
INSERT INTO "public"."ubigeos" VALUES ('67668e8a-c769-4a7d-8537-3e904213e155', '150728', 'LIMA', 'HUAROCHIRI', 'SANTA EULALIA');
INSERT INTO "public"."ubigeos" VALUES ('3e495543-876a-412b-8ec4-0d6ec2c1e26c', '150729', 'LIMA', 'HUAROCHIRI', 'SANTIAGO DE ANCHUCAYA');
INSERT INTO "public"."ubigeos" VALUES ('10003611-422d-456b-a427-188a36ae5fd4', '150730', 'LIMA', 'HUAROCHIRI', 'SANTIAGO DE TUNA');
INSERT INTO "public"."ubigeos" VALUES ('8919fdac-6217-4a40-afc7-68e7dab8c48b', '150731', 'LIMA', 'HUAROCHIRI', 'SANTO DOMINGO DE LOS OLLEROS');
INSERT INTO "public"."ubigeos" VALUES ('993581f3-9693-41fd-9d41-914fe863d0e0', '150732', 'LIMA', 'HUAROCHIRI', 'SURCO');
INSERT INTO "public"."ubigeos" VALUES ('31eb6c58-14f1-4999-92e2-54aaa8f85cde', '150801', 'LIMA', 'HUAURA', 'HUACHO');
INSERT INTO "public"."ubigeos" VALUES ('c2b01ea9-1b98-4b3a-b206-ea137d7edc39', '150802', 'LIMA', 'HUAURA', 'AMBAR');
INSERT INTO "public"."ubigeos" VALUES ('59a83741-3f3b-418d-8a41-a95190e6ab9a', '150803', 'LIMA', 'HUAURA', 'CALETA DE CARQUIN');
INSERT INTO "public"."ubigeos" VALUES ('c9d925a7-4a9b-4412-bbbc-24a2362adbce', '150804', 'LIMA', 'HUAURA', 'CHECRAS');
INSERT INTO "public"."ubigeos" VALUES ('97a7dacb-18d7-40f3-8860-59902acd6f0a', '150805', 'LIMA', 'HUAURA', 'HUALMAY');
INSERT INTO "public"."ubigeos" VALUES ('5b1ddb9f-e135-4a58-8a6c-31a634c48a09', '150806', 'LIMA', 'HUAURA', 'HUAURA');
INSERT INTO "public"."ubigeos" VALUES ('9e38c906-84bc-4d7b-9170-bba6f3132dbe', '150807', 'LIMA', 'HUAURA', 'LEONCIO PRADO');
INSERT INTO "public"."ubigeos" VALUES ('3995e340-8a8c-4d37-a89a-23fc59127997', '150808', 'LIMA', 'HUAURA', 'PACCHO');
INSERT INTO "public"."ubigeos" VALUES ('13664de2-9c3d-49ba-9e9f-f3594240daab', '150809', 'LIMA', 'HUAURA', 'SANTA LEONOR');
INSERT INTO "public"."ubigeos" VALUES ('786cc6b0-49ac-4c3c-aed0-b63b4a7669d7', '150810', 'LIMA', 'HUAURA', 'SANTA MARIA');
INSERT INTO "public"."ubigeos" VALUES ('a0c020e3-d171-48bc-92cf-a1bbf2a77fde', '150811', 'LIMA', 'HUAURA', 'SAYAN');
INSERT INTO "public"."ubigeos" VALUES ('4b52beec-9772-4c45-bef0-ba01901b7508', '150812', 'LIMA', 'HUAURA', 'VEGUETA');
INSERT INTO "public"."ubigeos" VALUES ('f759b05b-066d-4237-86bc-a438a1cf94c5', '150901', 'LIMA', 'OYON', 'OYON');
INSERT INTO "public"."ubigeos" VALUES ('b013ae6f-1941-461b-b18d-57dc9968c910', '150902', 'LIMA', 'OYON', 'ANDAJES');
INSERT INTO "public"."ubigeos" VALUES ('0de58d1e-a674-4af2-8fb1-c94de5851873', '150903', 'LIMA', 'OYON', 'CAUJUL');
INSERT INTO "public"."ubigeos" VALUES ('cd273792-403d-4277-9e52-9649fbad2cd0', '150904', 'LIMA', 'OYON', 'COCHAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('9fce5d0f-a699-4130-8173-bdac75b70a7a', '150905', 'LIMA', 'OYON', 'NAVAN');
INSERT INTO "public"."ubigeos" VALUES ('b4d56524-0e80-4030-bce3-72472ecbebdc', '150906', 'LIMA', 'OYON', 'PACHANGARA');
INSERT INTO "public"."ubigeos" VALUES ('2c95f6ea-67c3-4609-ae40-dc7b93a9d898', '151001', 'LIMA', 'YAUYOS', 'YAUYOS');
INSERT INTO "public"."ubigeos" VALUES ('18cdf673-3bfd-46af-ac68-0b92f99a1140', '151002', 'LIMA', 'YAUYOS', 'ALIS');
INSERT INTO "public"."ubigeos" VALUES ('f89a1cac-4e56-4731-b1e6-06169e04d0c7', '151003', 'LIMA', 'YAUYOS', 'ALLAUCA');
INSERT INTO "public"."ubigeos" VALUES ('dd54904d-879d-40fb-a3a8-2fd28efffd57', '151004', 'LIMA', 'YAUYOS', 'AYAVIRI');
INSERT INTO "public"."ubigeos" VALUES ('5dd4cf0a-f8b7-40b9-a77e-b4b9631fa06c', '151005', 'LIMA', 'YAUYOS', 'AZANGARO');
INSERT INTO "public"."ubigeos" VALUES ('b1dd6eed-609b-42ad-a6ab-cf0375e178d7', '151006', 'LIMA', 'YAUYOS', 'CACRA');
INSERT INTO "public"."ubigeos" VALUES ('c8e76a62-88a5-431f-9805-a946d289e57f', '151007', 'LIMA', 'YAUYOS', 'CARANIA');
INSERT INTO "public"."ubigeos" VALUES ('b38832b3-831c-47dd-81a3-f88831e95f9d', '151008', 'LIMA', 'YAUYOS', 'CATAHUASI');
INSERT INTO "public"."ubigeos" VALUES ('3b83dcec-fee1-43e4-b86d-eb0b06821e2f', '151009', 'LIMA', 'YAUYOS', 'CHOCOS');
INSERT INTO "public"."ubigeos" VALUES ('886ca63e-a83f-4758-a403-a497a9d00d18', '151010', 'LIMA', 'YAUYOS', 'COCHAS');
INSERT INTO "public"."ubigeos" VALUES ('58cf4122-beec-45fd-b9e2-360a52944a47', '151011', 'LIMA', 'YAUYOS', 'COLONIA');
INSERT INTO "public"."ubigeos" VALUES ('ce766739-b9a6-4844-9bb9-414d0c4c3cbb', '151012', 'LIMA', 'YAUYOS', 'HONGOS');
INSERT INTO "public"."ubigeos" VALUES ('2ad8443e-0727-44e2-ade7-1875763cb24a', '151013', 'LIMA', 'YAUYOS', 'HUAMPARA');
INSERT INTO "public"."ubigeos" VALUES ('f92b6aec-3eb1-4713-a098-05a28586416f', '151014', 'LIMA', 'YAUYOS', 'HUANCAYA');
INSERT INTO "public"."ubigeos" VALUES ('b5780e95-a750-4541-af61-a8dcfe69a04e', '151015', 'LIMA', 'YAUYOS', 'HUANGASCAR');
INSERT INTO "public"."ubigeos" VALUES ('347473e1-b986-4495-a797-e513d2155349', '151016', 'LIMA', 'YAUYOS', 'HUANTAN');
INSERT INTO "public"."ubigeos" VALUES ('4930ffb4-8099-49df-961a-9e83633242a0', '151017', 'LIMA', 'YAUYOS', 'HUAÑEC');
INSERT INTO "public"."ubigeos" VALUES ('0fff7d79-a60e-47c2-ac2c-fe04861daaab', '151018', 'LIMA', 'YAUYOS', 'LARAOS');
INSERT INTO "public"."ubigeos" VALUES ('d8a3f26d-8b0b-4e16-b0bc-31f9329b8e6b', '151019', 'LIMA', 'YAUYOS', 'LINCHA');
INSERT INTO "public"."ubigeos" VALUES ('8b51e537-15fb-404b-b528-f370e68a322e', '151020', 'LIMA', 'YAUYOS', 'MADEAN');
INSERT INTO "public"."ubigeos" VALUES ('3e9e8638-1953-44bd-8e87-5569bef813bb', '151021', 'LIMA', 'YAUYOS', 'MIRAFLORES');
INSERT INTO "public"."ubigeos" VALUES ('e6c473f0-5507-4ec5-9b2c-168e802dfcf0', '151022', 'LIMA', 'YAUYOS', 'OMAS');
INSERT INTO "public"."ubigeos" VALUES ('60a74fef-9f0c-487d-b1b9-0f6db048d7f7', '151023', 'LIMA', 'YAUYOS', 'PUTINZA');
INSERT INTO "public"."ubigeos" VALUES ('8fcc7c15-e2f5-4e5e-8d29-3c739a6ab9ef', '151024', 'LIMA', 'YAUYOS', 'QUINCHES');
INSERT INTO "public"."ubigeos" VALUES ('a2346994-94c0-4d6f-9ef6-db0c734ca3ea', '151025', 'LIMA', 'YAUYOS', 'QUINOCAY');
INSERT INTO "public"."ubigeos" VALUES ('924c7528-623e-40f7-899a-2769b7b57a25', '151026', 'LIMA', 'YAUYOS', 'SAN JOAQUIN');
INSERT INTO "public"."ubigeos" VALUES ('ec8a6bfa-7d35-4c49-a40d-f0f32402259b', '151027', 'LIMA', 'YAUYOS', 'SAN PEDRO DE PILAS');
INSERT INTO "public"."ubigeos" VALUES ('56098abe-f01f-4149-a19b-1167b8bdd29b', '151028', 'LIMA', 'YAUYOS', 'TANTA');
INSERT INTO "public"."ubigeos" VALUES ('27334fdb-2c47-4db7-85b1-17d900546692', '151029', 'LIMA', 'YAUYOS', 'TAURIPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('0d4e23e8-ed1e-4ba5-a7e9-f711ddc2db0e', '151030', 'LIMA', 'YAUYOS', 'TOMAS');
INSERT INTO "public"."ubigeos" VALUES ('49c75386-6f7b-4fd4-8b5c-764242ace779', '151031', 'LIMA', 'YAUYOS', 'TUPE');
INSERT INTO "public"."ubigeos" VALUES ('35775a97-0b45-4b0f-a2bd-d687ee51c304', '151032', 'LIMA', 'YAUYOS', 'VIÑAC');
INSERT INTO "public"."ubigeos" VALUES ('74707183-bfff-4b88-ab8e-05c60153ea43', '151033', 'LIMA', 'YAUYOS', 'VITIS');
INSERT INTO "public"."ubigeos" VALUES ('eaa9ac45-2c74-4aff-8667-f3a2d8594b82', '160101', 'LORETO', 'MAYNAS', 'IQUITOS');
INSERT INTO "public"."ubigeos" VALUES ('4c99c56f-0824-45f2-8c18-d95e21ac8a1d', '160102', 'LORETO', 'MAYNAS', 'ALTO NANAY');
INSERT INTO "public"."ubigeos" VALUES ('f8522ee9-d821-4e5b-94fe-26742163ad28', '160103', 'LORETO', 'MAYNAS', 'FERNANDO LORES');
INSERT INTO "public"."ubigeos" VALUES ('fe5cb2d2-961d-411c-a3a8-7d4881c0b014', '160104', 'LORETO', 'MAYNAS', 'INDIANA');
INSERT INTO "public"."ubigeos" VALUES ('d5dbb9db-3985-406b-ade6-d3299f26052c', '160105', 'LORETO', 'MAYNAS', 'LAS AMAZONAS');
INSERT INTO "public"."ubigeos" VALUES ('3052d492-5efe-4c29-a818-644dd1bd6e8f', '160106', 'LORETO', 'MAYNAS', 'MAZAN');
INSERT INTO "public"."ubigeos" VALUES ('382318b5-d683-4900-9f8a-82b4001fcfdb', '160107', 'LORETO', 'MAYNAS', 'NAPO');
INSERT INTO "public"."ubigeos" VALUES ('ccc9e2eb-fee0-4991-89e4-2ded1f189808', '160108', 'LORETO', 'MAYNAS', 'PUNCHANA');
INSERT INTO "public"."ubigeos" VALUES ('ece4ee74-a4d1-469b-933b-6d88cc9a5254', '160110', 'LORETO', 'MAYNAS', 'TORRES CAUSANA');
INSERT INTO "public"."ubigeos" VALUES ('3bb24430-4f5b-44e2-a36d-44c88bffa99e', '160112', 'LORETO', 'MAYNAS', 'BELEN');
INSERT INTO "public"."ubigeos" VALUES ('60b9e85a-5a47-4bb5-a16b-fcdfe036aa82', '160113', 'LORETO', 'MAYNAS', 'SAN JUAN BAUTISTA');
INSERT INTO "public"."ubigeos" VALUES ('c3b698a2-9bc0-40f6-bca5-e5616dfe7eaf', '160201', 'LORETO', 'ALTO AMAZONAS', 'YURIMAGUAS');
INSERT INTO "public"."ubigeos" VALUES ('3ba138a6-344f-4f7e-8160-99ad7b11edb1', '160202', 'LORETO', 'ALTO AMAZONAS', 'BALSAPUERTO');
INSERT INTO "public"."ubigeos" VALUES ('c2182300-8b73-44d7-86d0-e1bba208cd47', '160205', 'LORETO', 'ALTO AMAZONAS', 'JEBEROS');
INSERT INTO "public"."ubigeos" VALUES ('9a7ff7b4-9352-426b-acce-04b8394524a8', '160206', 'LORETO', 'ALTO AMAZONAS', 'LAGUNAS');
INSERT INTO "public"."ubigeos" VALUES ('403ad37a-ef50-494b-b47b-b66c07ecf7bb', '160210', 'LORETO', 'ALTO AMAZONAS', 'SANTA CRUZ');
INSERT INTO "public"."ubigeos" VALUES ('391dfff1-c05f-45cf-bb8b-13d449405286', '160211', 'LORETO', 'ALTO AMAZONAS', 'TENIENTE CESAR LOPEZ ROJAS');
INSERT INTO "public"."ubigeos" VALUES ('53ee87cb-254a-4e1b-8302-d30feac9f579', '160301', 'LORETO', 'LORETO', 'NAUTA');
INSERT INTO "public"."ubigeos" VALUES ('9eddcb6d-8c2f-4782-bbba-66fbfcf2ffb4', '160302', 'LORETO', 'LORETO', 'PARINARI');
INSERT INTO "public"."ubigeos" VALUES ('2ec7fa7a-a733-4036-b99d-e740f3dc4878', '160303', 'LORETO', 'LORETO', 'TIGRE');
INSERT INTO "public"."ubigeos" VALUES ('de3055b0-a0c0-4485-9e45-3a3833ea5595', '160304', 'LORETO', 'LORETO', 'TROMPETEROS');
INSERT INTO "public"."ubigeos" VALUES ('49c4bbd8-02bf-4bed-b699-ed83dd230e09', '160305', 'LORETO', 'LORETO', 'URARINAS');
INSERT INTO "public"."ubigeos" VALUES ('af0ddd68-73dc-4f0c-b363-268304f9666f', '160401', 'LORETO', 'MARISCAL RAMON CASTILLA', 'RAMON CASTILLA');
INSERT INTO "public"."ubigeos" VALUES ('aaaa14f3-025f-4144-88d9-668e278ab266', '160402', 'LORETO', 'MARISCAL RAMON CASTILLA', 'PEBAS');
INSERT INTO "public"."ubigeos" VALUES ('0b2ea0bd-fed1-42fc-ae34-b42f618c3f5b', '160403', 'LORETO', 'MARISCAL RAMON CASTILLA', 'YAVARI');
INSERT INTO "public"."ubigeos" VALUES ('f4a82d36-9253-40ab-baa1-530aa3e32e10', '160404', 'LORETO', 'MARISCAL RAMON CASTILLA', 'SAN PABLO');
INSERT INTO "public"."ubigeos" VALUES ('948a0c69-f501-4ddb-a115-c493c65dd618', '160501', 'LORETO', 'REQUENA', 'REQUENA');
INSERT INTO "public"."ubigeos" VALUES ('7e2d748a-3689-4dbb-ae68-3aa005c05880', '160502', 'LORETO', 'REQUENA', 'ALTO TAPICHE');
INSERT INTO "public"."ubigeos" VALUES ('8472dbfc-5c63-4207-aca3-30ccc94a830c', '160503', 'LORETO', 'REQUENA', 'CAPELO');
INSERT INTO "public"."ubigeos" VALUES ('4fc049ef-522f-47ba-bdcd-95e434bce52b', '160504', 'LORETO', 'REQUENA', 'EMILIO SAN MARTIN');
INSERT INTO "public"."ubigeos" VALUES ('13bcd7fa-f7ec-44e0-b6d9-5cb1ab4ea5a3', '160505', 'LORETO', 'REQUENA', 'MAQUIA');
INSERT INTO "public"."ubigeos" VALUES ('4a985e93-d9cf-4bd2-b2b0-c322c94bf365', '160506', 'LORETO', 'REQUENA', 'PUINAHUA');
INSERT INTO "public"."ubigeos" VALUES ('6027e043-a76b-4e12-b041-22745b897dc6', '160507', 'LORETO', 'REQUENA', 'SAQUENA');
INSERT INTO "public"."ubigeos" VALUES ('122062f9-bf8b-479a-9647-b436088eb3b6', '160508', 'LORETO', 'REQUENA', 'SOPLIN');
INSERT INTO "public"."ubigeos" VALUES ('37fd6ddc-621d-4acb-adf2-0d975ececc78', '160509', 'LORETO', 'REQUENA', 'TAPICHE');
INSERT INTO "public"."ubigeos" VALUES ('21631552-ca36-4da5-8202-b2ddec0f8909', '160510', 'LORETO', 'REQUENA', 'JENARO HERRERA');
INSERT INTO "public"."ubigeos" VALUES ('4b9c5f0f-bf1d-40c9-9bb4-0c9c17d30d80', '160511', 'LORETO', 'REQUENA', 'YAQUERANA');
INSERT INTO "public"."ubigeos" VALUES ('ed2955ca-1701-45af-8dee-f3efb94bd2d5', '160601', 'LORETO', 'UCAYALI', 'CONTAMANA');
INSERT INTO "public"."ubigeos" VALUES ('8ee9f479-8b89-41e3-a1fa-b71e98e70b0d', '160602', 'LORETO', 'UCAYALI', 'INAHUAYA');
INSERT INTO "public"."ubigeos" VALUES ('6ac0aeb7-0389-4ef4-87e2-c6072d20eb9a', '160603', 'LORETO', 'UCAYALI', 'PADRE MARQUEZ');
INSERT INTO "public"."ubigeos" VALUES ('aa579d45-65e7-4f1c-84ef-e981e87ed0ce', '160604', 'LORETO', 'UCAYALI', 'PAMPA HERMOSA');
INSERT INTO "public"."ubigeos" VALUES ('f03c1082-60d1-43f8-a5a6-33eb525565d1', '160605', 'LORETO', 'UCAYALI', 'SARAYACU');
INSERT INTO "public"."ubigeos" VALUES ('ccafaccb-d7ed-4ab9-bab8-7882b4d008f0', '160606', 'LORETO', 'UCAYALI', 'VARGAS GUERRA');
INSERT INTO "public"."ubigeos" VALUES ('a27bf375-4f6b-434d-bd4e-6d35c704a77b', '160701', 'LORETO', 'DATEM DEL MARAÑON', 'BARRANCA');
INSERT INTO "public"."ubigeos" VALUES ('00b78d0e-f817-48a6-af12-a28ea92baaf6', '160702', 'LORETO', 'DATEM DEL MARAÑON', 'CAHUAPANAS');
INSERT INTO "public"."ubigeos" VALUES ('ae308464-7420-4fb5-bbcb-e98924d599db', '160703', 'LORETO', 'DATEM DEL MARAÑON', 'MANSERICHE');
INSERT INTO "public"."ubigeos" VALUES ('aa62a1b5-eacd-48bf-bfda-fd530d4dbe8d', '160704', 'LORETO', 'DATEM DEL MARAÑON', 'MORONA');
INSERT INTO "public"."ubigeos" VALUES ('8739cc2b-24d9-45ce-b39d-98fb6952cdaf', '160705', 'LORETO', 'DATEM DEL MARAÑON', 'PASTAZA');
INSERT INTO "public"."ubigeos" VALUES ('3393bb3f-23a3-4da3-9a30-2075052c316c', '160706', 'LORETO', 'DATEM DEL MARAÑON', 'ANDOAS');
INSERT INTO "public"."ubigeos" VALUES ('609594d8-4b09-493b-b6c6-c367208f3e17', '160801', 'LORETO', 'PUTUMAYO', 'PUTUMAYO');
INSERT INTO "public"."ubigeos" VALUES ('a146b86e-c27b-4fa0-8f46-58bc44585b46', '160802', 'LORETO', 'PUTUMAYO', 'ROSA PANDURO');
INSERT INTO "public"."ubigeos" VALUES ('d88efc35-f215-43ce-8624-140c6d37d2a9', '160803', 'LORETO', 'PUTUMAYO', 'TENIENTE MANUEL CLAVERO');
INSERT INTO "public"."ubigeos" VALUES ('ece891c7-9d15-4779-a50b-acee6b49a4fd', '160804', 'LORETO', 'PUTUMAYO', 'YAGUAS');
INSERT INTO "public"."ubigeos" VALUES ('310e62e0-f02f-4d26-b870-7793bef4cc2d', '170101', 'MADRE DE DIOS', 'TAMBOPATA', 'TAMBOPATA');
INSERT INTO "public"."ubigeos" VALUES ('e2bc025e-5372-4784-8154-7d08d8581a3d', '170102', 'MADRE DE DIOS', 'TAMBOPATA', 'INAMBARI');
INSERT INTO "public"."ubigeos" VALUES ('e528cca8-13e1-4ce2-b220-06cf8d1c4f72', '170103', 'MADRE DE DIOS', 'TAMBOPATA', 'LAS PIEDRAS');
INSERT INTO "public"."ubigeos" VALUES ('e16eaa2a-944b-4ae3-94cd-b549eaeee5c2', '170104', 'MADRE DE DIOS', 'TAMBOPATA', 'LABERINTO');
INSERT INTO "public"."ubigeos" VALUES ('e512a964-fa1e-420f-bfe2-68768bd12888', '170201', 'MADRE DE DIOS', 'MANU', 'MANU');
INSERT INTO "public"."ubigeos" VALUES ('446b460d-265e-4116-b7c6-c4ff07d44f61', '170202', 'MADRE DE DIOS', 'MANU', 'FITZCARRALD');
INSERT INTO "public"."ubigeos" VALUES ('36041707-abfd-44f1-9205-a79a25d5d8e5', '170203', 'MADRE DE DIOS', 'MANU', 'MADRE DE DIOS');
INSERT INTO "public"."ubigeos" VALUES ('ecb9f635-65fe-4693-aea3-e1d37d915247', '170204', 'MADRE DE DIOS', 'MANU', 'HUEPETUHE');
INSERT INTO "public"."ubigeos" VALUES ('7a44e4a6-f6cd-4c16-a76d-02bfa6eb7fd3', '170301', 'MADRE DE DIOS', 'TAHUAMANU', 'IÑAPARI');
INSERT INTO "public"."ubigeos" VALUES ('bccceacb-3255-4692-8f2d-d69cc74ef6bf', '170302', 'MADRE DE DIOS', 'TAHUAMANU', 'IBERIA');
INSERT INTO "public"."ubigeos" VALUES ('09ed59e0-5753-46d9-8e1d-22f33232e021', '170303', 'MADRE DE DIOS', 'TAHUAMANU', 'TAHUAMANU');
INSERT INTO "public"."ubigeos" VALUES ('94be195a-cb96-448f-b9c0-81c50376407e', '180101', 'MOQUEGUA', 'MARISCAL NIETO', 'MOQUEGUA');
INSERT INTO "public"."ubigeos" VALUES ('ddaded3b-59f1-4e0a-a30a-6105dbaa8525', '180102', 'MOQUEGUA', 'MARISCAL NIETO', 'CARUMAS');
INSERT INTO "public"."ubigeos" VALUES ('72d0c5e1-0576-49f7-9f48-24803780c781', '180103', 'MOQUEGUA', 'MARISCAL NIETO', 'CUCHUMBAYA');
INSERT INTO "public"."ubigeos" VALUES ('7b46c991-7a16-429d-afe5-ee656223ba52', '180104', 'MOQUEGUA', 'MARISCAL NIETO', 'SAMEGUA');
INSERT INTO "public"."ubigeos" VALUES ('2439c6b0-c429-492a-9118-f1a16237c61c', '180105', 'MOQUEGUA', 'MARISCAL NIETO', 'SAN CRISTOBAL');
INSERT INTO "public"."ubigeos" VALUES ('ff0a97a2-33f3-4581-8030-a2ea41abf29b', '180106', 'MOQUEGUA', 'MARISCAL NIETO', 'TORATA');
INSERT INTO "public"."ubigeos" VALUES ('73d265e4-f43f-46a1-986f-234242551cdd', '180107', 'MOQUEGUA', 'MARISCAL NIETO', 'SAN ANTONIO');
INSERT INTO "public"."ubigeos" VALUES ('2e1675eb-6284-471a-9ab4-682687a9439f', '180201', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'OMATE');
INSERT INTO "public"."ubigeos" VALUES ('3f829a5e-01bd-4fdb-bc85-e52ac3cda671', '180202', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'CHOJATA');
INSERT INTO "public"."ubigeos" VALUES ('41e28746-cc10-4837-a924-21e81376ca37', '180203', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'COALAQUE');
INSERT INTO "public"."ubigeos" VALUES ('2a30523c-eb3c-47dd-a380-1f0ff06e0ee5', '180204', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'ICHUÑA');
INSERT INTO "public"."ubigeos" VALUES ('f0006044-997a-44f9-96bf-97d7d8c2a291', '180205', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'LA CAPILLA');
INSERT INTO "public"."ubigeos" VALUES ('21a95a8b-f118-4538-8ab1-b968269aa682', '180206', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'LLOQUE');
INSERT INTO "public"."ubigeos" VALUES ('c73871c4-0e3e-440c-bdd0-6b773b6111b2', '180207', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'MATALAQUE');
INSERT INTO "public"."ubigeos" VALUES ('096deb68-1c31-4d73-9709-02b9e3763fe1', '180208', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'PUQUINA');
INSERT INTO "public"."ubigeos" VALUES ('c53f9e9c-f2cb-46ae-b54d-2598224fa895', '180209', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'QUINISTAQUILLAS');
INSERT INTO "public"."ubigeos" VALUES ('709aba22-83b1-4b15-aed1-bd668c5205ca', '180210', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'UBINAS');
INSERT INTO "public"."ubigeos" VALUES ('e42d3e20-8954-4c0d-a40c-eb4296fd7965', '180211', 'MOQUEGUA', 'GENERAL SANCHEZ CERRO', 'YUNGA');
INSERT INTO "public"."ubigeos" VALUES ('1505b831-ff88-4637-b6a3-0b570c005525', '180301', 'MOQUEGUA', 'ILO', 'ILO');
INSERT INTO "public"."ubigeos" VALUES ('398b9402-6528-4d90-bb55-08cff69df18a', '180302', 'MOQUEGUA', 'ILO', 'EL ALGARROBAL');
INSERT INTO "public"."ubigeos" VALUES ('79baea8a-b2fb-4c3d-a978-f54cf4adfc7b', '180303', 'MOQUEGUA', 'ILO', 'PACOCHA');
INSERT INTO "public"."ubigeos" VALUES ('8a79cc57-cc6f-4014-bf48-8d8a1da7a89c', '190101', 'PASCO', 'PASCO', 'CHAUPIMARCA');
INSERT INTO "public"."ubigeos" VALUES ('b323712f-4a96-4fde-9752-8d7dacd6aa5e', '190102', 'PASCO', 'PASCO', 'HUACHON');
INSERT INTO "public"."ubigeos" VALUES ('874160ee-a6be-46f2-b937-523a1bd26169', '190103', 'PASCO', 'PASCO', 'HUARIACA');
INSERT INTO "public"."ubigeos" VALUES ('9862682a-33df-4cbc-883b-e0f196649687', '190104', 'PASCO', 'PASCO', 'HUAYLLAY');
INSERT INTO "public"."ubigeos" VALUES ('691493d7-a4fb-4524-aa70-d12b7c68e1c5', '190105', 'PASCO', 'PASCO', 'NINACACA');
INSERT INTO "public"."ubigeos" VALUES ('1da13270-85d7-4213-bfd6-215eeab59aeb', '190106', 'PASCO', 'PASCO', 'PALLANCHACRA');
INSERT INTO "public"."ubigeos" VALUES ('607b2b5d-cc48-4d9a-8e3e-477631b8f0fa', '190107', 'PASCO', 'PASCO', 'PAUCARTAMBO');
INSERT INTO "public"."ubigeos" VALUES ('6d647c7a-4609-48e5-801f-35b8ccccfc78', '190108', 'PASCO', 'PASCO', 'SAN FRANCISCO DE ASIS DE YARUSYACAN');
INSERT INTO "public"."ubigeos" VALUES ('a0267ab3-d00e-4b77-9907-22f96ada6087', '190109', 'PASCO', 'PASCO', 'SIMON BOLIVAR');
INSERT INTO "public"."ubigeos" VALUES ('f764b2c7-c6af-451c-a2c2-aea1600d9274', '190110', 'PASCO', 'PASCO', 'TICLACAYAN');
INSERT INTO "public"."ubigeos" VALUES ('285a6bdf-1e68-42dd-aea4-2d27a1cd638f', '190111', 'PASCO', 'PASCO', 'TINYAHUARCO');
INSERT INTO "public"."ubigeos" VALUES ('06440003-53fd-4f48-aba5-a228e4d1ff26', '190112', 'PASCO', 'PASCO', 'VICCO');
INSERT INTO "public"."ubigeos" VALUES ('dfbb9127-1ab7-4be5-8129-a20c4e4b2f4b', '190113', 'PASCO', 'PASCO', 'YANACANCHA');
INSERT INTO "public"."ubigeos" VALUES ('c892c953-32da-4635-9787-d04fcecbd91a', '190201', 'PASCO', 'DANIEL ALCIDES CARRION', 'YANAHUANCA');
INSERT INTO "public"."ubigeos" VALUES ('491f6164-93ac-499f-a73c-c422c2cdc582', '190202', 'PASCO', 'DANIEL ALCIDES CARRION', 'CHACAYAN');
INSERT INTO "public"."ubigeos" VALUES ('f4deeb1c-0b79-454d-8772-b4a0fd902725', '190203', 'PASCO', 'DANIEL ALCIDES CARRION', 'GOYLLARISQUIZGA');
INSERT INTO "public"."ubigeos" VALUES ('6a98c699-f7c8-4833-8257-e2bf64938ea4', '190204', 'PASCO', 'DANIEL ALCIDES CARRION', 'PAUCAR');
INSERT INTO "public"."ubigeos" VALUES ('93c2036a-d8f3-4b4d-b82c-71b584df09fc', '190205', 'PASCO', 'DANIEL ALCIDES CARRION', 'SAN PEDRO DE PILLAO');
INSERT INTO "public"."ubigeos" VALUES ('9afc440d-1a3e-4609-a8d6-913d541f7862', '190206', 'PASCO', 'DANIEL ALCIDES CARRION', 'SANTA ANA DE TUSI');
INSERT INTO "public"."ubigeos" VALUES ('a91b8fe0-c588-4dcf-9fa4-a9df1b6fb5e9', '190207', 'PASCO', 'DANIEL ALCIDES CARRION', 'TAPUC');
INSERT INTO "public"."ubigeos" VALUES ('33392f6a-9d30-4551-84f6-5435b4f726fa', '190208', 'PASCO', 'DANIEL ALCIDES CARRION', 'VILCABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('95d5db06-b38c-4663-9865-66ed91578f75', '190301', 'PASCO', 'OXAPAMPA', 'OXAPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('d1b15f24-e783-4056-b992-fcdb1b987263', '190302', 'PASCO', 'OXAPAMPA', 'CHONTABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('9f3fc40e-d1bc-4b67-9c5f-6bef5062d53c', '190303', 'PASCO', 'OXAPAMPA', 'HUANCABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('fe8ef54c-2bc9-4638-b1f0-9bb2e2dbd502', '190304', 'PASCO', 'OXAPAMPA', 'PALCAZU');
INSERT INTO "public"."ubigeos" VALUES ('fbbc857b-73a9-4a45-986a-0f2913b39572', '190305', 'PASCO', 'OXAPAMPA', 'POZUZO');
INSERT INTO "public"."ubigeos" VALUES ('195342c0-b42f-4655-8cfb-0da9b492d7c5', '190306', 'PASCO', 'OXAPAMPA', 'PUERTO BERMUDEZ');
INSERT INTO "public"."ubigeos" VALUES ('997f3b66-7c65-4a5b-ba28-dbd0776c99a5', '190307', 'PASCO', 'OXAPAMPA', 'VILLA RICA');
INSERT INTO "public"."ubigeos" VALUES ('08b665a7-a4cd-4a18-9b4b-2dd56e9b2d46', '190308', 'PASCO', 'OXAPAMPA', 'CONSTITUCION');
INSERT INTO "public"."ubigeos" VALUES ('9dabe7cb-947d-40f2-b989-f9ebffbc3c28', '200101', 'PIURA', 'PIURA', 'PIURA');
INSERT INTO "public"."ubigeos" VALUES ('d4c3fa59-725c-4f2a-85e1-f8669f78ebe1', '200104', 'PIURA', 'PIURA', 'CASTILLA');
INSERT INTO "public"."ubigeos" VALUES ('4f24c9f3-b3bf-4023-8872-be6ffd3c5797', '200105', 'PIURA', 'PIURA', 'CATACAOS');
INSERT INTO "public"."ubigeos" VALUES ('990b027f-6025-4e84-b322-f811f8d2917f', '200107', 'PIURA', 'PIURA', 'CURA MORI');
INSERT INTO "public"."ubigeos" VALUES ('2d6b5ca4-7cc4-4c0e-b7e0-a477d3c50d3e', '200108', 'PIURA', 'PIURA', 'EL TALLAN');
INSERT INTO "public"."ubigeos" VALUES ('37f9a62d-105b-4b72-b83b-e77c3689ba64', '200109', 'PIURA', 'PIURA', 'LA ARENA');
INSERT INTO "public"."ubigeos" VALUES ('8f9e1a6a-07e5-416c-b6af-dd3160c547c5', '200110', 'PIURA', 'PIURA', 'LA UNION');
INSERT INTO "public"."ubigeos" VALUES ('1f8283d9-5693-433c-b8d2-8227a0778d14', '200111', 'PIURA', 'PIURA', 'LAS LOMAS');
INSERT INTO "public"."ubigeos" VALUES ('9428f3e5-2782-463c-99a7-d7c92ce75e67', '200114', 'PIURA', 'PIURA', 'TAMBO GRANDE');
INSERT INTO "public"."ubigeos" VALUES ('a5d021fd-ee30-4090-9e08-84e7ba208181', '200115', 'PIURA', 'PIURA', 'VEINTISEIS DE OCTUBRE');
INSERT INTO "public"."ubigeos" VALUES ('cc0a7eec-bb2f-4af8-9d63-ccb3169319a6', '200201', 'PIURA', 'AYABACA', 'AYABACA');
INSERT INTO "public"."ubigeos" VALUES ('08301029-aefc-456c-a546-fec07b428602', '200202', 'PIURA', 'AYABACA', 'FRIAS');
INSERT INTO "public"."ubigeos" VALUES ('ae599a6a-e3ca-4618-834a-da6d259cfa2d', '200203', 'PIURA', 'AYABACA', 'JILILI');
INSERT INTO "public"."ubigeos" VALUES ('031021fb-f1d1-4007-bee1-c437f7e2d390', '200204', 'PIURA', 'AYABACA', 'LAGUNAS');
INSERT INTO "public"."ubigeos" VALUES ('550ec4e8-b2ed-449e-9d0d-2dca5daff719', '200205', 'PIURA', 'AYABACA', 'MONTERO');
INSERT INTO "public"."ubigeos" VALUES ('018a5f80-ef73-4d45-beef-c9aba9896190', '200206', 'PIURA', 'AYABACA', 'PACAIPAMPA');
INSERT INTO "public"."ubigeos" VALUES ('965e4af4-003b-4c58-bce5-ca6fd26220af', '200207', 'PIURA', 'AYABACA', 'PAIMAS');
INSERT INTO "public"."ubigeos" VALUES ('4df80ced-e7b9-4427-bac7-88d88f203173', '200208', 'PIURA', 'AYABACA', 'SAPILLICA');
INSERT INTO "public"."ubigeos" VALUES ('1a5d3e50-070e-4dc8-8d7d-6cb132c0e0cb', '200209', 'PIURA', 'AYABACA', 'SICCHEZ');
INSERT INTO "public"."ubigeos" VALUES ('845b466c-04ec-4429-a365-cf35b24ee53a', '200210', 'PIURA', 'AYABACA', 'SUYO');
INSERT INTO "public"."ubigeos" VALUES ('cf5bc975-85fd-446a-a73a-4a604eb9ad60', '200301', 'PIURA', 'HUANCABAMBA', 'HUANCABAMBA');
INSERT INTO "public"."ubigeos" VALUES ('5548aaa6-7323-410a-9883-a46c5e4468f1', '200302', 'PIURA', 'HUANCABAMBA', 'CANCHAQUE');
INSERT INTO "public"."ubigeos" VALUES ('a0d8c8fc-f1c1-4e6f-abd8-5b42078c971d', '200303', 'PIURA', 'HUANCABAMBA', 'EL CARMEN DE LA FRONTERA');
INSERT INTO "public"."ubigeos" VALUES ('1bdfbfdf-fe6a-4945-a3d4-2ad80a9073e2', '200304', 'PIURA', 'HUANCABAMBA', 'HUARMACA');
INSERT INTO "public"."ubigeos" VALUES ('63cd346d-32e1-4e38-ba29-0f1f06a44712', '200305', 'PIURA', 'HUANCABAMBA', 'LALAQUIZ');
INSERT INTO "public"."ubigeos" VALUES ('63bc9f3a-4e4a-4fcd-91a7-bf8d28758424', '200306', 'PIURA', 'HUANCABAMBA', 'SAN MIGUEL DE EL FAIQUE');
INSERT INTO "public"."ubigeos" VALUES ('45bb1964-a7d7-45e7-a4d1-7a6eb10ba21b', '200307', 'PIURA', 'HUANCABAMBA', 'SONDOR');
INSERT INTO "public"."ubigeos" VALUES ('5e269650-447a-4f20-ac49-618792842cbc', '200308', 'PIURA', 'HUANCABAMBA', 'SONDORILLO');
INSERT INTO "public"."ubigeos" VALUES ('909e0bc5-880e-4e5e-9f33-dcb7f5ede4b0', '200401', 'PIURA', 'MORROPON', 'CHULUCANAS');
INSERT INTO "public"."ubigeos" VALUES ('7c299734-0597-42d4-a7c2-269db342a9fa', '200402', 'PIURA', 'MORROPON', 'BUENOS AIRES');
INSERT INTO "public"."ubigeos" VALUES ('90f280d4-02f3-4681-85d1-375e90e2692b', '200403', 'PIURA', 'MORROPON', 'CHALACO');
INSERT INTO "public"."ubigeos" VALUES ('fd1b896e-1ec1-416c-853b-8101255e57a2', '200404', 'PIURA', 'MORROPON', 'LA MATANZA');
INSERT INTO "public"."ubigeos" VALUES ('084532a5-8dc0-4ca9-ad71-22e93359aa8f', '200405', 'PIURA', 'MORROPON', 'MORROPON');
INSERT INTO "public"."ubigeos" VALUES ('5d021512-3c42-4eef-8178-8d95da68d6f4', '200406', 'PIURA', 'MORROPON', 'SALITRAL');
INSERT INTO "public"."ubigeos" VALUES ('08aa265b-f91e-4279-8e2e-e77457b4302c', '200407', 'PIURA', 'MORROPON', 'SAN JUAN DE BIGOTE');
INSERT INTO "public"."ubigeos" VALUES ('db7e34a1-445f-48fc-bb52-7bb6bc9110ad', '200408', 'PIURA', 'MORROPON', 'SANTA CATALINA DE MOSSA');
INSERT INTO "public"."ubigeos" VALUES ('b1fb23cf-da45-4fcf-84ab-88d00ce7cdca', '200409', 'PIURA', 'MORROPON', 'SANTO DOMINGO');
INSERT INTO "public"."ubigeos" VALUES ('4d394077-5d2e-4ef8-a22e-0945c4ffe50c', '200410', 'PIURA', 'MORROPON', 'YAMANGO');
INSERT INTO "public"."ubigeos" VALUES ('ed697e49-863c-42f6-a807-a716b583c73f', '200501', 'PIURA', 'PAITA', 'PAITA');
INSERT INTO "public"."ubigeos" VALUES ('ac9fc409-ff81-472b-837f-e622d5a189f5', '200502', 'PIURA', 'PAITA', 'AMOTAPE');
INSERT INTO "public"."ubigeos" VALUES ('2b594563-11f5-4c62-9c6e-1cc753f030df', '200503', 'PIURA', 'PAITA', 'ARENAL');
INSERT INTO "public"."ubigeos" VALUES ('2eb5cf5b-700c-4d8f-ac60-30c163ad7f61', '200504', 'PIURA', 'PAITA', 'COLAN');
INSERT INTO "public"."ubigeos" VALUES ('fbc20e0a-05f5-412f-8f5a-ea2f638cfb70', '200505', 'PIURA', 'PAITA', 'LA HUACA');
INSERT INTO "public"."ubigeos" VALUES ('2aa94441-1fd2-49b1-99e5-3e65befd349b', '200506', 'PIURA', 'PAITA', 'TAMARINDO');
INSERT INTO "public"."ubigeos" VALUES ('5479fac3-f6d4-4c98-8b0a-40582faac2b8', '200507', 'PIURA', 'PAITA', 'VICHAYAL');
INSERT INTO "public"."ubigeos" VALUES ('dd4d7c4a-8f2e-49d2-9e50-f7c497653eb9', '200601', 'PIURA', 'SULLANA', 'SULLANA');
INSERT INTO "public"."ubigeos" VALUES ('9867eb5a-b171-4988-b211-213039616f69', '200602', 'PIURA', 'SULLANA', 'BELLAVISTA');
INSERT INTO "public"."ubigeos" VALUES ('f7b39c0c-d7f3-45ff-93b8-99a70722bfca', '200603', 'PIURA', 'SULLANA', 'IGNACIO ESCUDERO');
INSERT INTO "public"."ubigeos" VALUES ('d9094df4-b936-4e12-afa7-812245ed551a', '200604', 'PIURA', 'SULLANA', 'LANCONES');
INSERT INTO "public"."ubigeos" VALUES ('6146bfa4-e1b6-43f0-af1c-5637ac45e58e', '200605', 'PIURA', 'SULLANA', 'MARCAVELICA');
INSERT INTO "public"."ubigeos" VALUES ('8ba97b2e-0833-4e9e-bc55-5c810a7cc0f5', '200606', 'PIURA', 'SULLANA', 'MIGUEL CHECA');
INSERT INTO "public"."ubigeos" VALUES ('a7fb454b-74dc-47e2-8f8c-d17bd11cd5aa', '200607', 'PIURA', 'SULLANA', 'QUERECOTILLO');
INSERT INTO "public"."ubigeos" VALUES ('281fce0b-ce1c-45f3-999b-e6df97fe36c1', '200608', 'PIURA', 'SULLANA', 'SALITRAL');
INSERT INTO "public"."ubigeos" VALUES ('439b1ccb-fc94-41e7-af3b-2c54b0c04b8e', '200701', 'PIURA', 'TALARA', 'PARIÑAS');
INSERT INTO "public"."ubigeos" VALUES ('d1c4079b-c106-4b62-81a7-5837d8e458de', '200702', 'PIURA', 'TALARA', 'EL ALTO');
INSERT INTO "public"."ubigeos" VALUES ('58ab229f-7adb-4e3a-8137-19b14412c1be', '200703', 'PIURA', 'TALARA', 'LA BREA');
INSERT INTO "public"."ubigeos" VALUES ('36dffee2-7f38-4f77-8d91-e57df0bc9418', '200704', 'PIURA', 'TALARA', 'LOBITOS');
INSERT INTO "public"."ubigeos" VALUES ('ed36bf29-ba2b-4d97-bb9a-ceafc5b38f5d', '200705', 'PIURA', 'TALARA', 'LOS ORGANOS');
INSERT INTO "public"."ubigeos" VALUES ('52e78dcb-ab34-4f9d-9dc2-dff1eb67edd9', '200706', 'PIURA', 'TALARA', 'MANCORA');
INSERT INTO "public"."ubigeos" VALUES ('4e257054-cd68-4017-bb44-72ffac158fa0', '200801', 'PIURA', 'SECHURA', 'SECHURA');
INSERT INTO "public"."ubigeos" VALUES ('d241676d-6ea0-429b-a06f-3841a09b5c34', '200802', 'PIURA', 'SECHURA', 'BELLAVISTA DE LA UNION');
INSERT INTO "public"."ubigeos" VALUES ('eb1b49ed-af0b-434b-b9eb-cad2968b130d', '200803', 'PIURA', 'SECHURA', 'BERNAL');
INSERT INTO "public"."ubigeos" VALUES ('ab3c808a-35c4-4eeb-86fc-bd9bedbdbcc4', '200804', 'PIURA', 'SECHURA', 'CRISTO NOS VALGA');
INSERT INTO "public"."ubigeos" VALUES ('e3eff826-994d-490a-ae1d-43bd79bc43b8', '200805', 'PIURA', 'SECHURA', 'VICE');
INSERT INTO "public"."ubigeos" VALUES ('b9aa67e2-de51-4d49-84b9-ff8458bafbe5', '200806', 'PIURA', 'SECHURA', 'RINCONADA LLICUAR');
INSERT INTO "public"."ubigeos" VALUES ('2f4052c3-ff56-4299-82fa-0bf8599568c4', '210101', 'PUNO', 'PUNO', 'PUNO');
INSERT INTO "public"."ubigeos" VALUES ('fbadcf2c-3c9c-4c3f-9d49-7d537c1e6e64', '210102', 'PUNO', 'PUNO', 'ACORA');
INSERT INTO "public"."ubigeos" VALUES ('7dd856e6-a285-40f9-8922-67e708387421', '210103', 'PUNO', 'PUNO', 'AMANTANI');
INSERT INTO "public"."ubigeos" VALUES ('2511ce8c-6cfc-49a1-aab3-bc9d5c88aa0b', '210104', 'PUNO', 'PUNO', 'ATUNCOLLA');
INSERT INTO "public"."ubigeos" VALUES ('785b9098-65eb-4c15-9eb4-8e0a19451f7f', '210105', 'PUNO', 'PUNO', 'CAPACHICA');
INSERT INTO "public"."ubigeos" VALUES ('18fb06ac-edc0-4ac7-ba64-1ea7beb72bd4', '210106', 'PUNO', 'PUNO', 'CHUCUITO');
INSERT INTO "public"."ubigeos" VALUES ('6d915d65-43a6-4d2e-b162-1a708dbf1b59', '210107', 'PUNO', 'PUNO', 'COATA');
INSERT INTO "public"."ubigeos" VALUES ('212b607e-66e0-4fba-99a7-49704266f18b', '210108', 'PUNO', 'PUNO', 'HUATA');
INSERT INTO "public"."ubigeos" VALUES ('1f29fd8a-db7c-4630-a1be-b2434e327273', '210109', 'PUNO', 'PUNO', 'MAÑAZO');
INSERT INTO "public"."ubigeos" VALUES ('ea102e23-0c83-42a4-ba1d-7707f1cab4ba', '210110', 'PUNO', 'PUNO', 'PAUCARCOLLA');
INSERT INTO "public"."ubigeos" VALUES ('d51eefd4-8b1f-4578-b261-d9aed1a63fbd', '210111', 'PUNO', 'PUNO', 'PICHACANI');
INSERT INTO "public"."ubigeos" VALUES ('1a869dcb-1232-414c-acce-caf7cc49ebe8', '210112', 'PUNO', 'PUNO', 'PLATERIA');
INSERT INTO "public"."ubigeos" VALUES ('abc100c8-e679-4838-815e-36680a2d428f', '210113', 'PUNO', 'PUNO', 'SAN ANTONIO');
INSERT INTO "public"."ubigeos" VALUES ('27a85cde-008a-490a-b00e-9180ab837067', '210114', 'PUNO', 'PUNO', 'TIQUILLACA');
INSERT INTO "public"."ubigeos" VALUES ('9a44a597-ab04-49a1-876a-7003f4645820', '210115', 'PUNO', 'PUNO', 'VILQUE');
INSERT INTO "public"."ubigeos" VALUES ('7c8b2ace-09aa-49c6-a2fd-1106cd8cad96', '210201', 'PUNO', 'AZANGARO', 'AZANGARO');
INSERT INTO "public"."ubigeos" VALUES ('c6304d82-24b5-430b-9aee-29f3ccbe796a', '210202', 'PUNO', 'AZANGARO', 'ACHAYA');
INSERT INTO "public"."ubigeos" VALUES ('325a73a1-ec30-423d-9638-47edad5baff6', '210203', 'PUNO', 'AZANGARO', 'ARAPA');
INSERT INTO "public"."ubigeos" VALUES ('5b5fe4ea-1e3d-4789-b3d5-9c06b7651dc4', '210204', 'PUNO', 'AZANGARO', 'ASILLO');
INSERT INTO "public"."ubigeos" VALUES ('08512273-ddf5-4175-8314-0464fb311e26', '210205', 'PUNO', 'AZANGARO', 'CAMINACA');
INSERT INTO "public"."ubigeos" VALUES ('de1d0c69-df22-4a86-85c3-c283c6c12656', '210206', 'PUNO', 'AZANGARO', 'CHUPA');
INSERT INTO "public"."ubigeos" VALUES ('9c8779c6-1190-4fb5-8d7a-013293a94a6b', '210207', 'PUNO', 'AZANGARO', 'JOSE DOMINGO CHOQUEHUANCA');
INSERT INTO "public"."ubigeos" VALUES ('af499995-1cc5-48f3-8ddf-496fff44ecbe', '210208', 'PUNO', 'AZANGARO', 'MUÑANI');
INSERT INTO "public"."ubigeos" VALUES ('abbb8fb8-8628-45fe-ad65-7597b8b88936', '210209', 'PUNO', 'AZANGARO', 'POTONI');
INSERT INTO "public"."ubigeos" VALUES ('c2e44234-75e6-4d90-b76d-d1b43768c381', '210210', 'PUNO', 'AZANGARO', 'SAMAN');
INSERT INTO "public"."ubigeos" VALUES ('9f67ee46-f227-4ea5-870f-dff0763b0be3', '210211', 'PUNO', 'AZANGARO', 'SAN ANTON');
INSERT INTO "public"."ubigeos" VALUES ('f2b4dfa5-dc03-4f29-b0f2-76ea87727e96', '210212', 'PUNO', 'AZANGARO', 'SAN JOSE');
INSERT INTO "public"."ubigeos" VALUES ('abcea02a-70e4-4c5b-96ce-a758189f2f13', '210213', 'PUNO', 'AZANGARO', 'SAN JUAN DE SALINAS');
INSERT INTO "public"."ubigeos" VALUES ('2669c54f-8f81-4863-a5bb-4c7be2eed717', '210214', 'PUNO', 'AZANGARO', 'SANTIAGO DE PUPUJA');
INSERT INTO "public"."ubigeos" VALUES ('e2b1d7a2-949b-462e-8196-bcfcbb65158f', '210215', 'PUNO', 'AZANGARO', 'TIRAPATA');
INSERT INTO "public"."ubigeos" VALUES ('8b972988-2209-4ae5-b462-6426669a4f3c', '210301', 'PUNO', 'CARABAYA', 'MACUSANI');
INSERT INTO "public"."ubigeos" VALUES ('dd316060-7baa-43aa-9260-8969d66d8541', '210302', 'PUNO', 'CARABAYA', 'AJOYANI');
INSERT INTO "public"."ubigeos" VALUES ('ed2a737b-e7c5-4afc-94cc-dab0eb4ab963', '210303', 'PUNO', 'CARABAYA', 'AYAPATA');
INSERT INTO "public"."ubigeos" VALUES ('1ad805c4-bb3e-48c2-9915-4908c29ca890', '210304', 'PUNO', 'CARABAYA', 'COASA');
INSERT INTO "public"."ubigeos" VALUES ('d593be54-78d2-4701-87db-f5076bf096e1', '210305', 'PUNO', 'CARABAYA', 'CORANI');
INSERT INTO "public"."ubigeos" VALUES ('7aa92af6-2774-421f-ad54-0cece27cc8c3', '210306', 'PUNO', 'CARABAYA', 'CRUCERO');
INSERT INTO "public"."ubigeos" VALUES ('99b5a342-a88c-405a-8561-3464bce330e7', '210307', 'PUNO', 'CARABAYA', 'ITUATA');
INSERT INTO "public"."ubigeos" VALUES ('af0479ed-511b-417c-80a0-199385aad9f3', '210308', 'PUNO', 'CARABAYA', 'OLLACHEA');
INSERT INTO "public"."ubigeos" VALUES ('30a82bd8-7a3b-4c72-8d48-a3219ea319e3', '210309', 'PUNO', 'CARABAYA', 'SAN GABAN');
INSERT INTO "public"."ubigeos" VALUES ('8051fd64-439a-4dd4-ae68-c8b94ed3c13a', '210310', 'PUNO', 'CARABAYA', 'USICAYOS');
INSERT INTO "public"."ubigeos" VALUES ('082423e1-7c5c-44b1-8025-1a6cd7492e02', '210401', 'PUNO', 'CHUCUITO', 'JULI');
INSERT INTO "public"."ubigeos" VALUES ('81b82c80-6185-4285-8d78-45c9bc131ab3', '210402', 'PUNO', 'CHUCUITO', 'DESAGUADERO');
INSERT INTO "public"."ubigeos" VALUES ('1a9cf4a2-48a1-4525-80c4-49786df55356', '210403', 'PUNO', 'CHUCUITO', 'HUACULLANI');
INSERT INTO "public"."ubigeos" VALUES ('49c85bc5-e93f-4905-9eae-9eca89a25523', '210404', 'PUNO', 'CHUCUITO', 'KELLUYO');
INSERT INTO "public"."ubigeos" VALUES ('b8f21f56-bfc0-4aa6-97ce-738f9d5876ef', '210405', 'PUNO', 'CHUCUITO', 'PISACOMA');
INSERT INTO "public"."ubigeos" VALUES ('70900b05-3a04-408b-90c9-d326e3053cbf', '210406', 'PUNO', 'CHUCUITO', 'POMATA');
INSERT INTO "public"."ubigeos" VALUES ('1fdbd55f-a2a9-4917-8f03-5219bab26d54', '210407', 'PUNO', 'CHUCUITO', 'ZEPITA');
INSERT INTO "public"."ubigeos" VALUES ('0fdea60b-82e5-4da9-b8c6-b1dc905a63b2', '210501', 'PUNO', 'EL COLLAO', 'ILAVE');
INSERT INTO "public"."ubigeos" VALUES ('43624562-e225-4df7-9fd1-e5d8fae76a8f', '210502', 'PUNO', 'EL COLLAO', 'CAPAZO');
INSERT INTO "public"."ubigeos" VALUES ('2e2fe05d-f558-411d-a6db-d20b1706cc01', '210503', 'PUNO', 'EL COLLAO', 'PILCUYO');
INSERT INTO "public"."ubigeos" VALUES ('821dc20d-62c6-447e-9d5a-c6c015af1f4e', '210504', 'PUNO', 'EL COLLAO', 'SANTA ROSA');
INSERT INTO "public"."ubigeos" VALUES ('767fa301-4ae2-4f16-9d9a-ea441bbf4e5d', '210505', 'PUNO', 'EL COLLAO', 'CONDURIRI');
INSERT INTO "public"."ubigeos" VALUES ('dce3a4a0-6bf9-45f3-9d94-67350a631f29', '210601', 'PUNO', 'HUANCANE', 'HUANCANE');
INSERT INTO "public"."ubigeos" VALUES ('23d4b414-f478-444f-841f-65bad9d37595', '210602', 'PUNO', 'HUANCANE', 'COJATA');
INSERT INTO "public"."ubigeos" VALUES ('d702fc47-6f73-47a0-8faa-6b2fcc24bb09', '210603', 'PUNO', 'HUANCANE', 'HUATASANI');
INSERT INTO "public"."ubigeos" VALUES ('7e110730-537e-4b79-863d-ad2676763926', '210604', 'PUNO', 'HUANCANE', 'INCHUPALLA');
INSERT INTO "public"."ubigeos" VALUES ('e387beba-d310-4909-8795-9b56a82b4a76', '210605', 'PUNO', 'HUANCANE', 'PUSI');
INSERT INTO "public"."ubigeos" VALUES ('b4633a70-9369-4965-a99a-bbf7cd626241', '210606', 'PUNO', 'HUANCANE', 'ROSASPATA');
INSERT INTO "public"."ubigeos" VALUES ('e91a10f7-187f-4e88-afa8-fa39edf1acfb', '210607', 'PUNO', 'HUANCANE', 'TARACO');
INSERT INTO "public"."ubigeos" VALUES ('0428bf6d-b9b1-4509-a13c-103074093a0c', '210608', 'PUNO', 'HUANCANE', 'VILQUE CHICO');
INSERT INTO "public"."ubigeos" VALUES ('12e2e167-c823-4c23-8caf-2be7bf250b9e', '210701', 'PUNO', 'LAMPA', 'LAMPA');
INSERT INTO "public"."ubigeos" VALUES ('f41c450e-e0b2-4c7f-93cc-d56bf6a7831d', '210702', 'PUNO', 'LAMPA', 'CABANILLA');
INSERT INTO "public"."ubigeos" VALUES ('1ef7681c-8c28-45c9-9ad6-40be37f59179', '210703', 'PUNO', 'LAMPA', 'CALAPUJA');
INSERT INTO "public"."ubigeos" VALUES ('ab91478e-b8a9-4d63-8797-ad7db22b36c6', '210704', 'PUNO', 'LAMPA', 'NICASIO');
INSERT INTO "public"."ubigeos" VALUES ('8e105b25-d0d9-4ca1-8576-606ec9788fe4', '210705', 'PUNO', 'LAMPA', 'OCUVIRI');
INSERT INTO "public"."ubigeos" VALUES ('d7a145dd-154d-453e-adb8-cfc846022f14', '210706', 'PUNO', 'LAMPA', 'PALCA');
INSERT INTO "public"."ubigeos" VALUES ('6e8c21ba-74b8-468b-968c-c4583cfdda94', '210707', 'PUNO', 'LAMPA', 'PARATIA');
INSERT INTO "public"."ubigeos" VALUES ('bcf7e2af-62ed-47cf-b1ba-436478ba4c4a', '210708', 'PUNO', 'LAMPA', 'PUCARA');
INSERT INTO "public"."ubigeos" VALUES ('dff058e7-4e6a-46e5-ae9c-9d183ab97a9e', '210709', 'PUNO', 'LAMPA', 'SANTA LUCIA');
INSERT INTO "public"."ubigeos" VALUES ('db502386-8346-46fa-bc7b-661534814abb', '210710', 'PUNO', 'LAMPA', 'VILAVILA');
INSERT INTO "public"."ubigeos" VALUES ('f55ab012-1533-4519-bb41-c93190391444', '210801', 'PUNO', 'MELGAR', 'AYAVIRI');
INSERT INTO "public"."ubigeos" VALUES ('39cd38c5-f888-4b43-8c09-11481d946865', '210802', 'PUNO', 'MELGAR', 'ANTAUTA');
INSERT INTO "public"."ubigeos" VALUES ('d2ae12d8-91a2-44d4-b605-531ff9cbc7a9', '210803', 'PUNO', 'MELGAR', 'CUPI');
INSERT INTO "public"."ubigeos" VALUES ('eb7f9081-f913-44ff-93b7-6ab07d4747f3', '210804', 'PUNO', 'MELGAR', 'LLALLI');
INSERT INTO "public"."ubigeos" VALUES ('133df1f7-32dc-4d33-8694-744ddd24fa3f', '210805', 'PUNO', 'MELGAR', 'MACARI');
INSERT INTO "public"."ubigeos" VALUES ('65ee28e6-9d4c-4650-a069-bf53f38dbd9a', '210806', 'PUNO', 'MELGAR', 'NUÑOA');
INSERT INTO "public"."ubigeos" VALUES ('86456ed4-e364-456a-b35d-f2699a21a477', '210807', 'PUNO', 'MELGAR', 'ORURILLO');
INSERT INTO "public"."ubigeos" VALUES ('12c69118-37bc-4579-ad8a-3be850ddae6b', '210808', 'PUNO', 'MELGAR', 'SANTA ROSA');
INSERT INTO "public"."ubigeos" VALUES ('fc5e2bd0-203f-47b6-915b-0d944b02afb9', '210809', 'PUNO', 'MELGAR', 'UMACHIRI');
INSERT INTO "public"."ubigeos" VALUES ('1b4787c4-fd71-41cd-a2c0-4dcbd6d5b16a', '210901', 'PUNO', 'MOHO', 'MOHO');
INSERT INTO "public"."ubigeos" VALUES ('5b9b7c04-2c0e-4a7e-9cfc-c6a90d911896', '210902', 'PUNO', 'MOHO', 'CONIMA');
INSERT INTO "public"."ubigeos" VALUES ('5e4674da-8286-48ff-bf90-0a68d1450558', '210903', 'PUNO', 'MOHO', 'HUAYRAPATA');
INSERT INTO "public"."ubigeos" VALUES ('b3c7a4cb-ef9d-4924-8d5a-63d7b5d24b34', '210904', 'PUNO', 'MOHO', 'TILALI');
INSERT INTO "public"."ubigeos" VALUES ('7e014c77-4587-44f2-8ca1-69b5f8fd647e', '211001', 'PUNO', 'SAN ANTONIO DE PUTINA', 'PUTINA');
INSERT INTO "public"."ubigeos" VALUES ('28427506-f333-4430-99c4-5cad76c1677e', '211002', 'PUNO', 'SAN ANTONIO DE PUTINA', 'ANANEA');
INSERT INTO "public"."ubigeos" VALUES ('2de39855-110b-46cf-b2bd-c0dfb08d9eae', '211003', 'PUNO', 'SAN ANTONIO DE PUTINA', 'PEDRO VILCA APAZA');
INSERT INTO "public"."ubigeos" VALUES ('e60e36d5-6530-4c0d-bbf6-281cf3997b81', '211004', 'PUNO', 'SAN ANTONIO DE PUTINA', 'QUILCAPUNCU');
INSERT INTO "public"."ubigeos" VALUES ('d4f0e5e9-f7d1-48f9-981b-febeea6abd66', '211005', 'PUNO', 'SAN ANTONIO DE PUTINA', 'SINA');
INSERT INTO "public"."ubigeos" VALUES ('566190f8-1e67-42cc-9fef-aa85dfc1c711', '211101', 'PUNO', 'SAN ROMAN', 'JULIACA');
INSERT INTO "public"."ubigeos" VALUES ('345b4935-4f0b-4f33-bc56-9c5f11a07fa2', '211102', 'PUNO', 'SAN ROMAN', 'CABANA');
INSERT INTO "public"."ubigeos" VALUES ('b58bb8d5-8b9e-41f2-bebe-98bd561cea88', '211103', 'PUNO', 'SAN ROMAN', 'CABANILLAS');
INSERT INTO "public"."ubigeos" VALUES ('12f0a1d5-445b-40cb-b2b7-a4c3c9d42c23', '211104', 'PUNO', 'SAN ROMAN', 'CARACOTO');
INSERT INTO "public"."ubigeos" VALUES ('0da3fc07-99ba-4db1-a8c9-3bfa977be59c', '211105', 'PUNO', 'SAN ROMAN', 'SAN MIGUEL');
INSERT INTO "public"."ubigeos" VALUES ('7ddfdcab-6f4c-42d2-934e-dd4ef93e1db2', '211201', 'PUNO', 'SANDIA', 'SANDIA');
INSERT INTO "public"."ubigeos" VALUES ('755bde4d-e9b6-4803-835f-16ecba26b1de', '211202', 'PUNO', 'SANDIA', 'CUYOCUYO');
INSERT INTO "public"."ubigeos" VALUES ('3ccbc8a4-59ae-4af9-92d8-e3646fc6646c', '211203', 'PUNO', 'SANDIA', 'LIMBANI');
INSERT INTO "public"."ubigeos" VALUES ('eb976f70-b289-4382-a704-4c20b3173b46', '211204', 'PUNO', 'SANDIA', 'PATAMBUCO');
INSERT INTO "public"."ubigeos" VALUES ('3b0c31c6-b858-4852-a323-58a768c32fec', '211205', 'PUNO', 'SANDIA', 'PHARA');
INSERT INTO "public"."ubigeos" VALUES ('28e9b484-48c6-4f48-8c51-0040e03cab1c', '211206', 'PUNO', 'SANDIA', 'QUIACA');
INSERT INTO "public"."ubigeos" VALUES ('25c49f4b-dae0-4a0e-91b3-aa58bba0b148', '211207', 'PUNO', 'SANDIA', 'SAN JUAN DEL ORO');
INSERT INTO "public"."ubigeos" VALUES ('ec8b11e7-31fe-4027-8ee0-e367dd88411f', '211208', 'PUNO', 'SANDIA', 'YANAHUAYA');
INSERT INTO "public"."ubigeos" VALUES ('eca9e128-2ebb-4606-8a4d-7c9cb335464c', '211209', 'PUNO', 'SANDIA', 'ALTO INAMBARI');
INSERT INTO "public"."ubigeos" VALUES ('7e85f8ff-992f-48f7-a7bf-4182c5a720a0', '211210', 'PUNO', 'SANDIA', 'SAN PEDRO DE PUTINA PUNCO');
INSERT INTO "public"."ubigeos" VALUES ('976a939f-8afc-448d-be8d-6f13ac5e3d26', '211301', 'PUNO', 'YUNGUYO', 'YUNGUYO');
INSERT INTO "public"."ubigeos" VALUES ('6f62dc92-ecae-4c47-82eb-c39ff921c1d6', '211302', 'PUNO', 'YUNGUYO', 'ANAPIA');
INSERT INTO "public"."ubigeos" VALUES ('078c0fec-563f-47c5-8d72-fc92f4085e28', '211303', 'PUNO', 'YUNGUYO', 'COPANI');
INSERT INTO "public"."ubigeos" VALUES ('38527916-fb7d-460a-83a5-77b2b33be2d5', '211304', 'PUNO', 'YUNGUYO', 'CUTURAPI');
INSERT INTO "public"."ubigeos" VALUES ('46082219-b539-40f9-bbd3-f4bcc3515951', '211305', 'PUNO', 'YUNGUYO', 'OLLARAYA');
INSERT INTO "public"."ubigeos" VALUES ('6a5940cc-3207-4e02-be57-12e0e6929c13', '211306', 'PUNO', 'YUNGUYO', 'TINICACHI');
INSERT INTO "public"."ubigeos" VALUES ('67cb5b94-ae0b-4cc7-b685-7709a893e3a5', '211307', 'PUNO', 'YUNGUYO', 'UNICACHI');
INSERT INTO "public"."ubigeos" VALUES ('9f4609c4-a56a-4380-a136-52187e56e59c', '220101', 'SAN MARTIN', 'MOYOBAMBA', 'MOYOBAMBA');
INSERT INTO "public"."ubigeos" VALUES ('e3283069-0e3a-4833-86a3-886ef07d6bdc', '220102', 'SAN MARTIN', 'MOYOBAMBA', 'CALZADA');
INSERT INTO "public"."ubigeos" VALUES ('ba079ccb-af16-4491-bdd2-3c1beddb2506', '220103', 'SAN MARTIN', 'MOYOBAMBA', 'HABANA');
INSERT INTO "public"."ubigeos" VALUES ('092c9711-2f13-4204-9637-48b95d2f32ba', '220104', 'SAN MARTIN', 'MOYOBAMBA', 'JEPELACIO');
INSERT INTO "public"."ubigeos" VALUES ('489806de-c699-4bf3-8d8e-3f6a8951e355', '220105', 'SAN MARTIN', 'MOYOBAMBA', 'SORITOR');
INSERT INTO "public"."ubigeos" VALUES ('efb0d18e-54f1-4daa-a29f-10b1323c7eed', '220106', 'SAN MARTIN', 'MOYOBAMBA', 'YANTALO');
INSERT INTO "public"."ubigeos" VALUES ('43d53c10-bc40-4b44-a1a9-2acbec171d10', '220201', 'SAN MARTIN', 'BELLAVISTA', 'BELLAVISTA');
INSERT INTO "public"."ubigeos" VALUES ('76d27233-b13a-47fb-8014-44d609332b22', '220202', 'SAN MARTIN', 'BELLAVISTA', 'ALTO BIAVO');
INSERT INTO "public"."ubigeos" VALUES ('79496b55-2408-4042-8b59-2f00231d496d', '220203', 'SAN MARTIN', 'BELLAVISTA', 'BAJO BIAVO');
INSERT INTO "public"."ubigeos" VALUES ('23bb9fbe-ae37-46c9-9774-e0bc19d92205', '220204', 'SAN MARTIN', 'BELLAVISTA', 'HUALLAGA');
INSERT INTO "public"."ubigeos" VALUES ('1a37087b-d297-49c0-a8c5-8fe05f4f0274', '220205', 'SAN MARTIN', 'BELLAVISTA', 'SAN PABLO');
INSERT INTO "public"."ubigeos" VALUES ('8a306e72-f3d3-4933-a624-32e6a66f95c0', '220206', 'SAN MARTIN', 'BELLAVISTA', 'SAN RAFAEL');
INSERT INTO "public"."ubigeos" VALUES ('b6f4717a-e49f-400d-952f-26789b722501', '220301', 'SAN MARTIN', 'EL DORADO', 'SAN JOSE DE SISA');
INSERT INTO "public"."ubigeos" VALUES ('56fca84a-b4ee-425f-aa99-d2713102cc2e', '220302', 'SAN MARTIN', 'EL DORADO', 'AGUA BLANCA');
INSERT INTO "public"."ubigeos" VALUES ('c66cd24c-99b3-4659-beef-6afa444ece41', '220303', 'SAN MARTIN', 'EL DORADO', 'SAN MARTIN');
INSERT INTO "public"."ubigeos" VALUES ('1880e553-817e-4851-b85c-aa37f61364d5', '220304', 'SAN MARTIN', 'EL DORADO', 'SANTA ROSA');
INSERT INTO "public"."ubigeos" VALUES ('18c1dc84-e12a-48ea-a9dd-58fde1033fd2', '220305', 'SAN MARTIN', 'EL DORADO', 'SHATOJA');
INSERT INTO "public"."ubigeos" VALUES ('7c8b1fef-4636-4888-9a25-83d30d20f5dd', '220401', 'SAN MARTIN', 'HUALLAGA', 'SAPOSOA');
INSERT INTO "public"."ubigeos" VALUES ('ac790d80-c102-4483-9983-370f4472cee6', '220402', 'SAN MARTIN', 'HUALLAGA', 'ALTO SAPOSOA');
INSERT INTO "public"."ubigeos" VALUES ('35418c12-d029-4dc1-b53d-fdde70311f9f', '220403', 'SAN MARTIN', 'HUALLAGA', 'EL ESLABON');
INSERT INTO "public"."ubigeos" VALUES ('92729d4c-a8db-4033-b432-560222ffbfee', '220404', 'SAN MARTIN', 'HUALLAGA', 'PISCOYACU');
INSERT INTO "public"."ubigeos" VALUES ('19bc2efe-c371-44ad-9f85-18f00363ff22', '220405', 'SAN MARTIN', 'HUALLAGA', 'SACANCHE');
INSERT INTO "public"."ubigeos" VALUES ('223f14e7-e4e1-466e-87a1-9f409efb5275', '220406', 'SAN MARTIN', 'HUALLAGA', 'TINGO DE SAPOSOA');
INSERT INTO "public"."ubigeos" VALUES ('d556349a-ac7f-40a3-8791-9bffb1eb3f7a', '220501', 'SAN MARTIN', 'LAMAS', 'LAMAS');
INSERT INTO "public"."ubigeos" VALUES ('c3a82434-a818-449c-b90e-8aec2577188a', '220502', 'SAN MARTIN', 'LAMAS', 'ALONSO DE ALVARADO');
INSERT INTO "public"."ubigeos" VALUES ('872ef853-bdd8-42bb-8b60-0ff58a3f2641', '220503', 'SAN MARTIN', 'LAMAS', 'BARRANQUITA');
INSERT INTO "public"."ubigeos" VALUES ('20520c02-7566-481e-846a-b8d93e8604ec', '220504', 'SAN MARTIN', 'LAMAS', 'CAYNARACHI');
INSERT INTO "public"."ubigeos" VALUES ('1c500dad-47b7-4c4e-b202-ddb4eebc4fc4', '220505', 'SAN MARTIN', 'LAMAS', 'CUÑUMBUQUI');
INSERT INTO "public"."ubigeos" VALUES ('43c1f990-b0d6-4714-b710-c2c9c461f360', '220506', 'SAN MARTIN', 'LAMAS', 'PINTO RECODO');
INSERT INTO "public"."ubigeos" VALUES ('a18a165e-5f7a-4c50-a508-733a5f724805', '220507', 'SAN MARTIN', 'LAMAS', 'RUMISAPA');
INSERT INTO "public"."ubigeos" VALUES ('980cddb6-49d6-43ef-b06b-25c3e021a138', '220508', 'SAN MARTIN', 'LAMAS', 'SAN ROQUE DE CUMBAZA');
INSERT INTO "public"."ubigeos" VALUES ('859f8dae-546b-4a80-8ee5-d41cb7109b0f', '220509', 'SAN MARTIN', 'LAMAS', 'SHANAO');
INSERT INTO "public"."ubigeos" VALUES ('c9845314-9b04-4945-94ca-99413f4fc7bd', '220510', 'SAN MARTIN', 'LAMAS', 'TABALOSOS');
INSERT INTO "public"."ubigeos" VALUES ('2af5c39d-e61d-4854-91ef-7b00f26b32b3', '220511', 'SAN MARTIN', 'LAMAS', 'ZAPATERO');
INSERT INTO "public"."ubigeos" VALUES ('2677d078-c944-4a41-89d5-082d0a1d8257', '220601', 'SAN MARTIN', 'MARISCAL CACERES', 'JUANJUI');
INSERT INTO "public"."ubigeos" VALUES ('cc20b671-524e-4798-a89c-67d280e0c38a', '220602', 'SAN MARTIN', 'MARISCAL CACERES', 'CAMPANILLA');
INSERT INTO "public"."ubigeos" VALUES ('b20f9dd9-437c-4e10-9528-a900542fbf65', '220603', 'SAN MARTIN', 'MARISCAL CACERES', 'HUICUNGO');
INSERT INTO "public"."ubigeos" VALUES ('6c342da9-61de-4716-88d9-4eb2ba0a4f4e', '220604', 'SAN MARTIN', 'MARISCAL CACERES', 'PACHIZA');
INSERT INTO "public"."ubigeos" VALUES ('53265818-f1e2-4a30-9de9-04a32370d7d7', '220605', 'SAN MARTIN', 'MARISCAL CACERES', 'PAJARILLO');
INSERT INTO "public"."ubigeos" VALUES ('ce4bdaa4-1f78-49bc-9fa6-c2ed8dcfdbca', '220701', 'SAN MARTIN', 'PICOTA', 'PICOTA');
INSERT INTO "public"."ubigeos" VALUES ('2c72cdd5-ff4c-402d-a9a0-e606c43cb8e4', '220702', 'SAN MARTIN', 'PICOTA', 'BUENOS AIRES');
INSERT INTO "public"."ubigeos" VALUES ('ed0072bc-a454-4617-bf8f-e01a21f02da2', '220703', 'SAN MARTIN', 'PICOTA', 'CASPISAPA');
INSERT INTO "public"."ubigeos" VALUES ('e1df98b4-3c9e-4f54-b587-40f27f96586d', '220704', 'SAN MARTIN', 'PICOTA', 'PILLUANA');
INSERT INTO "public"."ubigeos" VALUES ('365bb07f-fe04-404e-ae52-a14d3b11757a', '220705', 'SAN MARTIN', 'PICOTA', 'PUCACACA');
INSERT INTO "public"."ubigeos" VALUES ('618eadf4-28e6-4632-9bef-0990eeb3298e', '220706', 'SAN MARTIN', 'PICOTA', 'SAN CRISTOBAL');
INSERT INTO "public"."ubigeos" VALUES ('c86af38e-e6f6-481d-8de5-13c5ebb1974a', '220707', 'SAN MARTIN', 'PICOTA', 'SAN HILARION');
INSERT INTO "public"."ubigeos" VALUES ('2f0ab424-19ef-469d-8c99-83028baa9214', '220708', 'SAN MARTIN', 'PICOTA', 'SHAMBOYACU');
INSERT INTO "public"."ubigeos" VALUES ('f16838d4-6dfb-4bbd-8835-39b7c6fcf79e', '220709', 'SAN MARTIN', 'PICOTA', 'TINGO DE PONASA');
INSERT INTO "public"."ubigeos" VALUES ('396a7a65-a6a1-4032-adff-8d4d8e36b98f', '220710', 'SAN MARTIN', 'PICOTA', 'TRES UNIDOS');
INSERT INTO "public"."ubigeos" VALUES ('6d54e165-4179-4830-84e2-b2895839b5d1', '220801', 'SAN MARTIN', 'RIOJA', 'RIOJA');
INSERT INTO "public"."ubigeos" VALUES ('958f5baf-fe5b-4c91-8121-9add75f7e201', '220802', 'SAN MARTIN', 'RIOJA', 'AWAJUN');
INSERT INTO "public"."ubigeos" VALUES ('4b0e1365-f4b4-4577-9ef5-8eda75165512', '220803', 'SAN MARTIN', 'RIOJA', 'ELIAS SOPLIN VARGAS');
INSERT INTO "public"."ubigeos" VALUES ('65c6c6f3-a995-4370-b6c1-6536e45a259a', '220804', 'SAN MARTIN', 'RIOJA', 'NUEVA CAJAMARCA');
INSERT INTO "public"."ubigeos" VALUES ('16cca8aa-b135-449e-810f-877eefac25cb', '220805', 'SAN MARTIN', 'RIOJA', 'PARDO MIGUEL');
INSERT INTO "public"."ubigeos" VALUES ('0396fb82-0451-4ba0-a0d0-41c45803412d', '220806', 'SAN MARTIN', 'RIOJA', 'POSIC');
INSERT INTO "public"."ubigeos" VALUES ('67344655-a323-4e14-84f7-ad6284c9a87b', '220807', 'SAN MARTIN', 'RIOJA', 'SAN FERNANDO');
INSERT INTO "public"."ubigeos" VALUES ('459fcb4f-3f6e-4df6-b4ed-25b9896487a6', '220808', 'SAN MARTIN', 'RIOJA', 'YORONGOS');
INSERT INTO "public"."ubigeos" VALUES ('14fe04fc-95e7-40c0-802f-5316491a75f1', '220809', 'SAN MARTIN', 'RIOJA', 'YURACYACU');
INSERT INTO "public"."ubigeos" VALUES ('17b44ab8-1428-4d50-9784-9e9792d969d5', '220901', 'SAN MARTIN', 'SAN MARTIN', 'TARAPOTO');
INSERT INTO "public"."ubigeos" VALUES ('26e3b979-6822-4ae7-881b-b26317bbe3e4', '220902', 'SAN MARTIN', 'SAN MARTIN', 'ALBERTO LEVEAU');
INSERT INTO "public"."ubigeos" VALUES ('7e1d9b05-ee19-46cc-8982-24cf49680c54', '220903', 'SAN MARTIN', 'SAN MARTIN', 'CACATACHI');
INSERT INTO "public"."ubigeos" VALUES ('25cc277d-be62-4773-98f6-87548fc32f00', '220904', 'SAN MARTIN', 'SAN MARTIN', 'CHAZUTA');
INSERT INTO "public"."ubigeos" VALUES ('4c846be7-6738-4709-84de-32b044d32d95', '220905', 'SAN MARTIN', 'SAN MARTIN', 'CHIPURANA');
INSERT INTO "public"."ubigeos" VALUES ('1e2b5fa7-731e-43be-adde-b47e23923502', '220906', 'SAN MARTIN', 'SAN MARTIN', 'EL PORVENIR');
INSERT INTO "public"."ubigeos" VALUES ('ec55c84e-4dde-4c36-adef-7ad229087ea6', '220907', 'SAN MARTIN', 'SAN MARTIN', 'HUIMBAYOC');
INSERT INTO "public"."ubigeos" VALUES ('a3e38ab9-3761-4898-af93-6389bab25762', '220908', 'SAN MARTIN', 'SAN MARTIN', 'JUAN GUERRA');
INSERT INTO "public"."ubigeos" VALUES ('6d91638c-b399-4e60-b9fd-f222b5758a2c', '220909', 'SAN MARTIN', 'SAN MARTIN', 'LA BANDA DE SHILCAYO');
INSERT INTO "public"."ubigeos" VALUES ('5e52e030-cb34-4166-92ab-6cdb04117acf', '220910', 'SAN MARTIN', 'SAN MARTIN', 'MORALES');
INSERT INTO "public"."ubigeos" VALUES ('0cb79b28-93d7-49fe-801d-fe57009e3d6e', '220911', 'SAN MARTIN', 'SAN MARTIN', 'PAPAPLAYA');
INSERT INTO "public"."ubigeos" VALUES ('e3155c5a-06bb-4019-9dbb-28f83a56b672', '220912', 'SAN MARTIN', 'SAN MARTIN', 'SAN ANTONIO');
INSERT INTO "public"."ubigeos" VALUES ('1bdc2a82-c103-4792-82a2-92bdb4315330', '220913', 'SAN MARTIN', 'SAN MARTIN', 'SAUCE');
INSERT INTO "public"."ubigeos" VALUES ('60a6c639-ba1b-42a4-8a4c-e4a399c44cc1', '220914', 'SAN MARTIN', 'SAN MARTIN', 'SHAPAJA');
INSERT INTO "public"."ubigeos" VALUES ('4b3fe9b2-2868-4ffe-a039-5701a8314671', '221001', 'SAN MARTIN', 'TOCACHE', 'TOCACHE');
INSERT INTO "public"."ubigeos" VALUES ('18f7e83e-cb74-469b-8cc2-25d0f66b0db1', '221002', 'SAN MARTIN', 'TOCACHE', 'NUEVO PROGRESO');
INSERT INTO "public"."ubigeos" VALUES ('a1f0f935-e51b-418c-9451-07578e07e0a0', '221003', 'SAN MARTIN', 'TOCACHE', 'POLVORA');
INSERT INTO "public"."ubigeos" VALUES ('9eaf474e-1aa3-402d-a044-90425781c78e', '221004', 'SAN MARTIN', 'TOCACHE', 'SHUNTE');
INSERT INTO "public"."ubigeos" VALUES ('3359a6b2-7639-4536-967e-be042700ea4b', '221005', 'SAN MARTIN', 'TOCACHE', 'UCHIZA');
INSERT INTO "public"."ubigeos" VALUES ('bdaea99b-bdf4-4a21-8611-4589b7737fca', '221006', 'SAN MARTIN', 'TOCACHE', 'SANTA LUCIA');
INSERT INTO "public"."ubigeos" VALUES ('d05d9005-d5d8-4360-8052-bbcd578d917f', '230101', 'TACNA', 'TACNA', 'TACNA');
INSERT INTO "public"."ubigeos" VALUES ('dfc1bcd8-497e-481c-a9b2-2a04ae21cafb', '230102', 'TACNA', 'TACNA', 'ALTO DE LA ALIANZA');
INSERT INTO "public"."ubigeos" VALUES ('8686c686-dd72-49df-9d9f-df526246c234', '230103', 'TACNA', 'TACNA', 'CALANA');
INSERT INTO "public"."ubigeos" VALUES ('f13fdb66-b6e7-4212-9f61-3a82eb78e0c9', '230104', 'TACNA', 'TACNA', 'CIUDAD NUEVA');
INSERT INTO "public"."ubigeos" VALUES ('0d2d8f9e-47bc-458a-b857-538fc8598f87', '230105', 'TACNA', 'TACNA', 'INCLAN');
INSERT INTO "public"."ubigeos" VALUES ('cb8675cb-9620-47ec-a0e8-a24505fb0709', '230106', 'TACNA', 'TACNA', 'PACHIA');
INSERT INTO "public"."ubigeos" VALUES ('e2a54f54-6243-4a60-975c-5e2a823a3c12', '230107', 'TACNA', 'TACNA', 'PALCA');
INSERT INTO "public"."ubigeos" VALUES ('1e02213b-4f86-4da3-b157-7ba72ae7e556', '230108', 'TACNA', 'TACNA', 'POCOLLAY');
INSERT INTO "public"."ubigeos" VALUES ('b48d4b28-2c61-4415-8e4c-c49c6df3b3a7', '230109', 'TACNA', 'TACNA', 'SAMA');
INSERT INTO "public"."ubigeos" VALUES ('a7c535ff-a8ac-4648-90d1-97601b32c932', '230110', 'TACNA', 'TACNA', 'CORONEL GREGORIO ALBARRACIN LANCHIPA');
INSERT INTO "public"."ubigeos" VALUES ('41981bdf-b064-4b79-a1d0-553a20a51a5b', '230111', 'TACNA', 'TACNA', 'LA YARADA LOS PALOS');
INSERT INTO "public"."ubigeos" VALUES ('13073bca-3ef3-4dca-8e06-d4d463ae5869', '230201', 'TACNA', 'CANDARAVE', 'CANDARAVE');
INSERT INTO "public"."ubigeos" VALUES ('ae42d51e-5294-4469-ba1d-781989c740cd', '230202', 'TACNA', 'CANDARAVE', 'CAIRANI');
INSERT INTO "public"."ubigeos" VALUES ('1ed47528-9660-41ba-81dc-bad4dabf6b03', '230203', 'TACNA', 'CANDARAVE', 'CAMILACA');
INSERT INTO "public"."ubigeos" VALUES ('81d1fc9d-fe3a-4a87-8ef9-398a049b74cc', '230204', 'TACNA', 'CANDARAVE', 'CURIBAYA');
INSERT INTO "public"."ubigeos" VALUES ('a6b2a1a4-e075-47f6-b698-5113dcfb516b', '230205', 'TACNA', 'CANDARAVE', 'HUANUARA');
INSERT INTO "public"."ubigeos" VALUES ('b4acdb79-a4a6-4fc8-ba65-f23febe9c3d6', '230206', 'TACNA', 'CANDARAVE', 'QUILAHUANI');
INSERT INTO "public"."ubigeos" VALUES ('e20ca50a-809c-429d-a517-e18bad4c5500', '230301', 'TACNA', 'JORGE BASADRE', 'LOCUMBA');
INSERT INTO "public"."ubigeos" VALUES ('388a0bf7-84f3-4516-9bf5-39414b08702f', '230302', 'TACNA', 'JORGE BASADRE', 'ILABAYA');
INSERT INTO "public"."ubigeos" VALUES ('e1b6bf76-8438-4593-8e81-cbcafb9984a2', '230303', 'TACNA', 'JORGE BASADRE', 'ITE');
INSERT INTO "public"."ubigeos" VALUES ('59374bee-0bdb-4003-99cc-122bb20874a8', '230401', 'TACNA', 'TARATA', 'TARATA');
INSERT INTO "public"."ubigeos" VALUES ('1b59cab6-778b-4d9a-a317-57b103bcb8cb', '230402', 'TACNA', 'TARATA', 'HEROES ALBARRACIN');
INSERT INTO "public"."ubigeos" VALUES ('7b41946c-c6e0-4a12-b197-8ffd282337eb', '230403', 'TACNA', 'TARATA', 'ESTIQUE');
INSERT INTO "public"."ubigeos" VALUES ('19a7de95-3d50-4a19-b316-121fdb4bc799', '230404', 'TACNA', 'TARATA', 'ESTIQUE-PAMPA');
INSERT INTO "public"."ubigeos" VALUES ('2a1ad318-c675-465e-b720-f6b9dfda330d', '230405', 'TACNA', 'TARATA', 'SITAJARA');
INSERT INTO "public"."ubigeos" VALUES ('ba5e2eba-2102-4982-b513-aa088deb96f3', '230406', 'TACNA', 'TARATA', 'SUSAPAYA');
INSERT INTO "public"."ubigeos" VALUES ('d6e18faf-1e67-4628-8aac-76c8c8476842', '230407', 'TACNA', 'TARATA', 'TARUCACHI');
INSERT INTO "public"."ubigeos" VALUES ('b0d09a28-61d9-40e5-abea-4c972a17dff5', '230408', 'TACNA', 'TARATA', 'TICACO');
INSERT INTO "public"."ubigeos" VALUES ('596dda5f-40ec-480b-9adc-219aa6f63158', '240101', 'TUMBES', 'TUMBES', 'TUMBES');
INSERT INTO "public"."ubigeos" VALUES ('d89f97fe-bee4-45e6-9b31-aba3569fa3cf', '240102', 'TUMBES', 'TUMBES', 'CORRALES');
INSERT INTO "public"."ubigeos" VALUES ('beff3747-7d0d-450f-b679-2fe5670a6556', '240103', 'TUMBES', 'TUMBES', 'LA CRUZ');
INSERT INTO "public"."ubigeos" VALUES ('0be6e1f0-ec2f-48ae-9fe4-7ab6df47c331', '240104', 'TUMBES', 'TUMBES', 'PAMPAS DE HOSPITAL');
INSERT INTO "public"."ubigeos" VALUES ('236e9625-dc8e-4de8-8d4c-69ab6f2603dd', '240105', 'TUMBES', 'TUMBES', 'SAN JACINTO');
INSERT INTO "public"."ubigeos" VALUES ('dcc64210-83b7-44f3-b801-c9fe4abd9729', '240106', 'TUMBES', 'TUMBES', 'SAN JUAN DE LA VIRGEN');
INSERT INTO "public"."ubigeos" VALUES ('2d621a94-082f-4b71-853f-c6d9556ec9e4', '240201', 'TUMBES', 'CONTRALMIRANTE VILLAR', 'ZORRITOS');
INSERT INTO "public"."ubigeos" VALUES ('7548ff19-0af2-4227-80d4-ea8f0efc5074', '240202', 'TUMBES', 'CONTRALMIRANTE VILLAR', 'CASITAS');
INSERT INTO "public"."ubigeos" VALUES ('e140a652-2967-4561-b12c-7c1b64ccb133', '240203', 'TUMBES', 'CONTRALMIRANTE VILLAR', 'CANOAS DE PUNTA SAL');
INSERT INTO "public"."ubigeos" VALUES ('24372800-a233-4edb-a89f-7af97d2e4d19', '240301', 'TUMBES', 'ZARUMILLA', 'ZARUMILLA');
INSERT INTO "public"."ubigeos" VALUES ('78c361bf-3b38-4b7b-9954-a1af6be908e6', '240302', 'TUMBES', 'ZARUMILLA', 'AGUAS VERDES');
INSERT INTO "public"."ubigeos" VALUES ('318ef818-faf2-4f17-bf6e-6dbc98f0e55d', '240303', 'TUMBES', 'ZARUMILLA', 'MATAPALO');
INSERT INTO "public"."ubigeos" VALUES ('d7f01129-472a-43d6-8fb8-0f0beeba4df2', '240304', 'TUMBES', 'ZARUMILLA', 'PAPAYAL');
INSERT INTO "public"."ubigeos" VALUES ('2ef13ff8-e392-4ac0-a3ca-5cf755672fb8', '250101', 'UCAYALI', 'CORONEL PORTILLO', 'CALLERIA');
INSERT INTO "public"."ubigeos" VALUES ('e706b1a4-932a-43cf-8c6b-87bc3ff92fb0', '250102', 'UCAYALI', 'CORONEL PORTILLO', 'CAMPOVERDE');
INSERT INTO "public"."ubigeos" VALUES ('897e070c-0320-4bc3-8fd2-95b89f0d5ae3', '250103', 'UCAYALI', 'CORONEL PORTILLO', 'IPARIA');
INSERT INTO "public"."ubigeos" VALUES ('b9c578a6-112a-4275-bdf1-72e783c9369c', '250104', 'UCAYALI', 'CORONEL PORTILLO', 'MASISEA');
INSERT INTO "public"."ubigeos" VALUES ('24c677d1-b4cb-478f-a63b-5b42d3d4ac9b', '250105', 'UCAYALI', 'CORONEL PORTILLO', 'YARINACOCHA');
INSERT INTO "public"."ubigeos" VALUES ('1413e303-a06a-40a7-b35b-6d271aa8fead', '250106', 'UCAYALI', 'CORONEL PORTILLO', 'NUEVA REQUENA');
INSERT INTO "public"."ubigeos" VALUES ('a717435a-5bd0-4107-bf1f-5254c4b6198b', '250107', 'UCAYALI', 'CORONEL PORTILLO', 'MANANTAY');
INSERT INTO "public"."ubigeos" VALUES ('df3cbc7d-f58c-40c4-b996-67dbd7803ea1', '250201', 'UCAYALI', 'ATALAYA', 'RAIMONDI');
INSERT INTO "public"."ubigeos" VALUES ('e4d79711-b980-4401-aa5a-e2bec990e136', '250202', 'UCAYALI', 'ATALAYA', 'SEPAHUA');
INSERT INTO "public"."ubigeos" VALUES ('eeaf4bd2-49b6-42c5-b2a0-f8a11ac8c0da', '250203', 'UCAYALI', 'ATALAYA', 'TAHUANIA');
INSERT INTO "public"."ubigeos" VALUES ('2717331c-f57b-467c-8f91-f62390ffe5d7', '250204', 'UCAYALI', 'ATALAYA', 'YURUA');
INSERT INTO "public"."ubigeos" VALUES ('0ee95b6b-46c8-479e-bc5d-4eb62e0d28e6', '250301', 'UCAYALI', 'PADRE ABAD', 'PADRE ABAD');
INSERT INTO "public"."ubigeos" VALUES ('6d8b5d4d-3331-42d0-853b-61e0f7e396db', '250302', 'UCAYALI', 'PADRE ABAD', 'IRAZOLA');
INSERT INTO "public"."ubigeos" VALUES ('d4e6e790-ddf0-4dff-8b44-efb134042080', '250303', 'UCAYALI', 'PADRE ABAD', 'CURIMANA');
INSERT INTO "public"."ubigeos" VALUES ('64a1b35a-a68f-4f1a-adb0-7949f797d608', '250304', 'UCAYALI', 'PADRE ABAD', 'NESHUYA');
INSERT INTO "public"."ubigeos" VALUES ('46301f85-945f-4dd9-85eb-b04861cb2650', '250305', 'UCAYALI', 'PADRE ABAD', 'ALEXANDER VON HUMBOLDT');
INSERT INTO "public"."ubigeos" VALUES ('795c9d53-2170-433d-af6e-f644b0c2516b', '250306', 'UCAYALI', 'PADRE ABAD', 'HUIPOCA');
INSERT INTO "public"."ubigeos" VALUES ('cc132efa-da1f-4fef-80ca-24decdf0f12c', '250307', 'UCAYALI', 'PADRE ABAD', 'BOQUERON');
INSERT INTO "public"."ubigeos" VALUES ('a18280f9-7f6b-4213-8e87-a8e05c778039', '250401', 'UCAYALI', 'PURUS', 'PURUS');

-- ----------------------------
-- Table structure for units_of_measurement
-- ----------------------------
DROP TABLE IF EXISTS "public"."units_of_measurement";
CREATE TABLE "public"."units_of_measurement" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "name" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "abbreviation" varchar(4) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of units_of_measurement
-- ----------------------------
INSERT INTO "public"."units_of_measurement" VALUES ('61f70604-7a2f-4083-a4fb-b904d470c1f4', 'Metro', 'm', 'Unidad para medir longitud', 't', '2024-10-23 18:30:52.412262');
INSERT INTO "public"."units_of_measurement" VALUES ('da7687ec-31ed-4785-90cc-635c42282662', 'Unidad', 'und', 'Contador de piezas individuales', 't', '2024-10-23 18:30:52.412262');

-- ----------------------------
-- Table structure for user_permission_branchs
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_permission_branchs";
CREATE TABLE "public"."user_permission_branchs" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "user_id" uuid NOT NULL,
  "permission_id" uuid NOT NULL,
  "branch_id" uuid NOT NULL,
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of user_permission_branchs
-- ----------------------------

-- ----------------------------
-- Table structure for user_role_branchs
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_role_branchs";
CREATE TABLE "public"."user_role_branchs" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "user_id" uuid NOT NULL,
  "role_id" uuid NOT NULL,
  "branch_id" uuid NOT NULL
)
;

-- ----------------------------
-- Records of user_role_branchs
-- ----------------------------

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_roles";
CREATE TABLE "public"."user_roles" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "user_id" uuid NOT NULL,
  "role_id" uuid NOT NULL,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "is_active" bool NOT NULL DEFAULT true
)
;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO "public"."user_roles" VALUES ('badb3af3-d4dc-433b-a71a-d30087dc267c', 'b1d1167f-d21d-4a7a-a6c4-ebf89d9d6886', '670f9e58-314f-4c17-8c57-1f9f711987c6', '2025-01-12 19:11:32.785181', 't');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "username" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "employee_id" uuid,
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "is_deleted" bool NOT NULL DEFAULT false,
  "img" varchar(255) COLLATE "pg_catalog"."default",
  "last_authentication" timestamp(6)
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES ('b1d1167f-d21d-4a7a-a6c4-ebf89d9d6886', 'storres', 'gal22v10', '193480ca-cd76-4c93-999b-ca97fe902559', 't', '2025-01-12 18:39:06.336008', 'storres@vconnection.pe', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('b1d8efba-4d7f-42af-871d-04c6625572f5', 'jdoe', 'hashed_password1', NULL, 't', '2025-01-10 14:30:00', 'jdoe@example.com', 'f', 'https://primefaces.org/cdn/primeng/images/demo/avatar/amyelsner.png', '2025-01-15 10:20:00');
INSERT INTO "public"."users" VALUES ('604b8700-dc26-4792-9f42-6f16ed0f3939', 'asmith', 'hashed_password2', NULL, 't', '2025-01-05 09:15:00', 'asmith@example.com', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('d22d9a75-776b-4954-afc7-bee742c54134', 'emiller', 'hashed_password4', NULL, 't', '2024-11-20 08:45:00', 'emiller@example.com', 'f', 'https://primefaces.org/cdn/primeng/images/demo/avatar/asiyajavayant.png', '2025-01-12 14:50:00');
INSERT INTO "public"."users" VALUES ('58db35c1-805d-44f7-ae27-55dfae6ab7fa', 'storres2', 'gal22v10', '193480ca-cd76-4c93-999b-ca97fe902559', 't', '2025-01-12 22:08:34.537239', 'storres1@vconnection.pe', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('e4feb591-7e4a-4e92-a5ad-717ddcaf16a8', 'storres3', 'gal22v10', '193480ca-cd76-4c93-999b-ca97fe902559', 't', '2025-01-12 22:10:04.4161', 'storres2@vconnection.pe', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('53279e55-a40d-4a9f-99ac-d0626c595996', 'mjones', 'hashed_password3', NULL, 'f', '2024-12-30 11:00:00', 'asmith2@example.com', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('225f29a4-60b2-4313-9f0a-30fe62d10600', 'bjohnson', 'hashed_password5', NULL, 'f', '2024-10-15 07:30:00', 'asmith3@example.com', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('b05cd973-0878-4dc8-9afc-8000ead682d2', 'krobles', '123456', NULL, 't', '2025-01-19 19:33:24.372031', 'krobles@vconnection.com', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('b1fcab5d-efee-4e52-b07a-0e838f50641c', 'jtorres', '123456', NULL, 't', '2025-01-19 19:34:00.626203', 'jtorres@vconnection.com', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('0abf0004-ee63-4fad-940f-15445597ef0d', 'dtorres', '12345', NULL, 't', '2025-01-19 19:34:20.895477', 'dtorres@vconnection.com', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('ecb24651-067b-4a98-b63f-664a83c2ac74', 'ftorres', '121231', NULL, 't', '2025-01-19 19:34:35.10156', 'ftorres@vconnection.com', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('35b098fa-f6d8-4540-8258-452c1436e3fe', 'aespinola', '121323', NULL, 't', '2025-01-19 19:34:52.791593', 'aespinola@vconnection.com', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('658d2920-5cd7-4915-b32e-0b346341e441', 'krodriguez', '93838', NULL, 't', '2025-01-19 19:35:17.209146', 'krodriguez@vconnecion.com', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('3a588f45-bb30-46a6-96f9-6bb6284f9f5a', 'mmolina', '939393', NULL, 't', '2025-01-19 19:35:32.225699', 'mmolina@vconnection.com', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('8f97510c-9c77-474e-87be-3ab564663e3f', 'lsalcedo', '002929', NULL, 't', '2025-01-19 19:35:49.731132', 'lsalcedo@vconnection.com', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('96ab0265-1b3d-4f98-82bc-164f0ef7bbd3', 'flopez', '993939', NULL, 't', '2025-01-19 19:36:08.853363', 'flopez@vconnection.com', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('b666a950-e749-4428-a62c-aff7c0504f5e', 'aarroyo', '9kksi', NULL, 't', '2025-01-19 19:36:25.673827', 'aarroyo@vconnection.com', 'f', NULL, NULL);
INSERT INTO "public"."users" VALUES ('ae7c9a42-4f19-483d-b879-ae96a0e9e456', 'restrada', '0oalala', NULL, 't', '2025-01-19 19:36:48.099362', 'restrada@vconnection.com', 'f', NULL, NULL);

-- ----------------------------
-- Table structure for warehouse_products
-- ----------------------------
DROP TABLE IF EXISTS "public"."warehouse_products";
CREATE TABLE "public"."warehouse_products" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "warehouse_id" uuid NOT NULL,
  "product_id" uuid NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of warehouse_products
-- ----------------------------

-- ----------------------------
-- Table structure for warehouses
-- ----------------------------
DROP TABLE IF EXISTS "public"."warehouses";
CREATE TABLE "public"."warehouses" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "short_name" varchar(8) COLLATE "pg_catalog"."default" NOT NULL,
  "ubigeo_id" uuid NOT NULL,
  "address" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "registration_date" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "branche_id" uuid NOT NULL
)
;

-- ----------------------------
-- Records of warehouses
-- ----------------------------

-- ----------------------------
-- Function structure for armor
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."armor"(bytea);
CREATE FUNCTION "public"."armor"(bytea)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_armor'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for armor
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."armor"(bytea, _text, _text);
CREATE FUNCTION "public"."armor"(bytea, _text, _text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_armor'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for crypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."crypt"(text, text);
CREATE FUNCTION "public"."crypt"(text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_crypt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for dearmor
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dearmor"(text);
CREATE FUNCTION "public"."dearmor"(text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_dearmor'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."decrypt"(bytea, bytea, text);
CREATE FUNCTION "public"."decrypt"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_decrypt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for decrypt_iv
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."decrypt_iv"(bytea, bytea, bytea, text);
CREATE FUNCTION "public"."decrypt_iv"(bytea, bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_decrypt_iv'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for digest
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."digest"(bytea, text);
CREATE FUNCTION "public"."digest"(bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_digest'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for digest
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."digest"(text, text);
CREATE FUNCTION "public"."digest"(text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_digest'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."encrypt"(bytea, bytea, text);
CREATE FUNCTION "public"."encrypt"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_encrypt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for encrypt_iv
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."encrypt_iv"(bytea, bytea, bytea, text);
CREATE FUNCTION "public"."encrypt_iv"(bytea, bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_encrypt_iv'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gen_random_bytes
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gen_random_bytes"(int4);
CREATE FUNCTION "public"."gen_random_bytes"(int4)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_random_bytes'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gen_random_uuid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gen_random_uuid"();
CREATE FUNCTION "public"."gen_random_uuid"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/pgcrypto', 'pg_random_uuid'
  LANGUAGE c VOLATILE
  COST 1;

-- ----------------------------
-- Function structure for gen_salt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gen_salt"(text, int4);
CREATE FUNCTION "public"."gen_salt"(text, int4)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_gen_salt_rounds'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gen_salt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gen_salt"(text);
CREATE FUNCTION "public"."gen_salt"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_gen_salt'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hmac
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hmac"(text, text, text);
CREATE FUNCTION "public"."hmac"(text, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_hmac'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hmac
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hmac"(bytea, bytea, text);
CREATE FUNCTION "public"."hmac"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_hmac'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_armor_headers
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_armor_headers"(text, OUT "key" text, OUT "value" text);
CREATE FUNCTION "public"."pgp_armor_headers"(IN text, OUT "key" text, OUT "value" text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/pgcrypto', 'pgp_armor_headers'
  LANGUAGE c IMMUTABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for pgp_key_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_key_id"(bytea);
CREATE FUNCTION "public"."pgp_key_id"(bytea)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_key_id_w'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt"(bytea, bytea, text);
CREATE FUNCTION "public"."pgp_pub_decrypt"(bytea, bytea, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt"(bytea, bytea);
CREATE FUNCTION "public"."pgp_pub_decrypt"(bytea, bytea)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt"(bytea, bytea, text, text);
CREATE FUNCTION "public"."pgp_pub_decrypt"(bytea, bytea, text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt_bytea"(bytea, bytea, text);
CREATE FUNCTION "public"."pgp_pub_decrypt_bytea"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt_bytea"(bytea, bytea, text, text);
CREATE FUNCTION "public"."pgp_pub_decrypt_bytea"(bytea, bytea, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt_bytea"(bytea, bytea);
CREATE FUNCTION "public"."pgp_pub_decrypt_bytea"(bytea, bytea)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_encrypt"(text, bytea);
CREATE FUNCTION "public"."pgp_pub_encrypt"(text, bytea)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_encrypt_text'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_encrypt"(text, bytea, text);
CREATE FUNCTION "public"."pgp_pub_encrypt"(text, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_encrypt_text'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_encrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_encrypt_bytea"(bytea, bytea, text);
CREATE FUNCTION "public"."pgp_pub_encrypt_bytea"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_encrypt_bytea'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_encrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_encrypt_bytea"(bytea, bytea);
CREATE FUNCTION "public"."pgp_pub_encrypt_bytea"(bytea, bytea)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_encrypt_bytea'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_decrypt"(bytea, text);
CREATE FUNCTION "public"."pgp_sym_decrypt"(bytea, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_sym_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_decrypt"(bytea, text, text);
CREATE FUNCTION "public"."pgp_sym_decrypt"(bytea, text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_sym_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_decrypt_bytea"(bytea, text, text);
CREATE FUNCTION "public"."pgp_sym_decrypt_bytea"(bytea, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_decrypt_bytea"(bytea, text);
CREATE FUNCTION "public"."pgp_sym_decrypt_bytea"(bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_encrypt"(text, text, text);
CREATE FUNCTION "public"."pgp_sym_encrypt"(text, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_encrypt_text'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_encrypt"(text, text);
CREATE FUNCTION "public"."pgp_sym_encrypt"(text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_encrypt_text'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_encrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_encrypt_bytea"(bytea, text, text);
CREATE FUNCTION "public"."pgp_sym_encrypt_bytea"(bytea, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_encrypt_bytea'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_encrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_encrypt_bytea"(bytea, text);
CREATE FUNCTION "public"."pgp_sym_encrypt_bytea"(bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_encrypt_bytea'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Primary Key structure for table bodegas
-- ----------------------------
ALTER TABLE "public"."bodegas" ADD CONSTRAINT "warehouses_storage_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table branches
-- ----------------------------
ALTER TABLE "public"."branches" ADD CONSTRAINT "branches_code_key" UNIQUE ("code");

-- ----------------------------
-- Primary Key structure for table branches
-- ----------------------------
ALTER TABLE "public"."branches" ADD CONSTRAINT "branches_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table categories
-- ----------------------------
ALTER TABLE "public"."categories" ADD CONSTRAINT "categories_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table categories
-- ----------------------------
ALTER TABLE "public"."categories" ADD CONSTRAINT "categories_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table clients
-- ----------------------------
ALTER TABLE "public"."clients" ADD CONSTRAINT "clients_client_code_key" UNIQUE ("client_code");

-- ----------------------------
-- Primary Key structure for table clients
-- ----------------------------
ALTER TABLE "public"."clients" ADD CONSTRAINT "clients_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table company
-- ----------------------------
ALTER TABLE "public"."company" ADD CONSTRAINT "company_ruc_key" UNIQUE ("ruc");

-- ----------------------------
-- Primary Key structure for table company
-- ----------------------------
ALTER TABLE "public"."company" ADD CONSTRAINT "company_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table employees
-- ----------------------------
ALTER TABLE "public"."employees" ADD CONSTRAINT "employees_dni_key" UNIQUE ("dni");

-- ----------------------------
-- Primary Key structure for table employees
-- ----------------------------
ALTER TABLE "public"."employees" ADD CONSTRAINT "employees_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table interaction_types
-- ----------------------------
ALTER TABLE "public"."interaction_types" ADD CONSTRAINT "interaction_types_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table interaction_types
-- ----------------------------
ALTER TABLE "public"."interaction_types" ADD CONSTRAINT "interaction_types_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table interactions
-- ----------------------------
ALTER TABLE "public"."interactions" ADD CONSTRAINT "interactions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table location_types
-- ----------------------------
ALTER TABLE "public"."location_types" ADD CONSTRAINT "location_types_code_key" UNIQUE ("code");

-- ----------------------------
-- Primary Key structure for table location_types
-- ----------------------------
ALTER TABLE "public"."location_types" ADD CONSTRAINT "location_types_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table modules
-- ----------------------------
ALTER TABLE "public"."modules" ADD CONSTRAINT "modules_routes_key" UNIQUE ("routes");

-- ----------------------------
-- Primary Key structure for table modules
-- ----------------------------
ALTER TABLE "public"."modules" ADD CONSTRAINT "modules_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table movement_operation_statuses
-- ----------------------------
ALTER TABLE "public"."movement_operation_statuses" ADD CONSTRAINT "operation_statuses_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table movement_operation_statuses
-- ----------------------------
ALTER TABLE "public"."movement_operation_statuses" ADD CONSTRAINT "operation_statuses_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table movement_operation_types
-- ----------------------------
ALTER TABLE "public"."movement_operation_types" ADD CONSTRAINT "operation_types_name_key" UNIQUE ("name");
ALTER TABLE "public"."movement_operation_types" ADD CONSTRAINT "operation_types_code_key" UNIQUE ("code");

-- ----------------------------
-- Primary Key structure for table movement_operation_types
-- ----------------------------
ALTER TABLE "public"."movement_operation_types" ADD CONSTRAINT "operation_types_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table orders
-- ----------------------------
ALTER TABLE "public"."orders" ADD CONSTRAINT "tasks_work_order_key" UNIQUE ("work_order");

-- ----------------------------
-- Primary Key structure for table orders
-- ----------------------------
ALTER TABLE "public"."orders" ADD CONSTRAINT "tasks_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table orders_status
-- ----------------------------
ALTER TABLE "public"."orders_status" ADD CONSTRAINT "task_status_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table orders_status
-- ----------------------------
ALTER TABLE "public"."orders_status" ADD CONSTRAINT "task_status_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table permissions
-- ----------------------------
ALTER TABLE "public"."permissions" ADD CONSTRAINT "permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table product_movement_items
-- ----------------------------
ALTER TABLE "public"."product_movement_items" ADD CONSTRAINT "product_movement_details_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table product_movements
-- ----------------------------
ALTER TABLE "public"."product_movements" ADD CONSTRAINT "product_movements_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table products
-- ----------------------------
ALTER TABLE "public"."products" ADD CONSTRAINT "products_sku_code_key" UNIQUE ("sku_code");
ALTER TABLE "public"."products" ADD CONSTRAINT "products_name_key" UNIQUE ("name");

-- ----------------------------
-- Checks structure for table products
-- ----------------------------
ALTER TABLE "public"."products" ADD CONSTRAINT "products_type_check" CHECK (type::text = ANY (ARRAY['Liquidable'::character varying, 'Consumible'::character varying, 'Almacenable'::character varying]::text[]));

-- ----------------------------
-- Primary Key structure for table products
-- ----------------------------
ALTER TABLE "public"."products" ADD CONSTRAINT "products_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table role_permissions
-- ----------------------------
ALTER TABLE "public"."role_permissions" ADD CONSTRAINT "role_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table roles
-- ----------------------------
ALTER TABLE "public"."roles" ADD CONSTRAINT "roles_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table roles
-- ----------------------------
ALTER TABLE "public"."roles" ADD CONSTRAINT "roles_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table serialized_product_movement_items
-- ----------------------------
ALTER TABLE "public"."serialized_product_movement_items" ADD CONSTRAINT "serialized_product_movement_details_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table serialized_product_stocks
-- ----------------------------
ALTER TABLE "public"."serialized_product_stocks" ADD CONSTRAINT "serialized_product_stocks_serial_number_key" UNIQUE ("serial_number");

-- ----------------------------
-- Primary Key structure for table serialized_product_stocks
-- ----------------------------
ALTER TABLE "public"."serialized_product_stocks" ADD CONSTRAINT "serialized_product_stocks_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table stock_products
-- ----------------------------
ALTER TABLE "public"."stock_products" ADD CONSTRAINT "stock_products_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table suppliers
-- ----------------------------
ALTER TABLE "public"."suppliers" ADD CONSTRAINT "suppliers_ruc_key" UNIQUE ("ruc");

-- ----------------------------
-- Primary Key structure for table suppliers
-- ----------------------------
ALTER TABLE "public"."suppliers" ADD CONSTRAINT "suppliers_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table transactions
-- ----------------------------
ALTER TABLE "public"."transactions" ADD CONSTRAINT "transactions_document_type_key" UNIQUE ("document_type");

-- ----------------------------
-- Primary Key structure for table transactions
-- ----------------------------
ALTER TABLE "public"."transactions" ADD CONSTRAINT "transactions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table ubigeos
-- ----------------------------
ALTER TABLE "public"."ubigeos" ADD CONSTRAINT "ubigeos_code_key" UNIQUE ("code");

-- ----------------------------
-- Primary Key structure for table ubigeos
-- ----------------------------
ALTER TABLE "public"."ubigeos" ADD CONSTRAINT "ubigeos_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table units_of_measurement
-- ----------------------------
ALTER TABLE "public"."units_of_measurement" ADD CONSTRAINT "units_of_measurement_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table units_of_measurement
-- ----------------------------
ALTER TABLE "public"."units_of_measurement" ADD CONSTRAINT "units_of_measurement_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table user_permission_branchs
-- ----------------------------
ALTER TABLE "public"."user_permission_branchs" ADD CONSTRAINT "users_permissions_branchs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table user_role_branchs
-- ----------------------------
ALTER TABLE "public"."user_role_branchs" ADD CONSTRAINT "users_roles_branchs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table user_roles
-- ----------------------------
ALTER TABLE "public"."user_roles" ADD CONSTRAINT "user_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_username_key" UNIQUE ("username");
ALTER TABLE "public"."users" ADD CONSTRAINT "users_email_key" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table warehouse_products
-- ----------------------------
ALTER TABLE "public"."warehouse_products" ADD CONSTRAINT "warehouse_products_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table warehouses
-- ----------------------------
ALTER TABLE "public"."warehouses" ADD CONSTRAINT "warehouses_name_key" UNIQUE ("name");
ALTER TABLE "public"."warehouses" ADD CONSTRAINT "warehouses_short_name_key" UNIQUE ("short_name");

-- ----------------------------
-- Primary Key structure for table warehouses
-- ----------------------------
ALTER TABLE "public"."warehouses" ADD CONSTRAINT "warehouses_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table bodegas
-- ----------------------------
ALTER TABLE "public"."bodegas" ADD CONSTRAINT "warehouses_storage_location_type_id_fkey" FOREIGN KEY ("location_type_id") REFERENCES "public"."location_types" ("id") ON DELETE RESTRICT ON UPDATE NO ACTION;
ALTER TABLE "public"."bodegas" ADD CONSTRAINT "warehouses_storage_technician_user_id_fkey" FOREIGN KEY ("technician_user_id") REFERENCES "public"."users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."bodegas" ADD CONSTRAINT "warehouses_storage_warehouse_id_fkey" FOREIGN KEY ("warehouse_id") REFERENCES "public"."warehouses" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table clients
-- ----------------------------
ALTER TABLE "public"."clients" ADD CONSTRAINT "fk_ubigeo" FOREIGN KEY ("ubigeo_id") REFERENCES "public"."ubigeos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table company
-- ----------------------------
ALTER TABLE "public"."company" ADD CONSTRAINT "fk_company_ubigeo" FOREIGN KEY ("ubigeo_id") REFERENCES "public"."ubigeos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table employees
-- ----------------------------
ALTER TABLE "public"."employees" ADD CONSTRAINT "fk_employees_ubigeo" FOREIGN KEY ("ubigeo_id") REFERENCES "public"."ubigeos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table interactions
-- ----------------------------
ALTER TABLE "public"."interactions" ADD CONSTRAINT "fk_interaction_type" FOREIGN KEY ("interaction_type_id") REFERENCES "public"."interaction_types" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."interactions" ADD CONSTRAINT "fk_task" FOREIGN KEY ("task_id") REFERENCES "public"."orders" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."interactions" ADD CONSTRAINT "fk_user" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table orders
-- ----------------------------
ALTER TABLE "public"."orders" ADD CONSTRAINT "fk_tasks_backoffice_user" FOREIGN KEY ("backoffice_user_id") REFERENCES "public"."users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."orders" ADD CONSTRAINT "fk_tasks_branche" FOREIGN KEY ("branche_id") REFERENCES "public"."branches" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."orders" ADD CONSTRAINT "fk_tasks_client" FOREIGN KEY ("client_id") REFERENCES "public"."clients" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."orders" ADD CONSTRAINT "fk_tasks_task_status" FOREIGN KEY ("order_status_id") REFERENCES "public"."orders_status" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."orders" ADD CONSTRAINT "fk_tasks_technician_user" FOREIGN KEY ("technician_user_id") REFERENCES "public"."users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table product_movement_items
-- ----------------------------
ALTER TABLE "public"."product_movement_items" ADD CONSTRAINT "fk_product_movement_details_movement" FOREIGN KEY ("product_movement_id") REFERENCES "public"."product_movements" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."product_movement_items" ADD CONSTRAINT "fk_product_movement_details_product" FOREIGN KEY ("product_id") REFERENCES "public"."products" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table product_movements
-- ----------------------------
ALTER TABLE "public"."product_movements" ADD CONSTRAINT "fk_created_user" FOREIGN KEY ("created_user_id") REFERENCES "public"."users" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."product_movements" ADD CONSTRAINT "fk_destination_warehouse_storage" FOREIGN KEY ("destination_bodega_id") REFERENCES "public"."bodegas" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."product_movements" ADD CONSTRAINT "fk_operation_status" FOREIGN KEY ("movement_operation_status_id") REFERENCES "public"."movement_operation_statuses" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."product_movements" ADD CONSTRAINT "fk_operation_type" FOREIGN KEY ("movement_operation_type_id") REFERENCES "public"."movement_operation_types" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."product_movements" ADD CONSTRAINT "fk_origin_warehouse_storage" FOREIGN KEY ("origin_bodega_id") REFERENCES "public"."bodegas" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."product_movements" ADD CONSTRAINT "fk_received_user" FOREIGN KEY ("received_user_id") REFERENCES "public"."users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."product_movements" ADD CONSTRAINT "fk_supplier" FOREIGN KEY ("supplier_id") REFERENCES "public"."suppliers" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."product_movements" ADD CONSTRAINT "fk_task" FOREIGN KEY ("order_id") REFERENCES "public"."orders" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table products
-- ----------------------------
ALTER TABLE "public"."products" ADD CONSTRAINT "products_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."categories" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."products" ADD CONSTRAINT "products_supplier_id_fkey" FOREIGN KEY ("supplier_id") REFERENCES "public"."suppliers" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."products" ADD CONSTRAINT "products_unit_of_measurement_id_fkey" FOREIGN KEY ("unit_of_measurement_id") REFERENCES "public"."units_of_measurement" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table role_permissions
-- ----------------------------
ALTER TABLE "public"."role_permissions" ADD CONSTRAINT "role_permission_permission_id_fkey" FOREIGN KEY ("permission_id") REFERENCES "public"."permissions" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."role_permissions" ADD CONSTRAINT "role_permission_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "public"."roles" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table serialized_product_movement_items
-- ----------------------------
ALTER TABLE "public"."serialized_product_movement_items" ADD CONSTRAINT "fk_serialized_product_movement_details_movement" FOREIGN KEY ("product_movement_id") REFERENCES "public"."product_movements" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."serialized_product_movement_items" ADD CONSTRAINT "fk_serialized_product_movement_details_stock" FOREIGN KEY ("serialized_product_stock_id") REFERENCES "public"."serialized_product_stocks" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table serialized_product_stocks
-- ----------------------------
ALTER TABLE "public"."serialized_product_stocks" ADD CONSTRAINT "fk_stock_product_serials_product" FOREIGN KEY ("product_id") REFERENCES "public"."products" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."serialized_product_stocks" ADD CONSTRAINT "fk_stock_product_serials_warehouses_storage" FOREIGN KEY ("bodega_id") REFERENCES "public"."bodegas" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stock_products
-- ----------------------------
ALTER TABLE "public"."stock_products" ADD CONSTRAINT "fk_stock_products_product" FOREIGN KEY ("product_id") REFERENCES "public"."products" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."stock_products" ADD CONSTRAINT "fk_stock_products_warehouses_storage" FOREIGN KEY ("bodega_id") REFERENCES "public"."bodegas" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table suppliers
-- ----------------------------
ALTER TABLE "public"."suppliers" ADD CONSTRAINT "suppliers_ubigeo_id_fkey" FOREIGN KEY ("ubigeo_id") REFERENCES "public"."ubigeos" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table user_permission_branchs
-- ----------------------------
ALTER TABLE "public"."user_permission_branchs" ADD CONSTRAINT "users_permissions_branchs_branch_id_fkey" FOREIGN KEY ("branch_id") REFERENCES "public"."branches" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."user_permission_branchs" ADD CONSTRAINT "users_permissions_branchs_permission_id_fkey" FOREIGN KEY ("permission_id") REFERENCES "public"."permissions" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."user_permission_branchs" ADD CONSTRAINT "users_permissions_branchs_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table user_role_branchs
-- ----------------------------
ALTER TABLE "public"."user_role_branchs" ADD CONSTRAINT "users_roles_branchs_branch_id_fkey" FOREIGN KEY ("branch_id") REFERENCES "public"."branches" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."user_role_branchs" ADD CONSTRAINT "users_roles_branchs_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "public"."roles" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."user_role_branchs" ADD CONSTRAINT "users_roles_branchs_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table user_roles
-- ----------------------------
ALTER TABLE "public"."user_roles" ADD CONSTRAINT "user_role_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "public"."roles" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."user_roles" ADD CONSTRAINT "user_role_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "fk_users_employee" FOREIGN KEY ("employee_id") REFERENCES "public"."employees" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table warehouse_products
-- ----------------------------
ALTER TABLE "public"."warehouse_products" ADD CONSTRAINT "warehouse_products_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "public"."products" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."warehouse_products" ADD CONSTRAINT "warehouse_products_warehouse_id_fkey" FOREIGN KEY ("warehouse_id") REFERENCES "public"."warehouses" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table warehouses
-- ----------------------------
ALTER TABLE "public"."warehouses" ADD CONSTRAINT "warehouses_branche_id_fkey" FOREIGN KEY ("branche_id") REFERENCES "public"."branches" ("id") ON DELETE RESTRICT ON UPDATE NO ACTION;
ALTER TABLE "public"."warehouses" ADD CONSTRAINT "warehouses_ubigeo_id_fkey" FOREIGN KEY ("ubigeo_id") REFERENCES "public"."ubigeos" ("id") ON DELETE RESTRICT ON UPDATE NO ACTION;
