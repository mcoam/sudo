# sudo

Para ocupar la clase, tenemos que hacer lo siguiente:

1. En el archivo `common.yaml` de hiera colocar

```
classes:
        - sudo
```
Y luego colocamos las configuraciones
```
sudo::add_users:
      'mcoa':
         name     : "mcoa"
         content  : "%itlinux ALL=(ALL) NOPASSWD: ALL"
         priority : "10"
sudo::add_groups:
        'itlinux':
                name     : "itlinux"
                content  : "%itlinux ALL=(ALL) NOPASSWD: ALL"
                priority : "01"
```
Lo anterior va a crear el archivo `/etc/sudoers.d/10_mcoa` con el contenido `%itlinux ALL=(ALL) NOPASSWD: ALL` (el usuario pertenece a ese grupo) . Además, dependiendo de la versión de S.O, copierá el archivo `/etc/sudoers`
