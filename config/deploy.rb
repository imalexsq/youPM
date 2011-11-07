require 'capistrano/ext/multistage'

# Add RVM's lib directory to the load path.
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))

require "bundler/capistrano"
require "delayed/recipes"
load 'deploy/assets'

set :stages, %w(production staging)


# Load RVM's capistrano plugin.
require "rvm/capistrano"

set :rvm_ruby_string, '1.9.3'

default_run_options[:pty] = true
system "ssh-add"
set :application, "youPM"
set :repository, "git@github.com:halixand/youPM.git"
set :branch, "master"
set :scm, "git"
set :domain, "youpm.312h.com"
set :port, 22
set :deploy_to, "/var/www/youPM_live/"
set :deploy_via, :remote_cache
set :scm_verbose, :true
set :user, "ubuntu"
set :use_sudo, false
set :rvm_bin_path, "/usr/local/rvm/bin"
ssh_options[:forward_agent] = true

role :web, domain                         # Your HTTP server, Apache/etc
role :app, domain                        # This may be the same as your `Web` server
role :db,  domain , :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"


# Shared Assets / Data Setup
set :shared_assets, %w{data}
namespace :assets  do
  namespace :symlinks do
    desc "Setup application symlinks for shared assets"
    task :setup, :roles => [:app, :web] do
      shared_assets.each { |link| run "mkdir -p #{shared_path}/#{link}" }
    end

    desc "Link assets for current deploy to the shared location"
    task :update, :roles => [:app, :web] do
      shared_assets.each { |link| run "ln -nfs #{shared_path}/#{link} #{release_path}/#{link}" }
    end
  end
end
before "deploy:setup" do
  assets.symlinks.setup
end
before "deploy:symlink" do
  assets.symlinks.update
end


# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
   task :start do
   end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
