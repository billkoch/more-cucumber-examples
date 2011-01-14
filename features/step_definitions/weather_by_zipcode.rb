Given /^I want to lookup weather information$/ do
  @current_page = WeatherDotComHomepage.new(@browser)
end

When /^I search for the zipcode (\d+)$/ do |zipcode|
  @current_page.search_for_zipcode(zipcode)
end

Then /^I should see the city, state "([^'']*)" for that zipcode$/ do |city_state|
  fail "Couldn't find #{city_state} in the search results" unless @current_page.found_expected_city_state?(city_state)
end
