# 🎉 ContosoDashboard - Proyecto Listo para Ejecutar

## ✅ Estado Actual

**Proyecto**: ContosoDashboard-SSD (Microsoft Learning)
**Ubicación**: `c:\Users\JuanJoséGrantOtárola\CopilotAdventures\ContosoDashboard`
**Estado**: ✅ Descargado, restaurado y compilado exitosamente

## 📊 Información de Build

```
✅ Restore: Successful (con 2 warnings menores sobre versiones)
✅ Build: Successful (7 warnings de nullable checks - ignorables)
🆘 .NET Version: 9.0.200
🆘 Target Framework: .NET 8.0
```

## 🚀 Cómo Ejecutar

### Opción 1: Desde PowerShell
```powershell
cd "c:\Users\JuanJoséGrantOtárola\CopilotAdventures\ContosoDashboard\ContosoDashboard"
dotnet run
```

### Opción 2: Desde Visual Studio Code
1. Abre la carpeta `ContosoDashboard` en VS Code
2. Instala la extensión C# Dev Kit
3. Presiona F5 o ve a Debug → Start Debugging

### Opción 3: Desde Visual Studio 2022
1. Abre `ContosoDashboard\ContosoDashboard.sln`
2. Click en Run o presiona F5

## 🌐 Acceso Web

Una vez que ejecutes `dotnet run`, la aplicación estará en:
```
https://localhost:7143 (HTTPS)
http://localhost:5000   (HTTP)
```

## 🔐 Login de Prueba

La aplicación tiene un sistema mock de autenticación. En la página de login:

**Selecciona un usuario del dropdown** (sin contraseña):

1. **System Administrator** (`admin@contoso.com`)
   - Acceso completo al sistema
   - Puede ver todos los datos

2. **Camille Nicole** (`camille.nicole@contoso.com`)
   - Rol: Project Manager
   - Departamento: Engineering

3. **Floris Kregel** (`floris.kregel@contoso.com`)
   - Rol: Team Lead
   - Departamento: Engineering

4. **Ni Kang** (`ni.kang@contoso.com`)
   - Rol: Employee
   - Departamento: Engineering

## 📁 Estructura del Código

```
ContosoDashboard/
├── Pages/                 # Páginas Blazor
├── Components/            # Componentes reutilizables
├── Services/              # Lógica de negocio
│   ├── AuthService.cs     # Manejo de autenticación
│   ├── TaskService.cs     # Gestión de tareas
│   └── DepartmentService.cs
├── Models/                # Modelos de datos
├── Data/                  # Acceso a datos en memoria
├── Shared/                # Componentes compartidos (Layout, Nav)
├── wwwroot/               # CSS, JS, imágenes
├── Program.cs             # Configuración de startup
├── App.razor              # Componente raíz
└── ContosoDashboard.csproj

```

## 🔧 Tecnologías Utilizadas

- **Framework**: ASP.NET Core 8.0
- **UI Framework**: Blazor Server
- **Authentication**: Cookie-based (Mock)
- **Data Storage**: In-memory (local)
- **Language**: C#
- **Build Tool**: dotnet CLI

## 📚 Documentos Importantes

- `README.md` - Información general
- `GETTING_STARTED.md` - Guía de inicio
- `StakeholderDocs/` - Especificaciones técnicas

## 🎓 Conceptos a Aprender

1. **Spec-Driven Development (SDD)**: Cómo especificaciones impulsan el desarrollo
2. **Blazor Components**: Creación de componentes interactivos
3. **Service Layer Pattern**: Separación de lógica de negocio
4. **Authentication & Authorization**: Seguridad en ASP.NET Core
5. **Razor Pages vs Components**: Cuándo usar cada uno
6. **State Management**: Manejo de datos en Blazor Server

## ⚙️ Configuración del Proyecto

### appsettings.json
```json
{
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft.AspNetCore": "Warning"
    }
  },
  "AllowedHosts": "*"
}
```

### Program.cs - Servicios Registrados
- Blazor Server
- Authentication Services
- Authorization Policies
- Dependency Injection
- Custom Services (TaskService, AuthService, etc.)

## 🛠️ Comandos Útiles

```powershell
# Ejecutar aplicación
dotnet run

# Solo compilar sin ejecutar
dotnet build

# Limpiar build anterior
dotnet clean

# Ver dependencias
dotnet list package

# Ejecutar en modo watch (recarga automática)
dotnet watch run

# Publicar para producción
dotnet publish -c Release
```

## 🔍 Debugging

### Breakpoints en VS Code
1. Abre un archivo `.cs`
2. Haz click en el gutter izquierdo (línea a depurar)
3. Presiona F5 para iniciar debugging
4. Usa F10 para step over, F11 para step into

### En Visual Studio 2022
- F5: Start debugging
- F10: Step over
- F11: Step into
- Shift+F5: Stop debugging

## ⚠️ Cosas a Recordar

- ✅ Sistema de autenticación es MOCK (solo para entrenamiento)
- ✅ No hay base de datos real (en-memoria)
- ✅ No tiene integración cloud
- ✅ Perfecto para aprender patrones
- ❌ NO usar en producción sin cambios

## 📝 Modificaciones Sugeridas para Aprender

1. Agregar un nuevo tipo de widget al dashboard
2. Crear un nuevo servicio para otra entidad
3. Implementar paginación en listados
4. Agregar validación de entrada
5. Crear nuevas páginas con autenticación

## 🚨 Si Hay Errores

### Error: "ASP.NET Core Workload not installed"
```powershell
dotnet workload install aspnetcore
```

### Error: "Project file not found"
Asegúrate de estar en la carpeta correcta:
```powershell
cd "c:\Users\JuanJoséGrantOtárola\CopilotAdventures\ContosoDashboard\ContosoDashboard"
```

### Error de Puerto en Uso
```powershell
# Cambia el puerto en launchSettings.json o ejecuta:
dotnet run --urls "http://localhost:5001"
```

## 📞 Soporte

Para dudas sobre:
- **Blazor**: https://learn.microsoft.com/en-us/aspnet/core/blazor/
- **ASP.NET Core**: https://learn.microsoft.com/en-us/aspnet/core/
- **Microsoft Learn**: https://learn.microsoft.com/

---

## 🎯 Próximo Paso

Ejecuta en tu terminal:
```powershell
cd "c:\Users\JuanJoséGrantOtárola\CopilotAdventures\ContosoDashboard\ContosoDashboard"
dotnet run
```

¡Luego abre tu navegador en `http://localhost:5000` o `https://localhost:7143`! 🚀

---

**Proyecto listo para explorar y aprender** ✅

Creado: Enero 28, 2026
