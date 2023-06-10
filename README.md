# practica-vagrant-rundeck-i2ds-devops

1. Se debe entregar un repositorio público en Github, el nombre del repositorio debe ser: “practica-vagrant-rundeck-i2ds-devops”
2. El repositorio debe contener un archivo Vagrantfile que al ejecutar el comando vagrant up, cree un entorno de Ubuntu con Rundeck instalado y listo para usarse.  La instalación debe ser de la versión Open Source y no Enterprise.
3. El Hypervisor a usar debe ser virtualbox
4. El vagrant box base debe ser: https://app.vagrantup.com/ubuntu/boxes/bionic64 Links to an external site.
5. Debe de tener las siguientes características: 2GB en RAM y 2 CPUs
6. Se debe realizar port forwarding del puerto 4440 del host hacia el guest
7. Se debe configurar la IP privada 192.168.124.100
8. Tanto el hostname a nivel sistema operativo, como  el nombre de la VM en virtualbox debe ser: rundeck
9. La instalación debe realizarse con un script en shell.
10. Se debe instalar el plugin vagrant share.
11. Para que vagrant share funcione, debes instalar ngrok. 
Esta ocasión deberás crear el script en bash que aprovisiona el software. La documentación para apoyarse en realizar este script está disponible en : https://docs.rundeck.com/docs/administration/install/Links to an external site.

Las credenciales de acceso según la documentación son: admin/admin

Se validará la instalación entrando vía web a Rundeck en la dirección:  http://192.168.124.100:4440/Links to an external site.

Una vez se corre 
~~~
vagrant up
~~~

Se debe configurar ngrok
~~~
ngrok config add-authtoken user-token
~~~

Donde el user-token se le da a cada usuario que se logea en ngrok

por último con
~~~
ngrok http 4440
~~~

y se obtiene la url que redirecciona el servicio de Rundeck que se está corriendo en la máquina de ubuntu/bionic64

```shell
ngrok                                                                                                   (Ctrl+C to quit)                                                                                                                        Announcing ngrok-go: The ngrok agent as a Go library: https://ngrok.com/go                                                                                                                                                                      Session Status                online                                                                                    Account                       harrihoyos2680@gmail.com (Plan: Free)                                                     Version                       3.3.1                                                                                     Region                        United States (us)                                                                        Latency                       105ms                                                                                     Web Interface                 http://127.0.0.1:4040                                                                     Forwarding                    https://1672-191-95-170-65.ngrok-free.app -> http://localhost:4440                                                                                                                                                Connections                   ttl     opn     rt1     rt5     p50     p90                                                                             0       0       0.00    0.00    0.00    0.00```


<img width="960" alt="image" src="https://github.com/Wiz80/practica-vagrant-rundeck-i2ds-devops/assets/50804224/010bda92-2b6c-4c65-8728-78fc89156397">
