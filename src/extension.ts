import * as vscode from "vscode";
import createFolderStructure from "./commands/createFolderStructure";
import * as open from "open";

// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {
  // The command has been defined in the package.json file
  // Now provide the implementation of the command with registerCommand
  // The commandId parameter must match the command field in package.json
  const globalTemplateFolderPath = context.asAbsolutePath(".fttemplates");

  let createStructure = vscode.commands.registerCommand(
    "FT.createFolderStructure",
    (resource) => {
      return createFolderStructure(resource, globalTemplateFolderPath);
    }
  );
  let openFolderTemplatesGlobalFolder = vscode.commands.registerCommand(
    "FT.openGlobalFolder",
    () => {
      try {
        const data = open(globalTemplateFolderPath);
        console.log({ data });
      } catch (e) {
        console.log({ e });
      }
    }
  );

  context.subscriptions.push(createStructure);
  context.subscriptions.push(openFolderTemplatesGlobalFolder);
}

// this method is called when your extension is deactivated
export function deactivate() {}
