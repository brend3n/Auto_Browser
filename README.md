# Auto Browser: Python Code Generation from Recorded Browser Actions

Creates python script from a recorded browser session. This script can be ran to playback the action in a non-headless/headless browser window.


This Bash script facilitates the generation of Playwright scripts for web automation by interacting with the [Playwright](https://playwright.dev/) CLI. The script prompts the user for input to customize the script and organizes the generated scripts into a designated folder.

## Installation and Setup

Before using the script, make sure you have the Playwright CLI installed.
```bash
    pip install playwright
```

or alternatively install the requirements.txt dependencies
```bash
pip install -r requirements.txt
```

Lastly,

```bash
  chmod +x auto_browser.sh
```

## Usage

1. **Run the Script:**
    ```bash
    ./auto_browser.sh
    ```

2. **Follow the Prompts:**
   - The script will prompt you to enter a name for the generated script.

3. **Generated Script:**
   - The script creates a folder named `Generated_Scripts` to organize the output.
   - Inside this folder, a subfolder is created with the specified script name.
   - The generated Playwright script, targeting Python, is saved in this subfolder.

## Note
- Ensure that the Playwright CLI is installed on your system before running the script.