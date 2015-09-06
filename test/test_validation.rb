require 'minitest_helper'

class ValidationTest < Minitest::Test
  def setup
    load 'confabulate/config.rb'
  end

  def test_a_value_is_not_set_if_it_fails_validation
    Config.validate :key, ->(value) { value > 0 }
    Config[:key] = 1
    Config[:key] = -2
    refute_equal -2, Config[:key]
  end
end
