require 'test_helper'

class MoreTest < Minitest::Test
  # These lines of code should not be edited. They add necessary
  # functionality for running our "acceptance tests".
  def app
    MyApp
  end

  # The actual tests go below this comment.

  def test_about
    get "/about"

    assert last_response.ok?

    assert_includes last_response.body, "My name is"
  end

  def test_favorite_things
    get '/favorites'

    assert last_response.ok?

    assert_includes last_response.body, "These are a few of my favorite things"
  end

  def test_links_on_homepage
    get '/'

    assert last_response.ok?

    assert_includes last_response.body, '<a href="/about"'
    assert_includes last_response.body, '<a href="/favorites"'
  end

  def test_links_on_favorites
    get "/favorites"

    assert last_response.ok?

    assert_includes last_response.body, '<a href="/"'
  end

  def test_links_on_about
    get '/about'

    assert last_response.ok?

    assert_includes last_response.body, '<a href="/"'
  end

  def test_greeter_simply
    get '/greet/Sumeet'

    assert last_response.ok?

    assert_includes last_response.body, 'Sumeet'
  end

  def test_greeter_randomly
    random_string = [*('A'..'Z')].sample(8).join

    get "/greet/#{random_string}"

    assert last_response.ok?

    assert_includes last_response.body, random_string
  end
end






