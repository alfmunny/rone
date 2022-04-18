require 'active_support'

module Rone
  extend ActiveSupport::Autoload
  autoload :Categorizable
end

ActiveSupport.on_load(:active_record) do
  include Rone::Categorizable
end
