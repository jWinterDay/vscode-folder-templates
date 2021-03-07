import * as vscode from "vscode";
import { isDirectory } from "./fsHelpers";

export const readConfig = (key: string): any => {
  const config = vscode.workspace.getConfiguration("folderTemplates");
  return config.get(key);
};

export const showError = (message: string) => {
  vscode.window.showErrorMessage(message);
};
export const showInfo = (message: string) => {
  vscode.window.showInformationMessage(message);
};

const parentFolderOfActiveFile = () => {
  const currentFolderUri = vscode.window.activeTextEditor?.document?.uri
    ?.toString()
    ?.replace(/\/([^/]+)$/, "");

  if (currentFolderUri) {
    return vscode.Uri.parse(currentFolderUri, true);
  }
  return undefined;
};

const getWorkspaceUri = async () => {
  if ((vscode.workspace.workspaceFolders?.length || 0) > 1) {
    return (
      await vscode.window.showWorkspaceFolderPick({
        placeHolder: "Select Workspace in which you want to create the folder",
      })
    )?.uri;
  }
  return vscode.workspace.workspaceFolders?.[0]?.uri;
};

export const getTargetPath = async (
  resource: vscode.Uri | string | undefined
) => {
  if (typeof resource === "string") {
    if (resource === "__current") {
      return parentFolderOfActiveFile();
    }

    const workspaceUri = await getWorkspaceUri();
    if (!workspaceUri) {
      vscode.window.showErrorMessage("Couldn't find workspace");
      return;
    }
    return vscode.Uri.parse(workspaceUri + "/" + resource);
  }
  if (!resource && vscode.workspace.workspaceFolders) {
    // if command is triggered via command box and not via context menu let user enter path where component should be created
    const workspaceUri = await getWorkspaceUri();
    const filePath = await vscode.window.showInputBox({
      placeHolder: "Enter the relative to project root path where your folder should be created",
    });
    return vscode.Uri.parse(workspaceUri + "/" + filePath, true);
  }

  return resource as vscode.Uri | undefined;
};

export const openAndSaveFile = async (uri: vscode.Uri | null) => {
  if (uri) {
    const document = await vscode.workspace.openTextDocument(uri);
    return document.save();
  }
};

// export const getLocalTemplatePath = () => {
//   const workspacePath = vscode.workspace.workspaceFolders?.[0].uri.fsPath;
//   if (isDirectory(`${workspacePath}/.fttemplates`)) {
//     // Match any TypeScript file in the root of this workspace folder
//     return `${workspacePath}/.fttemplates`;
//     // Match any TypeScript file in `someFolder` inside this workspace folder
//   }
//   return null;
// };
