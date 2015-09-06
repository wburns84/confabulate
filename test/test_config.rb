require 'minitest_helper'

class ConfigTest < Minitest::Test
  def setup
    load 'confabulate/config.rb'
  end

  def test_a_config_error_is_raised_if_the_config_value_is_not_set
    assert_raises(ConfigError) { Config[:unset] }
  end

  def test_the_value_is_returned_if_the_key_is_set
    Config[:key] = 'value'
    assert_equal 'value', Config[:key]
  end

  def test_resetting_the_config_clears_custom_keys
    Config[:key] = 'value'
    Config.reset
    assert_raises(ConfigError) { Config[:key] }
  end

  def test_the_config_initializes_to_the_default_config
    assert_equal Config.instance_variable_get(:@default_config), Config.instance_variable_get(:@config)
  end

  def test_resetting_the_config_loads_the_default_config
    Config.instance_variable_set(:@default_config, { key: 'value' })
    Config.reset
    assert_equal 'value', Config[:key]
  end
end
