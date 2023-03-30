# Laravel Run In Cloudrun

## Files
with minimal touch. Basically, just need to have;

* cloudrun.Dockerfile
* cloudrun/000-default.conf
* might conclude nothing special in this repo. just that Cloudrun we map the dynamic port like this.

`RUN sed -i 's/80/${PORT}/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf`

the rest is as usual.

## Docker Image
i choose `php:8.2-apache` i means the apache. Because that is recommended image from the documentation
https://cloud.google.com/run/docs/quickstarts/build-and-deploy/deploy-php-service


