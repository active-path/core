module ActivePath
  module Helpers
    module RenderingHelper
      extend ActionView::Helpers::RenderingHelper
      # Notify subscribers that a partial has rendered
      def render(options = {}, locals = {}, &block)
        buffer = super
        opts = { context: self, buffer: buffer, options: options, locals: locals }
        ActiveSupport::Notifications.instrument(:render_partial, opts)
        buffer
      end
    end
  end
end