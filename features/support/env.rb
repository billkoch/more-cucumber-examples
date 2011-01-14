require 'rubygems'

# Loads all of the *.rb files under ./pages -- this is where
# The Ruby Classes that represent pages in the application
# are stored (see Page Object pattern).
Dir[File.dirname(__FILE__) + './pages/*.rb'].each do |file| 
  require File.basename(file, File.extname(file))
end

# Determine which Watir Browser should be used
if(ENV['BROWSER'] == 'FIREFOX')
  require 'firewatir'
  browser = FireWatir::Firefox.new
else
  case RUBY_PLATFORM
    when /darwin/
      require 'safariwatir'
      browser = Watir::Safari.new
    when /win32|mingw/
      require 'watir'
      browser = Watir::IE.new
    when /java/
      require 'celerity'
      browser = Celerity::Browser.new
    else
      raise "The platform #{PLATFORM} is not supported"
  end
end

# Executed before each scenario
Before do
  @browser = browser
end

# Executed before Cucumber is finished
at_exit do
  browser.close
end
