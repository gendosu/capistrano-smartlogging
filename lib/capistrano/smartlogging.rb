require "capistrano/smartlogging/configuration"
require "capistrano/smartlogging/version"

require "sshkit/formatter/abstract"

module Capistrano
  module Smartlogging
    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.reset
      @configuration = Configuration.new
    end

    def self.configure
      yield(configuration)
    end
  end
end
