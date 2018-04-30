module ActivePath
  module Subscribers
    class Subscriber
      attr_reader :buffer, :context, :options

      def call(name, started, finished, unique_id, payload)
        @buffer = payload[:buffer]
        @context = payload[:context]
        @options = payload[:options]
        perform and begin
          @buffer = @context = @options = nil
        end
      end

      def partial
        options.is_a?(Hash) ? options[:partial] : options.to_s
      end

      def perform
        raise NotImplementedError
      end
    end
  end
end