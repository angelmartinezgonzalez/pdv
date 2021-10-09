Para 64bits no hay forma de compilar usando c++ builder. y no es necesario por que no soporta hacer binarios de 64 bits. a lo mejor con uno de c++ builder x64 

aqui hay otra forma de tener librearia openssl de 64 bits con visual c

https://www.youtube.com/watch?v=icNn-eJif9k

y aqui los lib ssl construidos con visual c 
https://indy.fulgan.com/SSL/LinkLibs/

no se si esos libs de visual studio se puedanusar tal cual en c++ builder win 32 y win64

hay que investigar



Como compilar  openssl-10.2q con c++ builder 2010 Win32	



deshabiltar folders donde se denga otras versoines de c++ builder instalados



o en su caso modificar el archivo de configuracion dodne se lee el compilador







Borland C++ builder 
 ---------------------

abre una consola msdos

y dirigete a la ubicacion donde se encuentra el proyecto openssl



 



 * Configure for building with Borland Builder:
cd C:\dev\cppbuilder2010\librerias\openssl\openssl-1.0.2q\openssl-1.0.2qWin32Consola

perl Configure BC-32  no-asm --prefix=C:\dev\cppbuilder2010\librerias\openssl\openssl-1.0.2q\openssl-1.0.2qWin32Consola\binarioswin32

 * Create the appropriate makefile
ms\do_nasm

 * Build
"C:\Program Files (x86)\Embarcadero\RAD Studio\7.0\bin\make.exe" -f ms\bcb.mak

"C:\Program Files (x86)\Embarcadero\RAD Studio\7.0\bin\make.exe" -f ms\bcb.mak test

"C:\Program Files (x86)\Embarcadero\RAD Studio\7.0\bin\make.exe" -f ms\bcb.mak install