require 'active_path/engine'
require 'active_path/configuration'
module ActivePath
  def self.config
    Configuration.config
  end

  def self.configure
    yield(config)
  end
end
