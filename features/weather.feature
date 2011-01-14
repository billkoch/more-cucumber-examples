Feature:  Retrieve weather information based on a zipcode
	In order to provide useful weather information
	As a person who wants to view weather forecasts
	I want to be able to view weather forecasts based on zipcode
	
	Scenario Outline:  Lookup weather information with a 5 digit zipcode
		Given I want to lookup weather information
		When I search for the zipcode <zipcode>
		Then I should see the city, state "<city, state>" for that zipcode
		
		Scenarios:  All valid 5 digit zipcodes
			|		zipcode		|		city, state		|
			|		43210		|		Columbus, OH	|
			|		15237		|		Pittsburgh, PA	|
			
		Scenarios:  Invalid 5 digit zipcodes
			|		zipcode		|					city, state						|
			|		00000		|		No results found. Try your search again.	|
			|		11111		|		No results found. Try your search again.	|