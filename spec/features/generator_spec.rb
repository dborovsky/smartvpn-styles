require 'spec_helper'

feature 'SmartVpn Styles install succeeds' do
  scenario 'layout file loads assets' do
    layout_file = IO.read("#{dummy_app_path}/app/views/layouts/application.html.erb")
    
    expect(layout_file).to match(/stylesheet_link_tag\s+'application'/)
  end
end