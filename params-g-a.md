# Rails Params

**create a rails application called rails_params**

```
rails new rails_params -d postgresql -T
rails db:create
```

**generate a controller**

```
rails g controller Main
```

# As a user, I can visit a page called cubed that takes a number as a param and displays that number cubed.

**add cube method to controller**

```ruby
def cube
  @number = params[:number].to_i
  @cubed_number = @number**3

  #we don't need to render the view explicitly as long as the view has the same name as the method
end

```

**add cube view**
in Main/cube.html.erb:

```ruby
<h1> Our cubed number: <%= @cubed_number %> </h1>

```

**add cube route**

```ruby
  get 'cubed/:number' => 'main#cube'

```
