# WanderoS

Sistema desarrollado originalmente como proyecto de la clase 'Sistemas Operativos 2' de la carrera de Ing. en sistemas de la UNAH

## WanderOS

Es un sistema operativo basado en Arch Linux, elaborado con Archiso.
El objetivo del mismo es tener un sistema especializado al desarrollo en general, eliminando la molesta necesidad al desarrollador de configurar su sistema operativo para comenzar a trabajar.

## Instrucciones:

* git clone https://github.com/SolimanHub/WanderoS.git
* mkarchiso -v -w WanderoS/work -o WanderoS/out WanderoS/
* run_archiso -i WanderoS/out/wanderos-yyyy.mm.dd-x86_64.iso

    En caso que el ultimo comando les marque error "qemu"
    pacman -S qemu

Todo el procedimiento descrito realizarlo como root