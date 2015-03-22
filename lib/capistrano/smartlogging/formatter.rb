require 'sshkit'
require 'logger'

module Capistrano
  module Smartlogging
    class Formatter < SSHKit::Formatter::Pretty

      def initialize(oio)
        logger = CustomLogger.new(Smartlogging.configuration.log_file)
        logger.oio = oio

        logger.info("==================================================================")
        logger.info("* stage: #{env.fetch(:stage)}")
        logger.info("* start date: #{DateTime.now}")
        logger.info("==================================================================")

        super(logger)
      end

      alias_method :origin_write, :write if method_defined?(:write)
      def write(obj)
        origin_write(obj)
      end
      alias :<< :write
    end

    class CustomLogger < Logger
      attr_accessor :oio

      def <<(msg)
        oio ? oio.write(msg) : $stdout.write(msg)
        info(msg)
      end
    end
  end
end
