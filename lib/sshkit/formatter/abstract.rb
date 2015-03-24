require "capistrano/smartlogging"

module SSHKit
  module Formatter
    class Abstract
      def initialize(oio)
        logger = CustomLogger.new(Capistrano::Smartlogging.configuration.log_file)
        logger.oio = oio

        logger.info("==================================================================")
        logger.info("* stage: #{env.fetch(:stage)}")
        logger.info("* start date: #{DateTime.now}")
        logger.info("==================================================================")

        @original_output = logger
      end
    end

    class CustomLogger < ::Logger
      attr_accessor :oio

      def <<(msg)
        oio ? oio.write(msg) : $stdout.write(msg)
        info(msg)
      end
    end
  end
end
