import { Injectable } from '@angular/core';
import { MenuItem } from 'primeng/api';


@Injectable({
  providedIn: 'root'
})
export class MenuService {

  private readonly _menuItems : MenuItem[] = [];
  private readonly _configurationOptions : MenuItem[] = [];

  constructor() {
    this._menuItems = [
      {
        label: "Inventario",
        icon: "pi pi-warehouse",
        styleClass: "bg-red-400",
        routerLink:"/inventario",
        items:[
          {
              label: 'Informacion general',
          },
          {
              label: 'Operaciones',
              items: [
                  {
                      label: 'Despacho',
                      shortcut: '⌘+S',
                  },
                  {
                      label: 'Ajustes',
                      shortcut: '⌘+B',
                  },
                  {
                      separator: true,
                  },
                  {
                      label: 'Traslado interno',
                      shortcut: '⌘+U',
                  },
                  {
                      label: 'Entrada/Salidas',
                      shortcut: '⌘+U',
                  },
              ],
          },
          {
            label: 'Productos',
            shortcut: '⌘+U',
          },
          {
              label: 'Informes',
              items: [
                  {
                      label: 'Consultas',
                      shortcut: '⌘+S',
                  },
                  {
                    label: 'Stock',
                    shortcut: '⌘+S',
                },
                  {
                      label: 'Inventario',
                      shortcut: '⌘+B',
                  },
                  {
                      label: 'Movimiento de productos',
                      shortcut: '⌘+U',
                  },
                  {
                      label: 'Valuación de inventario',
                      shortcut: '⌘+U',
                  },
              ],
          },
          {
              label: 'Ajustes',
              items: [
                  {
                      label: 'Almacenes',
                      shortcut: '⌘+S',
                  },
                  {
                      label: 'Categorías',
                      shortcut: '⌘+B',
                  },
              ],
          },
        ]
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
        routerLink:"/ajustes",
        items: [
            {
              label: 'Opciones generales',
              routerLink: 'ajustes'
            },
            {
              label: 'Usuarios y Roles',
              items: [
                  {
                      label: 'Usuarios',
                      routerLink: 'ajustes/usuarios'
                  },
                  {
                    label: 'Roles',
                  },
                  {
                    label: 'Permisos',
                  }
              ]
            },
            {
                label: 'Seguridad',
                items: [
                    {
                        label: 'Políticas de Contraseña',
                        shortcut: 'Ctrl+P',
                        description: 'Definir reglas para contraseñas seguras',
                    },
                    {
                        label: 'Control de Acceso',
                        shortcut: 'Ctrl+A',
                        description: 'Configurar restricciones de acceso por IP o horario',
                    },
                ],
            },
          {
              label: 'Notificaciones',
              items: [
                  {
                      label: 'Plantillas de Correo',
                      shortcut: 'Ctrl+E',
                      description: 'Configurar plantillas de correo para usuarios',
                  },
                  {
                      label: 'Alertas del Sistema',
                      shortcut: 'Ctrl+N',
                      description: 'Definir alertas o notificaciones críticas',
                  },
              ],
          },
          {
              label: 'Logs del Sistema',
              shortcut: 'Ctrl+L',
              description: 'Revisar el historial de actividad y eventos del sistema',
          }
        ]
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

    this._configurationOptions = [
      {
        separator:true,
      },
      {
        label:'Documentación',
      },
      {
        label: 'Soporte'
      },
      {
        separator: true
      },
      {
        label: 'Settings',
      },
      {
          label: 'Messages',
      },
      {
          label: 'Cerrar sessión',
      }
    ];

  }

  getMenu(label:string) {
    return this._menuItems.find(item => item.label?.toUpperCase() === label.toUpperCase());
  }

  getMenuItems() : MenuItem[] {
    return this._menuItems;
  }

  getConfiguratinOptions() : MenuItem[] {
    return this._configurationOptions;
  }

}
