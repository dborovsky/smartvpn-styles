require 'autoprefixer-rails'

module SmartVpnStyles
  module Rails
    class Engine < ::Rails::Engine
      initializer 'smartvpn-styles.assets' do |app|
        %w(stylesheets).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end