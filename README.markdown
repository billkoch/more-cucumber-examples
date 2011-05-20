Cucumber Examples
=================

Overview
--------

This is a simple project that I put together to demonstrate Cucumber and Watir.

For this example, I wrote a simple feature file for searching weather.com with a zipcode.

The feature files (_*.feature_) written in Gherkin format (Gherkin is the Given-When-Then style of requirements) 
can be found under the _features/_ directory.

The _/step_definititions_ directory contains the individual steps that Cucumber will execute as it parses the Gherkin
features files.

The _support/_ directory contains the Ruby classes that are used to support the test code.  In this example, I've leveraged
the page-object pattern (basically each page of a website is translated into it's own Ruby class), since it makes the test code
more maintainable.  The _pages/_ directory contains each Ruby class that represents a page.

The env.rb file directly under the _support/_ directory does the setup work for the test suite.  It does things like determining
what browser will be used for the tests.

Installation
------------

You will need Ruby installed on your machine.
From a command prompt, type the following commands:

1)  gem install bundler (Installs the bundler gem -- this is used to pull down all of the other gems needed for the tests)
2) bundle (This will install all the necessary gem files to run the tests)
3) cucumber features/ (Runs all of the Cucumber feature files found under the features/ directory)