require 'confabulate/config'
require 'confabulate/config_error'
require 'confabulate/validations'
require 'confabulate/version'

module Confabulate
  Config.extend Validations
end
