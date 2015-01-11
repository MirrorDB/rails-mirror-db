# ![MirrorBrand](https://raw.githubusercontent.com/MirrorReflection/rails_mirror_reflection/master/modeling/logos/MirrorLogo.min.png)   MirrorReflection

TODO: Write a gem description

## Installation

Add the MirrorReflection:gem: to your application's Gemfile :page_facing_up::

```ruby
gem 'mirror_reflection'
```

And then execute :arrow_forward::

    $ bundle install

Or install it yourself as :arrow_forward::

    $ gem install mirror_reflection

## Usage
1. Install the Rails:gem: (3.2 or greater)
    * ``` $ gem install rails ```
2. [Install the MirrorGEM](#installation)
3. Generate your rails project

    ``` $ rails new app_name ```
    
4. Access your app folder

    ``` $ cd app_name ```
    
5. Run the mirror installation :dash:

    ``` $ rails g mirror_reflection:install ```
    
6. Run the mirror reflect :boom: (it scaffolds, so lets :pizza: while the mirror work for you :tada:)

    ```rake
        # DBMS == SGBD 
        rake mirror:reflect[dbms_name database_name username password host]
    ```
    <br>
    
    __Obs__: if your DataBase connections is default (localhost, root, no_password) params are unnecessary :beers:

<br><br>
__Congratilation!__ your new app mirrored is up. :tada:

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mirror_reflection/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## How does it work on the core
![Mirror WorkFlow Diagram](https://raw.githubusercontent.com/MirrorReflection/rails_mirror_reflection/master/modeling/diagrams/Mirror%20-%20WorkFlow.png)
