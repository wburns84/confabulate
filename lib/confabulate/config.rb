class Config
  def self.[](key)
    if @config.has_key? key
      @config[key]
    else
      raise ConfigError.new(key)
    end
  end

  def self.[]=(key, value)
    @config[key] = value
  end

  def self.reset
    @config = @default_config.clone
  end

  private

  @default_config = {}
  @config = @default_config.clone
end
