# Blogaments

## What is This?

Blogaments is a great way for users to write and share articles across the internet.  Users can login and setup an account and get going very quickly.

## Want to check it out?
Link to Heroku: [Blogaments](https://whispering-badlands-56408.herokuapp.com/)

If you want to check it out locally, you'll have to clone this repository and spin up a Rails server.  To do that, follow the instructions below:

```ruby
  # Move to your code directory, I am using a default in the example
  # but you can use any  directory.
  cd ~/Development/code

  # Clone the project code
  git clone git@github.com:zacscodingclub/blogaments.git

  # Move into the new directory we just cloned
  cd blogaments

  # Install the necessary gems
  bundle install

  # Seed with some sample data
  rake db:migrate

  # Startup the server
  rails s

  # Visit the webpage in your browser at localhost:3000
```

## ToDo

1. Update UI/styling
2. Create more tests
  1. User signup
  2. Create article with and without categories

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zacscodingclub/blogaments.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
