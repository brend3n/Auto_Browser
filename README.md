# Bash Script: Playwright Code Generation

This Bash script facilitates the generation of Playwright scripts for web automation by interacting with the [Playwright](https://playwright.dev/) CLI. The script prompts the user for input to customize the script and organizes the generated scripts into a designated folder.

## Installation

Before using the script, make sure you have the Playwright CLI installed.
```bash
    pip install playwright
```

or alternatively install the requirements.txt dependencies
```bash
pip install -r requirements.txt
```
## Usage

1. **Run the Script:**
    ```bash
    ./auto_browser.sh
    ```

2. **Follow the Prompts:**
   - The script will prompt you to enter a name for the generated script.
   - It will also ask for a User Agent string, although this feature is not yet implemented in the provided script.

3. **Generated Script:**
   - The script creates a folder named `Generated_Scripts` to organize the output.
   - Inside this folder, a subfolder is created with the specified script name.
   - The generated Playwright script, targeting Python, is saved in this subfolder.

## Script Structure

- **Starting Recording Session:**
  - The script begins by displaying a message indicating the start of the recording session.

- **User Agent:**
  - The `get_user_agent_string` function, while currently unimplemented, is intended to capture a User Agent string. Users are prompted for this information but must manually provide it.

- **Script Name:**
  - The `get_names_from_user` function prompts the user to enter a name for the script, creating a folder structure for organization.

- **Output Folder Creation:**
  - The script checks if the `Generated_Scripts` folder exists. If not, it is created to store the generated scripts.

- **Playwright Code Generation:**
  - The Playwright CLI is used to generate a Python script (`${OUTPUT_FOLDER}.py`) with additional options such as saving storage information (`${OUTPUT_FOLDER}.out`) and using the provided User Agent.

- **Completion:**
  - The script concludes by displaying a "Done" message.

## Note
- The User Agent functionality is currently a placeholder and requires manual input.
- Ensure that the Playwright CLI is installed on your system before running the script.

Feel free to customize the script to meet your specific requirements.
