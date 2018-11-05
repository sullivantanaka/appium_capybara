require "appium_capybara"

desired_caps_android = {
  platform:        "android",
  deviceName:      "simulator",
  platformName:    "Android",
  platformVersion: "6.0",
  #app:             "full/path/to/app.zip"
  browserName: "Chrome"
}

url = "http://localhost:4723/wd/hub" # or a sauce labs url

Capybara.register_driver(:appium) do |app|
    appium_lib_options = {
      server_url:           url
    }
    all_options = {
      appium_lib:  appium_lib_options,
      caps:        desired_caps_android
    }
    Appium::Capybara::Driver.new app, all_options
end

Capybara.default_driver = :appium