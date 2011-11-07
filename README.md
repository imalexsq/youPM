## youPM

Header over to the [Wiki](https://github.com/halixand/youPM/wiki).


## Test Server
We have an AWS micro instance server, available at:
<http://pm.312h.com>. This is of course a temporary name to save
you from typing the longer AWS instance domain.

You can ssh into the server like this:

ssh ubuntu@pm.312h.com

You need to send your public ssh key (e.g. ~/.ssh/id_rsa.pub) to Alex or
Christian so that we can add your key to the authorized_keys list.

## Deploy
To deploy we use capistrano. If you commited / merged your changes into the
master branch, you can call capistrano from your Rails root directory, e.g.

cd /rails/youPM
cap production deploy

Because we're using a AWS micro instance, deployment can take a while due to
precompilation of the asset pipeline.

After deployment Rails also need a couple of second to restart the Rails
environment on your first call.





