module Validations
  def validate key, lambda
    @validations[key] = lambda
  end
end
