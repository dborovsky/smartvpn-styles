module DummyRailsIntegration
  def create_dummy_app
    FileUtils.cd(tmp_path) do
      %x(rails new dummy_app --skip-active-records --skip-test-unit --skip-bundle --skip-spring)
      File.open(dummy_app_path + '/Gemfile', 'a') do |f|
        f.puts "gem 'smartvpn_styles', github: 'dborovsky/smartvpn-styles'" 
        # f.puts "gem 'smartvpn_styles', path: '#{File.join(File.dirname(__FILE__), '..', '..')}'"
      end
    end
    FileUtils.cd(dummy_app_path) do
      %x(bundle install)
      File.delete('app/assets/stylesheets/application.css')
      File.open("app/assets/stylesheets/application.scss", "w") { |f| f.write("@import smartvpn-styles;") }
    end
  end

  def remove_dummy_app
    FileUtils.rm_rf(dummy_app_path)
  end

  def dummy_app_path
    File.join(tmp_path, 'dummy_app')
  end

  def tmp_path
    @tmp_path ||= File.join(File.dirname(__FILE__), '..')
  end
end
