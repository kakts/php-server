# php-server

## How to use it (for mac or other linux computer)

#### Install "composer"
If you haven't install "composer" yet, please install "composer"
https://getcomposer.org/download/

Run this in your terminal to get the latest Composer version.
```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '55d6ead61b29c7bdee5cccfb50076874187bd9f21f65d8991d46ec5cc90518f447387fb9f76ebae1fbbacf329e583e30') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
```
After doing this. composer.phar file will be created at current directory.
So, you can move this file to the user-defined shell command.

```
mv composer.phar /usr/local/bin/composer
```


#### Install "smarty"
To install "smarty", you have to type this on top directory.
```
composer install
```


#### Start web server
```
php -S localhost:8001
```
You can access to http://localhost:8001
