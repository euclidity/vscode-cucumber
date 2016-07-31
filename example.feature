Feature: A Cucumber extension for VSCode
	As a developer
	I want highlighting and snippets in feature files in vs code
	So I can write tests more quickly
	
	Scenario: Creating a new feature
		Given I am in the features folder
		When I create a new file named my.feature
		And I write some Gherkin
		Then syntax highlighting is applied
		