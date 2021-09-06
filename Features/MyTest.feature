Feature: Casos de ingreso de nombre de usuario y password
Scenario: Verificar ingreso de sesion
Given Abrir Chrome
When ingresar Username "rcabello" y Password "1234"
Then inicia sesion