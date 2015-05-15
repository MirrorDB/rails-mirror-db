# ![MirrorBrand](https://avatars1.githubusercontent.com/u/10462330?v=3&s=64)   MirrorDB

## Installation

Add the MirrorDB :gem: to your application's Gemfile :page_facing_up::

```ruby
gem 'mirror-db'
```

And then execute :arrow_forward::

    $ bundle install

Or install it yourself as :arrow_forward::

    $ gem install mirror-db

## Usage
1. Install the Rails :gem: (tested using 3.2 and greater)
    * ``` $ gem install rails ```
2. [Install the MirrorGEM](#installation)
3. Generate your rails project

    ``` $ rails new app_name ```
    
4. Access your app folder

    ``` $ cd app_name ```
    
5. Run the mirror installation :dash:

    ``` $ rails g mirror:install ```
    
6. install the Gemfile updated

    ``` $ bundle install ```
    
7. Run the mirror reflect :boom: (it runs scaffolds, so lets :pizza: while the mirror work for you :tada:)

    ```rake
        # DBMS = SGBD 
        rake mirror:reflect[dbms_name database_name username password host]
    ```
    __Obs__: params not necessary if default DB connections: localhost, root, no_password :beers:

<br><br>
__Congratilation!__ your new app mirrored is up. :tada:

## Base Mirror-V1 WorkFlow

![Mirror V1 WorkFlow Diagram](https://github.com/MirrorDB/rails-mirror-db/blob/master/modeling/diagrams/MirrorWorkFlow-V1.png?raw=true)

## Contributing

1. Fork it :twisted_rightwards_arrows: ( https://github.com/MirrorDB/rails-mirror-db )
    * Create and check issues pending ([good issue pattern created example](https://github.com/MirrorDB/rails-mirror-db/issues/12))
2. Create your :new: feature branch (`git checkout -b my-new-feature`)
3. Commit your changes :up: (`git commit -am 'Add some feature'`)
4. Push to the branch :repeat: (`git push origin my-new-feature`)
5. Create a new Pull Request :repeat_one:

## Useful guides for contributing 
1. [__How rails templates can be edited & how them work__](http://technology.stitchfix.com/blog/2014/01/06/rails-app-templates/)


## How does it work on the core :zap:
![Mirror WorkFlow Diagram](https://github.com/MirrorDB/rails-mirror-db/blob/master/modeling/diagrams/MirrorWorkFlow-VN.png?raw=true)
