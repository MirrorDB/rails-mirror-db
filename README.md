# ![MirrorBrand](https://raw.githubusercontent.com/MirrorReflection/rails_mirror_reflection/master/modeling/logos/MirrorLogo.min.png)   MirrorReflection

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mirror_reflection'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mirror_reflection

## Usage

1. Install the Rails GEM (3.2 or greater)
    * $ gem install rails
2. [Install the MirrorGEM](#installation)
3. If you want one code-line:
    ```git
        git clone git@github.com:MirrorReflection/rails_mirror_reflection.git
    ```
    
    * ``` $ cd rails_mirror_reflection ```
    * __Obs__: This usage permit to update your __database.yml__ dynamic
    * Go to step 5
4. If you want to generate your rails app
    * Create your app normaly: ``` $ rails new project_name ```
    * Access it ``` $ cd project_name ```
    * Run the mirror ``` $ rake mirror:install ```
    * __Obs__: This usage you must update your __database.yml__ by yourself
5. __Run__:     
    ```ruby
        rake mirror:new[project_name sgbd_name database_name username password host]
    ```
    <br>
    
    __Obs__: if your DataBase connections is default (localhost, root, no_password) just run
    ```ruby
        rake mirror:new[project_name]
    ```
<br><br>
__Congratilation!__ your new app mirrored is up.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mirror_reflection/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## How does it work on the core
![Mirror WorkFlow Diagram](https://raw.githubusercontent.com/MirrorReflection/rails_mirror_reflection/master/modeling/diagrams/Mirror%20-%20WorkFlow.png)
