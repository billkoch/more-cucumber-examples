class WeatherDotComHomepage

  include RSpec::Matchers
    
  def initialize(browser)
    @browser = browser
    @browser.goto('http://www.weather.com')
  end
  
  def search_for_zipcode(zipcode)
    @browser.text_field(:id, 'typeaheadBox').set(zipcode)
    @browser.button(:id, 'twc-weather-search-submit-id').click
  end
  
  def found_expected_city_state?(city_state)
    @browser.text.include?(city_state)
  end
end
