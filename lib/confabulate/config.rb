class Config
  def self.[](key)
    if @config.has_key? key
      @config[key]
    else
      raise ConfigError.new(key)
    end
  end

  def self.[]=(key, value)
    if @validations.has_key? key
      return unless @validations[key].call(value)
    end
    @config[key] = value
  end

  def self.reset
    @config = @default_config.clone
  end

  def self.validate key, lambda
    @validations[key] = lambda
  end

  private

  @default_config = {}
  @config = @default_config.clone

  @validations = {}
end
