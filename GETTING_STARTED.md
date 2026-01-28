# 📊 ContosoDashboard - Nuevo Proyecto Clonado

## ✅ Descarga y Extracción Completadas

El repositorio **ContosoDashboard-SSD** de Microsoft Learning ha sido clonado exitosamente en:
```
c:\Users\JuanJoséGrantOtárola\CopilotAdventures\ContosoDashboard
```

## 📋 Información del Proyecto

**Repositorio Original**: https://github.com/MicrosoftLearning/ContosoDashboard-SSD
**Propósito**: Educational - Spec-Driven Development (SDD) Training
**Stack Tecnológico**: ASP.NET Core + Blazor Server
**Licencia**: Microsoft Learning (Training Only)

## 🚀 Características Principales

### Autenticación & Seguridad
- ✅ Sistema de autenticación basado en cookies (8 horas sliding)
- ✅ Control de acceso basado en roles (RBAC)
- ✅ Sistema de login mock para entrenamiento
- ✅ Headers de seguridad (CSP, X-Frame-Options, etc.)
- ✅ Protección contra IDOR (Insecure Direct Object Reference)

### Usuarios de Prueba (Sin contraseña requerida)

| Nombre | Email | Rol | Departamento |
|--------|-------|-----|--------------|
| System Administrator | `admin@contoso.com` | Administrator | IT |
| Camille Nicole | `camille.nicole@contoso.com` | Project Manager | Engineering |
| Floris Kregel | `floris.kregel@contoso.com` | Team Lead | Engineering |
| Ni Kang | `ni.kang@contoso.com` | Employee | Engineering |

## 📁 Estructura del Proyecto

```
ContosoDashboard/
├── ContosoDashboard/           # Aplicación principal
│   ├── Pages/                  # Páginas Blazor
│   ├── Components/             # Componentes Blazor
│   ├── Services/               # Servicios de lógica
│   ├── Models/                 # Modelos de datos
│   ├── Data/                   # Acceso a datos
│   ├── Shared/                 # Componentes compartidos
│   ├── wwwroot/                # Archivos estáticos
│   ├── App.razor               # Componente raíz
│   ├── Program.cs              # Configuración
│   └── ContosoDashboard.csproj # Proyecto C#
├── .github/                    # Configuraciones GitHub
├── StakeholderDocs/            # Documentación
├── README.md                   # Documentación principal
└── LICENSE-CODE                # Licencia

```

## 🔧 Requisitos Previos

- .NET 8.0 SDK o superior
- Visual Studio 2022 o Visual Studio Code
- Node.js (para herramientas frontend opcionales)

## ⚙️ Configuración Inicial

### 1. Instalar Dependencias
```bash
cd ContosoDashboard
dotnet restore
```

### 2. Ejecutar la Aplicación
```bash
dotnet run
```

La aplicación estará disponible en: `https://localhost:5001` o `http://localhost:5000`

### 3. Login
1. Ve a `/login` (redirect automático si no estás autenticado)
2. Selecciona un usuario del dropdown
3. Click en "Login"
4. Serás redirigido al dashboard

## 📚 Documentación

- **README.md**: Información general del proyecto
- **StakeholderDocs/**: Documentación técnica detallada
- **.github/**: Workflow e issues templates

## 🎓 Casos de Uso de Entrenamiento

Este proyecto enseña:
- ✅ Spec-Driven Development (SDD)
- ✅ Blazor Server development
- ✅ ASP.NET Core patterns
- ✅ Security best practices (en contexto educativo)
- ✅ Component architecture
- ✅ Authentication & Authorization
- ✅ Service layer patterns

## ⚠️ Importantes - Leer Primero

### No es para Producción
- ❌ Autenticación mock (no usar en producción)
- ❌ Sin cifrado de contraseñas
- ❌ Sin validación externa de identidad
- ❌ Solo para entrenamiento offline

### Limitaciones Conocidas
- Local-only (no integración cloud)
- Sin dependencias externas
- Mock authentication
- Propósitos educativos únicamente

## 📖 Próximos Pasos

1. **Explorar** la estructura del código
2. **Leer** la documentación en `StakeholderDocs/`
3. **Entender** los patrones de Spec-Driven Development
4. **Ejecutar** la aplicación localmente
5. **Modificar** y experimentar con el código

## 🔗 Recursos Útiles

- [ASP.NET Core Docs](https://learn.microsoft.com/en-us/aspnet/core/)
- [Blazor Documentation](https://learn.microsoft.com/en-us/aspnet/core/blazor/)
- [Microsoft Learn - Training](https://learn.microsoft.com/)

## 📝 Notas de Desarrollo

### Archivos Importantes
- `Program.cs`: Configuración de la aplicación
- `App.razor`: Componente raíz Blazor
- `appsettings.json`: Configuración

### Configurar Visual Studio Code
```json
{
  "extensions": ["ms-dotnettools.csharp"],
  "settings": {
    "omnisharp.useModernNet": true
  }
}
```

## 🤔 Preguntas Frecuentes

**¿Puedo usar esto en producción?**
No. Es solo para entrenamiento. Necesitarías implementar:
- Autenticación real (OAuth 2.0, OpenID Connect)
- Cifrado de contraseñas
- Base de datos segura
- Validación de roles real

**¿Qué versión de .NET necesito?**
.NET 8.0 o superior recomendado

**¿Cómo cambio los usuarios de prueba?**
Edita el código en `Services/` que maneja la autenticación mock

---

**Proyecto clonado y listo para explorar** ✅

Próximo paso: `dotnet restore` y `dotnet run`
