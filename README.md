# Enterprise Risk Lab

Configuración mínima del taller: frontend React con Auth0 y API Spring Boot protegida por JWT.

## Ejecutar localmente

1. Copia `frontend/.env.example` como `frontend/.env.local` y completa los valores de Auth0.
2. En `backend`, ejecuta `mvn spring-boot:run`.
3. En `frontend`, ejecuta `npm install` y `npm run dev`.
4. Inicia sesión y comprueba `Call protected API` desde `http://localhost:5173`.

La API protegida está disponible en `http://localhost:8080/api/risk-status`.

Evidencia local de la llamada autenticada: [evidence-authenticated-api.png](evidence-authenticated-api.png).

El despliegue remoto se realiza después de validar este flujo local.

Las herramientas portables se guardan en `.tools/`, que está excluida de Git. Para activarlas en una terminal de PowerShell:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
. .\scripts\activate-env.ps1
```
