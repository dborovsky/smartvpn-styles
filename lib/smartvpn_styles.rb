require 'smartvpn_styles/version'

module SmartVpnStyles
  class << self
    def load!
      require 'smartvpn_styles/engine'
    
      if defined?(::Sass::Script::Value::Number)
        ::Sass::Script::Value::Number.precision = [6, ::Sass::Script::Value::Number.precision].max
      end
    end
  end
end

SmartVpnStyles.load!
