import * as vscode from "vscode";
import createFolderStructure from "./commands/createFolderStructure";
import * as open from "open";
import { createDirectory, isDirectory } from "./lib/fsHelpers";

// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {
  const globalTemplateReduxFolderPath = context.asAbsolutePath(".fttemplates_redux");
  const globalTemplateBlocWithWidgetFolderPath = context.asAbsolutePath(".fttemplates_bloc_with_widget");

  // redux template
  const createReduxStructure = vscode.commands.registerCommand(
    "FT.createReduxStructure",
    (resource) => {
      return createFolderStructure(resource, globalTemplateReduxFolderPath);
    }
  );

  // bloc with widget template
  const createBlocWithWidgetStructure = vscode.commands.registerCommand(
    "FT.createBlocWithWidgetStructure",
    (resource) => {
      return createFolderStructure(resource, globalTemplateBlocWithWidgetFolderPath);
    }
  );

  context.subscriptions.push(createReduxStructure);
  context.subscriptions.push(createBlocWithWidgetStructure);
}

// this method is called when your extension is deactivated
export function deactivate() { }
