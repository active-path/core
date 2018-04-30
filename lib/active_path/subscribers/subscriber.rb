module ActivePath
  module Subscribers
    class Subscriber
      attr_reader :context,
                  :buffer,
                  :options,
                  :locals

      def call(name, started, finished, unique_id, payload)
        @context = payload[:context]
        @buffer = payload[:buffer]
        @options = payload[:options]
        @locals = payload[:locals]
        perform and begin
          @context =
          @buffer =
          @options =
          @locals = nil
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