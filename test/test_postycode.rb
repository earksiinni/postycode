require 'test/unit'
require 'postycode'

class PostycodeTest < Test::Unit::TestCase
  def test_lowercase_a
    assert_equal '\u0041', Postycode.parse(["0041"])
  end
end