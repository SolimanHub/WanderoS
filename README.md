# WanderoS

Es un sistema operativo basado en Arch Linux, elaborado con Archiso.
El objetivo del mismo es tener un sistema enfocado al desarrollo en general, eliminando la molesta necesidad al desarrollador de configurar su sistema operativo para comenzar a trabajar.

Dado dicho objetivo, esperamos que aquella persona que instale WanderOS en su ordenador comience a trabajar inmediatamente y si necesita configurar algo, sea lo minimo posible. 

## Entorno de escritorio
XFCE4 personalizado

## Inicio de session
sddm personalizado

## Usuario y contraseña
* Usuario: os2
* Contraseña: 123

* Contraseña root: 123

## Consideración
WanderOS esta enfocado al desarrollo y cuenta con las herramientas necesarias para 
dicho objetivo, pero WanderOS puede ser utilizada por cualquier persona, no 
necesariamente un desarrollador.

Dado que cuenta con un abanico de programas lo suficientemente amplio para ser utilizado por el usuario común como un sistema operativo del día a día.

## Paqutes pre-instalados

### Desarrollo

* Archiso
* Arduino IDE
* Atom
* Apache
* git
* gcc
* JDK Java
* MariaDB
* Meld
* nodejs
* npm
* netbeans
* neovim
* node-red
* pyhton
* pip
* Perl
* PHP
* qt5
* Sublime-text 3
* Visual-code
* Freecad
* Cmake

### otros

* vokoscreen
* mpv
* audacious
* inkscape
* gimp
* libreoffice
* firefox
* chromium
* kdenlive
* terminal tilix
* evince

La lista continua, pero considero que en este punto ya tendrán una idea de lo que les espera al utilizar WanderOS.

## Instrucciones:

    Realizar los siguientes pasos como usuario root.

* git clone https://github.com/SolimanHub/WanderoS.git
* mkarchiso -v -w WanderoS/work -o WanderoS/out WanderoS/
* run_archiso -i WanderoS/out/wanderos-yyyy.mm.dd-x86_64.iso



En caso que el ultimo comando les marque error "qemu"

`pacman -S qemu`

