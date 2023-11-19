# Official Guide

https://graphql-ruby.org/guides

1. Create a new Rails project

```bash
rails new rails-graphql-todoapp --api
```

2. Generate the Todo model

```bash
rails generate model Todo title:string completed:boolean:default(false)
```

3. Run migrations

```bash
rails db:migrate
```

3. Integrate GraphQL and GraphiQL

```bash
gem 'graphql'
gem 'graphiql-rails', group: :development
```

4. Install gems

```bash
bundle
```

5. Generate GraphQL files:

```bash
rails generate graphql:install
```

```bash
bundle
```

```bash
rails g graphql:object Todo title:String completed:Boolean
```

6. Mounth the GraphiQL Engine:

```ruby
Rails.application.routes.draw do
  # ...
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/your/endpoint"
  end
end
```

7. Add configurations

application.rb:
```
require "sprockets/railtie"
```

app/assets/config/manifest.js:
```
//= link graphiql/rails/application.css
//= link graphiql/rails/application.js
```

6. Run server

```bash
rails s
```
