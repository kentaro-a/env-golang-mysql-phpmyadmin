# Utility Environment for Golang, mysql and phpmyadmin.


# Dev for mac.
Encourage to use docker-compose for development to manage some containers.
Contained docker-compose.yml makes 3 containers such as web, db and phpmyadmin, those containers are completely separated.
Share the volume with db container to retain data persistently.

```
$ docker-compose up -d
```

After above You can see below containers created.

````
IMAGE                   PORTS                               NAMES
phpmyadmin/phpmyadmin   9000/tcp, 0.0.0.0:20003->80/tcp     pma
golang                  0.0.0.0:20002->80/tcp               web
mysql:5.7               0.0.0.0:3306->3306/tcp, 33060/tcp   db
````

Then you can access database by http://192.168.99.100:20003 which is the default access point of docker-machine.
If you cannot access you can try this and check you accessible ip.
```
$ docker-machine ip
192.168.99.100
```



# Clean Rebuild and Launch Snippet
```
$ docker-compose stop ; docker-compose rm -vf ; docker volume rm $(docker volume ls -q) ; docker-compose build --no-cache ; docker-compose up -d ; docker ps -a
```
or

```
$ docker-compose down
$ docker volume rm $(docker volume ls -q)
```




