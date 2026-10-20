# Enterprise Risk Lab

Configuración mínima del taller: frontend React con Auth0 y API Spring Boot protegida por JWT.

## Ejecutar localmente

1. Copia `frontend/.env.example` como `frontend/.env.local` y completa los valores de Auth0.
2. En `backend`, ejecuta `mvn spring-boot:run`.
3. En `frontend`, ejecuta `npm install` y `npm run dev`.
4. Inicia sesión y comprueba `Call protected API` desde `http://localhost:5173`.

La API protegida está disponible en `http://localhost:8080/api/risk-status`.

Evidencia local de la llamada autenticada: [evidence-authenticated-api.png](evidence-authenticated-api.png).

## Git

Antes de crear commits, configura la identidad de la cuenta que usará el repositorio:

```powershell
git config user.name "JuanDiegoRV"
git config user.email "TU_CORREO_VERIFICADO_EN_GITHUB"
```

El primer commit fue creado desde otro equipo porque no tenía disponible mi computador local. Por eso GitHub muestra una identidad distinta en ese commit; el repositorio pertenece a `JuanDiegoRV`.

El despliegue remoto se realiza después de validar este flujo local.

Las herramientas portables se guardan en `.tools/`, que está excluida de Git. Para activarlas en una terminal de PowerShell:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
. .\scripts\activate-env.ps1
```
