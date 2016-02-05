require 'test_helper'

class EasyTest < Minitest::Test
  # These lines of code should not be edited. They add necessary
  # functionality for running our "acceptance tests".
  def app
    MyApp
  end

  # The actual tests go below this comment.

  # This test is defined similarly to the tests you've written so far,
  # but it uses some new methods (which are added by the `include Rack::Test::Methods` line above.)
  def test_hello_world
    # This simulates an actual GET request to the given path, which
    # means it's fetching the actual homepage of our website.
    get "/"

    # The response that it receives is stored inside `last_response`, because
    # it is the "last response" that it asked for :)

    # You're allowed to have multiple assertions per test. It's best to keep 
    # each test minimal though--more than 3 or 4 assertions is usually a sign
    # of some poor organization.

    # This is the first assertion in this test. `assert` is kind of like
    # `assert_equal`. It simply checks that whatever you give it has some 
    # value or is true.
    # 
    # It's checking to make sure that the last response sent back some valid data. If, for example, it couldn't find the page at all, then it would not be "ok", and the test would fail.
    assert last_response.ok?

    # This assertion checks to make sure that the text in the response contains
    # a certain String.
    assert_includes last_response.body, "Hello, World!"
  end
end