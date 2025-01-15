import { Injectable } from '@angular/core';
import { MenuItem } from 'primeng/api';

@Injectable({
  providedIn: 'root'
})
export class MenuService {

  private menuItems : MenuItem[] = [];
  private subMenuItems : MenuItem[] = [];
  constructor() {
    this.menuItems = [
      {
        label: "Inventario",
        icon: "pi pi-warehouse",
        styleClass: "bg-red-400",
        routerLink:"/inventario"
      },
      {
        label: "Ventas",
        icon: "pi pi-shopping-cart",
        styleClass: "bg-green-400",
        routerLink:"/ventas"
      },
      {
        label: "Empleados",
        icon: "pi pi-users",
        styleClass: "bg-blue-400"
      },
      {
        label: "Reportes",
        icon: "pi pi-chart-line",
        styleClass: "bg-purple-400"
      },
      {
        label: "Proveedores",
        icon: "pi pi-truck",
        styleClass: "bg-yellow-400"
      },
      {
        label: "Ajustes",
        icon: "pi pi-cog",
        styleClass: "bg-gray-400",
        routerLink:"/ajustes"
      },
      {
        label: "Finanzas",
        icon: "pi pi-dollar",
        styleClass: "bg-teal-400"
      },
      {
        label: "Tareas",
        icon: "pi pi-briefcase",
        styleClass: "bg-orange-400"
      }
    ];


  }

  getMenu(label:string) {
    return this.menuItems.find(item => item.label?.toUpperCase() === label.toUpperCase());
  }

  getMenuItems() : MenuItem[] {
    return this.menuItems;
  }

  getSubMenuItems(label: string | undefined) : MenuItem[] {
    this.subMenuItems = [];

    if (label === 'inventario') {
      this.subMenuItems = [
        {
            label: 'Informacion general',
            icon: 'pi pi-info-circle', // Se mantiene, representa la pantalla principal
        },
        {
            label: 'Operaciones',
            icon: 'pi pi-briefcase', // Operaciones generales
            items: [
                {
                    label: 'Despacho',
                    icon: 'pi pi-truck', // Transporte/Logística
                    shortcut: '⌘+S',
                },
                {
                    label: 'Ajustes',
                    icon: 'pi pi-sliders-h', // Ajustes/configuración de operaciones
                    shortcut: '⌘+B',
                },
                {
                    separator: true,
                },
                {
                    label: 'Traslado interno',
                    icon: 'pi pi-sync', // Movimiento de productos o intercambio
                    shortcut: '⌘+U',
                },
                {
                    label: 'Entrada/Salidas',
                    icon: 'pi pi-sign-in', // Entradas y salidas de almacén
                    shortcut: '⌘+U',
                },
            ],
        },
        {
          label: 'Productos',
          icon: 'pi pi-tags', // Representa gestión de productos
          shortcut: '⌘+U',
        },
        {
            label: 'Informes',
            icon: 'pi pi-chart-bar', // Representa informes o estadísticas
            items: [
                {
                    label: 'Consultas',
                    icon: 'pi pi-search', // Búsqueda o consultas
                    shortcut: '⌘+S',
                },
                {
                  label: 'Stock',
                  icon: 'pi pi-archive', // Búsqueda o consultas
                  shortcut: '⌘+S',
              },
                {
                    label: 'Inventario',
                    icon: 'pi pi-box', // Representa almacén/inventario
                    shortcut: '⌘+B',
                },
                {
                    label: 'Movimiento de productos',
                    icon: 'pi pi-arrow-right-arrow-left', // Movimiento entre ubicaciones
                    shortcut: '⌘+U',
                },
                {
                    label: 'Valuación de inventario',
                    icon: 'pi pi-dollar', // Relacionado con valuación o costos
                    shortcut: '⌘+U',
                },
            ],
        },
        {
            label: 'Ajustes',
            icon: 'pi pi-cog', // Representa configuración general
            items: [
                {
                    label: 'Almacenes',
                    icon: 'pi pi-sitemap', // Almacenes o estructura
                    shortcut: '⌘+S',
                },
                {
                    label: 'Categorías',
                    icon: 'pi pi-th-large', // Clasificación en categorías
                    shortcut: '⌘+B',
                },
            ],
        },
      ];
    }

    if (label === 'ajustes') {
      this.subMenuItems = [
        {
          label: 'Opciones generales',
          icon: 'pi pi-info-circle',
          routerLink: 'ajustes'
        },
        {
          label: 'Usuarios y Roles',
          icon: 'pi pi-user',
          items: [
              {
                  label: 'Usuarios',
                  icon: 'pi pi-users',
                  routerLink: 'ajustes/usuarios'
              },
              {
                label: 'Roles',
                icon: 'pi pi-user-edit',
              },
              {
                label: 'Permisos',
                icon: 'pi pi-lock'
              }
          ]
        },
        {
            label: 'Seguridad',
            icon: 'pi pi-shield', // Icono que representa seguridad
            items: [
                {
                    label: 'Políticas de Contraseña',
                    icon: 'pi pi-lock-open', // Representa políticas de seguridad
                    shortcut: 'Ctrl+P',
                    description: 'Definir reglas para contraseñas seguras',
                },
                {
                    label: 'Control de Acceso',
                    icon: 'pi pi-eye-slash', // Representa acceso restringido
                    shortcut: 'Ctrl+A',
                    description: 'Configurar restricciones de acceso por IP o horario',
                },
            ],
        },
      {
          label: 'Notificaciones',
          icon: 'pi pi-bell', // Representa notificaciones y alertas
          items: [
              {
                  label: 'Plantillas de Correo',
                  icon: 'pi pi-envelope', // Representa emails
                  shortcut: 'Ctrl+E',
                  description: 'Configurar plantillas de correo para usuarios',
              },
              {
                  label: 'Alertas del Sistema',
                  icon: 'pi pi-exclamation-circle', // Representa alertas importantes
                  shortcut: 'Ctrl+N',
                  description: 'Definir alertas o notificaciones críticas',
              },
          ],
      },
      {
          label: 'Logs del Sistema',
          icon: 'pi pi-file', // Representa registros del sistema
          shortcut: 'Ctrl+L',
          description: 'Revisar el historial de actividad y eventos del sistema',
      }
      ];
    }

    return this.subMenuItems;
  }
}
