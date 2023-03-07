# Laravel Run In Cloudrun

## Files
with minimal touch. Basically, just need to have;

* cloudrun.Dockerfile
* cloudrun/000-default.conf

the rest is as usual.

## Docker Image
i choose `php:8.1-apache` i means the apache. Because that is recommended image from the documentation
https://cloud.google.com/run/docs/quickstarts/build-and-deploy/deploy-php-service
