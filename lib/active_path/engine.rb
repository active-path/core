require 'active_path/helpers/rendering_helper'
module ActivePath
  class Engine < Rails::Engine
    isolate_namespace ActivePath

    config.before_configuration do
      Configuration.setup_defaults
      # Include the render helper in the controller
      ActiveSupport.on_load(:action_controller_base) do
        next unless ActivePath.config.enabled
        _helpers.module_eval { include ActivePath::Helpers::RenderingHelper }
      end
    end
  end
end
