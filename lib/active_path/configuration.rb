module ActivePath
  module Configuration
    class << self
      def setup_defaults
        configuration.active_path = ActiveSupport::Configurable::Configuration.new
      end

      def config
        configuration.active_path
      end

      def configuration
        Rails.configuration
      end
    end
  end
end