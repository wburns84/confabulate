class ConfigError < StandardError
  def initialize key
    super "Key '#{key}' not set"
  end
end
