module ActivePath
  module Configuration
    class << self
      def setup_defaults
        Rails.configuration.active_path = ActiveSupport::Configurable::Configuration.new
      end

      def config
        Rails.configuration.active_path
      end
    end
  end
end