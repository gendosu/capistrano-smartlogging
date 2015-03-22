module Capistrano
  module Smartlogging
    class Configuration
      attr_accessor :log_file

      def initialize
        Dir.mkdir('log') unless File.exist?('log')
        self.log_file = env.fetch(:smartlogging_file) || 'log/smartlogging.log'
      end
    end
  end
end
