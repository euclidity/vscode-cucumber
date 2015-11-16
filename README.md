# Cucumber
Installs syntax and snippets for working with [Cucumber](http://www.cukes.info) features and the Gherkin language. The snippets cover are for Gherkin PlainText and Ruby step definitions.

# How to use

Open source files with the `.feature` extension will automatically have syntax colouring applied. Otherwise select the `Gherkin` option from the Language Mode menu to apply it.

Code snippets can be inserted as with other languages (e.g. Ctrl+Space) and typing a prefix from the following:

 - `fea` - Feature
 - `sc` - Scenario heading
 - `sce` - Scenario
 - `sco` - Scenario Outline
 - `steps`- Multiline steps
 - `giv` - Given step
 - `whe` - When step
 - `the` - Then step 

# Installation

 - You will need to install Visual Studio Code 0.10.0 or higher.
 - From the command palette Ctrl-Shift-P (Windows, Linux) or Cmd-Shift-P (OSX) select Install Extension, choose Chef and reload Visual Studio Code.

# Known Issues

 - line comment keyboard shortcut not working

# Todo

 - Goto/peek step definition from step in .feature file

# Acknowledgements

This extension uses the TextMate Syntax and snippet definitions for cucumber from [this project](https://github.com/cucumber/cucumber-tmbundle) and provided thanks to the efforts of the contributors there.

# Contributions

Please contribute by posting issues or pull requests on the extension's [github repo](https://github.com/stevejpurves/vscode-cucumber)

# Author

This extension was built by Steve Purves stevejpurves@gmail.com