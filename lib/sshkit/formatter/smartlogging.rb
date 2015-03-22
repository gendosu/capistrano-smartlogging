require "capistrano/smartlogging/formatter"

# Capistrano's formatter configuration requires that the formatter class
# be in the SSHKit::Formatter namespace. So we declare
# SSHKit::Formatter::Airbrussh that simply functions as an alias for
# Airbrussh::Formatter.
module SSHKit
  module Formatter
    class Smartlogging < Capistrano::Smartlogging::Formatter
    end
  end
end
