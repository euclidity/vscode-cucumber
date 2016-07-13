var vscode = require('vscode');

function activate(context) {
  vscode.languages.setLanguageConfiguration("feature", {
      comments: {
        lineComment: '#'
      }
    }
  )
}
exports.activate = activate;


// this method is called when your extension is deactivated
function deactivate() {
}
exports.deactivate = deactivate;