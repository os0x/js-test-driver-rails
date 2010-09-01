require File.expand_path('config', File.dirname(__FILE__))
require File.expand_path('runner', File.dirname(__FILE__))

namespace :js_test_driver do

  desc "Starts the server using the provided configuration variables"
  task :start_server do
    JsTestDriver::Runner.new.start_server
  end

  desc "Runs the javascript tests"
  task :run_tests do
    exit(1) unless JsTestDriver::Runner.new.run_tests(ENV['TESTS'])
  end

  desc "Capture the browsers defined in config"
  task :capture_browsers do
    JsTestDriver::Runner.new.capture_browsers(ENV['BROWSERS'])
  end

end