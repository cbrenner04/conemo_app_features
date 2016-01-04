require 'appium_lib'
require 'rspec'
require 'env'
require_relative '../lib/pages/configuration.rb'
require_relative '../lib/pages/help.rb'
require_relative '../lib/pages/home.rb'
require_relative '../lib/pages/instructions.rb'
require_relative '../lib/pages/session.rb'
require_relative '../lib/pages/training.rb'

apk = {
  platformName: :android,
  deviceName: ENV['DEVICE'],
  app: ENV['PATH_TO_APK']
}

driver = Appium::Driver.new(caps: apk)
Appium.promote_singleton_appium_methods Pages
Appium.promote_appium_methods RSpec::Core::ExampleGroup

RSpec.configure do |config|
  config.before(:suite) do
    driver.start_driver
    wait { find('Configurar') }
  end

  config.after(:suite) do
    driver_quit
  end
end
