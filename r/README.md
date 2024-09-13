# README: Running R Scripts in R Console, RStudio, and (Optionally) Visual Studio Code (VSCode)

This guide explains how to run any R script using the **R Console**, **RStudio**, or **Visual Studio Code (VSCode)**. It also includes optional instructions for configuring enhanced R features in VSCode, such as interactive plotting.

## Prerequisites

Ensure you have the following installed:

1. **R**: Download and install from [CRAN](https://cran.r-project.org/).
2. **RStudio** (Optional but recommended): Download from [RStudio website](https://rstudio.com/products/rstudio/download/).
3. (Optional) Install the `httpgd` or `plotly` package if you want to use an interactive plotting method:
   ```r
   install.packages("httpgd")
   install.packages("plotly")
   ```

## Steps to Run an R Script

### Running in the R Console

1. **Open R Console**:
   - Open the terminal (Linux/Mac) or Command Prompt (Windows).
   - Type `R` and press Enter to open the R console.

2. **Navigate to the Script Directory**:
   In the R console, use the `setwd()` function to change the working directory to where your script is saved:
   ```r
   setwd("/path/to/your/script")
   ```

3. **Source the Script**:
   Run the script by typing:
   ```r
   source("your_script.R")
   ```

4. **View the Output**:
   If the script includes plots, they will be displayed either in the R graphics window (for base plots) or in an interactive browser window (if using `plotly` or `httpgd`).

### Running in RStudio

1. **Open RStudio**:
   - Launch **RStudio** from your applications.

2. **Open the Script**:
   - Go to **File > Open File** and select the R script you want to run.

3. **Run the Script**:
   - Click the **Source** button in the top-right corner of the script editor to run the entire script.
   - Alternatively, you can highlight code and press `Ctrl+Enter` (Windows/Linux) or `Cmd+Enter` (Mac) to run the code line-by-line or in chunks.

4. **View the Output**:
   - Plots will appear in the **Plots** pane of RStudio by default, or in your browser if using an interactive method like `plotly`.

### Optional: Running in Visual Studio Code (VSCode)

This section explains how to run R scripts in **VSCode** and view plots within VSCode.

### 1. **Set Up VSCode for R**

1. **Install the R Extension for VSCode**:
   - Open VSCode.
   - Go to the Extensions tab (`Ctrl+Shift+X`).
   - Search for "R" and install the **REditorSupport** extension.

2. **Start the R Session**:
   - Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac) to open the **Command Palette**.
   - Search for and select **"R: Create R Terminal"**. This will start an R terminal in VSCode.

3. **Install the `httpgd` Package** for interactive plotting (optional):
   - In the R terminal, run:
     ```r
     install.packages("httpgd")
     ```

### 2. **Running the Script in VSCode**

1. **Open the Script**:
   - In VSCode, navigate to the folder where your script is located and open it.

2. **Run the Script**:
   - Highlight the code in the editor and press `Ctrl+Enter` (Windows/Linux) or `Cmd+Enter` (Mac) to run the code line-by-line.
   - Alternatively, run the script from the terminal using:
     ```r
     source("your_script.R")
     ```

### 3. **Viewing Plots in VSCode**

1. **Using `httpgd` for Interactive Plots**:
   - To view plots directly in VSCode, use the `httpgd` package:
     ```r
     library(httpgd)
     hgd()  # Start the interactive plot viewer
     ```
   - Plotting commands (e.g., `plot()`) will now display plots in the VSCode viewer.

2. **Using Base R Plotting**:
   - Base R plots will open in a new window if you're using an external graphical system like `x11` (Linux/macOS) or **XQuartz** (macOS).

## Troubleshooting

- **Rscript Not Found**: Ensure that R is installed correctly, and its path is added to your system's environment variables.
- **Plots Not Displayed**: If using the R Console, ensure you have a graphical system (e.g., **XQuartz** on macOS).
- **Interactive Plots Not Working**: Make sure `plotly` or `httpgd` is installed if using interactive plots.

### Clearing the R Console

You can clear the R Console using the following commands:

1. **On Windows**: Press `Ctrl + L`.
2. **On macOS and Linux**: Press `Ctrl + L`.
