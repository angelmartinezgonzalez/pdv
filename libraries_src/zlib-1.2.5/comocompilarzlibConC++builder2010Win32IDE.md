descomprimir zlib-1.2.11.tar en una carpeta

crear carpeta de proyecto con la siguiente estuctura de carpetas



zlib1211_lib

|

|

​	|src

​	|include

​	|lib





copiar en la carpeta src los archivos .c 

copiar en la carpeta include los archivos .h



Desde el ide, crear un nuevo archivo .lib.
File->New->Other
de las opciones seleccionar del lado izquierdo C++Builder Projects

del lado derecho seleccionar Static Library

dar click en ok



guardar el proyecto como zlib.lib

agregar al proyecto los archivos .c en la carpeta src  y en la carpeta include agregar los archivos .h



dar click derecho en el proyecto zlib.lib seleccionar del menu que aparece  Options...

de la ventana que aparece . del lado izquierdo la opcion de Directories and Conditionals.

del lado derecho. usar la opción de  

Final output directory 

escribir   .\lib

en la opcion de 

include path

dar click en el boton  que tienen  ...
en la ventana include path   ingresar   .\include

dar click en Add

y despues en OK