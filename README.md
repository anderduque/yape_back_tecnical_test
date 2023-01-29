# Prueba Tecnica Yape 🚀
## 1) Clone/download the repo
Create a folder and clone or download the repo inside of it
```bash
$ mkdir myFolder && cd myFolder
$ git clone https://github.com/anderduque/yape_back_tecnical_test.git
```
## 2) KARATE
En la siguiente dirección puede encontrar toda la información relacionada con nuestra herramienta de automatización de pruebas.
https://github.com/intuit/karate
---
## Requerimientos
Se deben instalar los siguientes programas:

Java 8 o superior
JDK de Java de la misma versión instalada
Apache Maven 3.6.x
Se recomienda instalar IntelliJ IDEA versión Community como entorno de desarrollo
Se sugiere instalar Git Bash como consola para líneas de comando
---
## Configuraciones
Se deben realizar y validar las siguientes configuraciones:
Ubique dentro de la carpeta de Apache Maven la carpeta conf y con un editor de texto abra el archivo settings.
Edite el archivo settings en la opción mirrors, agregando la siguiente dirección:
```
  <mirrors>
    <mirror>
     <id>Local_Repo</id>
     <mirrorOf>*</mirrorOf>
     <name>Local_Repo</name>
     <url>https://repo1.maven.org/maven2/</url>
    </mirror>
  </mirrors>
```
Ingrese a variables de entorno del sistema y cree las variables **JAVA_HOME** y **M2_HOME** ubicando la ruta
donde se encuentran el archivo JDK de Java y de el de Maven respectivamente.
Agregue ambas variables al Path de las Variables delsistema de la siguente manera: **%M2_HOME%\bin** y **%JAVA_HOME%\bin**.
Verifique desde una consola le versión de Java y Maven respectivamente para validar que la instalación y configuración
quedaron correctamente.
En el IntelliJ IDEA descargue el plugin de **Cucumber for Java**, desde la opción File>Settings>Plugins.
Por último cree una carpeta en C:\ con un nombre corto para su repositorio local.
---

# 🥒 Resumen y Explicación 🥒 

Esta es una de las razones por las que elegí este Framework y por las que lo he estado usando y contribuyendo al proyecto durante los últimos 4 años. Cuando está escribiendo muchas pruebas de API, y dependiendo de su tipo de negocio, de repente necesitaría ejecutar una prueba de rendimiento/estrés, entonces, en lugar de crear un nuevo proyecto, dedicar horas a la documentación, planificación, etc., ¿por qué? ¿No aproveche esta ventaja para reutilizar sus pruebas API para rendimiento/estrés también?

Si está familiarizado con el idioma Gherkin, lo entenderá fácilmente. Las características son legibles y pueden ser bien interpretadas por cualquier equipo de desarrollo o control de calidad.

Y por último, pero no menos importante, Karate ha incluido la automatización de pruebas de interfaz de usuario / automatización de pruebas móviles, pruebas de contrato (pruebas simuladas) con la forma simple de Gherkin. Para ver más -> [haga clic aquí](https://github.com/karatelabs/karate)
