# ToDo App
* This application can manage tasks.

# Development environment
* Ruby 2.6.3
* Rails 6.0.3.2
* AWS Cloud9

# Installation

## AWS Cloud9
* All environments are built on Cloud9's terminal.

### Ruby 2.6.3
```
$ rvm install 2.6.3
```

### Rails 6.0.3.2
```
$ gem install rails -v "6.0.3.2"
```

### yarn
* Since webpacker has been standard since Rails 6.0, we need to install yarn in the development environment.
```
$ curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
$ echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
$ sudo apt-get update && sudo apt-get install yarn
```

### webpacker
* If you don't have webpacker installed, you can run the following command.
```
$ rails webpacker:install
```
