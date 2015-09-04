require 'minitest_helper'

class TestConfabulate < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Confabulate::VERSION
  end
end
