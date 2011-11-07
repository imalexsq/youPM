## youPM

Head over to the [Wiki](https://github.com/halixand/youPM/wiki).

## Local Development
You test and develop your changes / features in your local environment.
Ryanicle suggested that we don't have separate local databases but rather
share a development database.

For the development phase we opened the mysql-port on the AWS
server:
host: pm.312h.com
username: rails
password: EEUyXWaboQ33YC

**It's likely that we change that as soon as there are production data on that server.
We probably then set up another dedicated test mysql server.**


## Deploy
We have an AWS micro instance server, available at:
<http://pm.312h.com>. This is of course a temporary name to save
you from typing the longer AWS instance domain each time.

You can ssh into the server like this:

ssh ubuntu@pm.312h.com

You need to send your public ssh key (e.g. ~/.ssh/id_rsa.pub) to Alex or
Christian so that we can add your key to the authorized_keys list. To deploy we use capistrano.
If you commited / merged your changes into the
master branch, you can call capistrano from your Rails root directory, e.g.

cd /rails/youPM
cap production deploy

Because we're using an AWS micro instance, deployment can take a while due to
precompilation of the asset pipeline. After deployment Rails also need a couple of seconds
to restart the Rails environment on your first call.





