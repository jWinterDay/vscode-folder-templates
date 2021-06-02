# Change Log

### 5.0.0

  - migration to nullsafety

### 4.6.0

  - Changed templates for using via flutter_bloc

### 4.2.1

  - This is new fork to create Flutter Redux Templates and BLoCs with Widgets

### 3.2.0

- Thanks for all of these [mrelemerson](https://github.com/mrelemerson)
  - Added several new transformers.
  - Added functionality to chain transformers
  - Updated Docs

### 3.1.1

- fixed display error in inputbox when a customvariable has a defaultvalue

### 3.1.0

- added omitFTName option

### 3.0.1

- Fixed `Open Global Folder Template Directory` Command

### 3.0.0

Some breaking changes, I'm really sorry but I wanted to do this right and had to do it earlier rather than later. This will hopefully be the last breaking change

- **BREAKING**: The `FFSName` Placeholder no longer works. Please replace it with the new placeholder `FTName`

- **BREAKING**: Configuration namechange. Please switch the configuration keys from `fastFolderStructure.structures` to `folderTemplates.structures` and `fastFolderStructure.fileTemplates` to `folderTemplates.fileTemplates`.

- **BREAKING**: Calling the `FFS.createFolderStructure` command will no longer work. Please replace it with `FT.createFolderStructure`

- REMOVED: Creating a Template from an existing folder is no longer supported because you can now save templates on the filesystem.

- ADDED: Reading Folder Templates from your File System. You can now choose where to create your templates. In the config file or as a Folder on the File System.
- ADDED: You can now define defaultvalues for your customvariables with the new `variablename=>defaultvalue` notation.

Also added an examples folder.

### 2.1.0

- You can now pass in your own path argument with keybinds.

### 2.0.0

- BREAKING: Removed default structures and fileTemplates as they are generally not useful for anyone due to everyone having their own needs. You have to create your own templates now.

- If you create a template from an existing folder this extension will now save the new Template in your global or workspace settings. This depends on if you already have a workspace settings file with a template in it or not.

### 1.1.1

- Fix bug that filepaths weren't normalized when parent directory is ommited

### 1.1.0

- Added Create Template from Folder function
- Added Remove Template function
- Added `omitParentDirectory` flag
- Added `snakecase` and `kebabcase` transformers. Thanks [Torben](https://github.com/eWert-Online)

### 1.0.1

- Added transformer `lowercasefirstchar`
- Fixed `camelcase` transformer to lowercase the first char if it was uppercase
- Fixed a bug where deleting a newly created structure and then creating it again skipped files

### 1.0.0

- NO BREAKING CHANGES
- Yippieh. I feel as if the extension is stable enough for its first major release 1.0.0. Hopefully this didn't jinx it.
- Added tests
- No longer overwrites existing files
- Added transformer `camelcase` and `pascalcase`

### 0.4.0

- Added possibility to configure Custom Variables

### 0.3.2

- reverted some changes to fix behaviour

### 0.3.1

- fixed a bug where you couldn't create multiple empty Directories

### 0.3.0

- added an `EmptyDirectory` keyword

### 0.2.0

- Added feature to transform your FFSName to lowercase, uppercase or capitalize it.(Thanks marcocavanna!)
- Cleaned up the readme a bit

### 0.1.6

- Added feature to automatically save files that have a template assigned. No more manually saving every file.
- Moved 'Create Folder from FFS-Template' Context Item into the workspace group where it should be.

### 0.1.5

Fixed wrong information in Readme on how to use the extension. Thank you snigglewhoop for pointing that out!

### 0.1.4

I forgot to test some stuff and broke the whole thing. It's working again.

### 0.1.2

Added info where this idea came from.

### 0.1.1

Fixed readme stuff

### 0.1.0

This is the super beta so people can't shout at me when something doesn't work.

You're glad you had those release notes, eh?
