### Data Visualization

#### **Part 1: Installing Tableau Student Version**

1. **Sign Up for Tableau for Students:**
   - Visit the [Tableau for Students](https://www.tableau.com/academic/students) page.
   - Click on the "Get Tableau for Free" button.
   - Provide your school email address and other details as required to verify your student status.

2. **Receive the Tableau Activation Key:**
   - After verification, you will receive an email with the activation key and download link.

3. **Download Tableau Desktop:**
   - Use the download link from the email to download Tableau Desktop.
   - Choose the appropriate installer for your operating system (Windows or macOS).

4. **Install Tableau Desktop:**
   - Run the installer and follow the on-screen instructions to complete the installation.

5. **Activate Tableau Desktop:**
   - Open Tableau Desktop and enter the activation key when prompted to activate the software.

#### **Part 2: Setting Up Python Environment with VSCode**

1. **Download and Install Python:**
   - Visit the [Python Downloads](https://www.python.org/downloads/) page.
   - Download and install the latest version for your operating system.
   - Ensure to check the box "Add Python to PATH" during installation.

2. **Verify Python Installation:**
   - Open a command prompt or terminal.
   - Type `python --version` to verify the installation.

3. **Install Visual Studio Code (VSCode):**
   - Visit the [VSCode Downloads](https://code.visualstudio.com/Download) page.
   - Download and install the appropriate version for your operating system.

4. **Install Python Extension in VSCode:**
   - Open VSCode and go to the Extensions view.
   - Search for "Python" in the Extensions Marketplace.
   - Install the "Python" extension by Microsoft.

5. **Set Up Python Interpreter in VSCode:**
   - Open a new folder or workspace in VSCode.
   - Open the Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P` on macOS).
   - Type "Python: Select Interpreter" and select your Python installation.

#### **Optional: Creating a Virtual Environment**

1. **Create a Virtual Environment:**
   - Open a terminal in VSCode.
   - Navigate to your project folder and run the following command:
     ```bash
     python -m venv venv
     ```
   - This creates a virtual environment named `venv` in your project folder.

2. **Activate the Virtual Environment:**
   - On Windows:
     ```bash
     .\venv\Scripts\activate
     ```
   - On macOS/Linux:
     ```bash
     source venv/bin/activate
     ```
   - Your terminal should now show the `(venv)` prefix, indicating the virtual environment is active.

3. **Install Python Packages within the Virtual Environment:**
   - With the virtual environment activated, install necessary packages:
     ```bash
     pip install pandas matplotlib seaborn
     ```

4. **Deactivate the Virtual Environment:**
   - When done, deactivate the virtual environment by running:
     ```bash
     deactivate
     ```

#### **Part 3: Installing Jupyter and JupyterLab**

1. **Install Jupyter Notebook:**
   - With or without the virtual environment active, install Jupyter Notebook using `pip`:
     ```bash
     pip install notebook
     ```

2. **Install JupyterLab (Optional):**
   - Install JupyterLab, an advanced interface for Jupyter:
     ```bash
     pip install jupyterlab
     ```

3. **Launch Jupyter Notebook:**
   - Run the following command to start Jupyter Notebook:
     ```bash
     jupyter notebook
     ```
   - A new browser window or tab should open with the Jupyter Notebook interface.

4. **Launch JupyterLab (Optional):**
   - Run the following command to start JupyterLab:
     ```bash
     jupyter lab
     ```
   - JupyterLab will open in your default web browser with an enhanced interface for working with Jupyter notebooks.

5. **Create and Run a Jupyter Notebook:**
   - In either Jupyter Notebook or JupyterLab, you can create a new notebook by selecting `New > Python 3`.
   - In the notebook, you can write and execute Python code in cells.

These instructions should set up your environment for data visualization, including the optional setup for virtual environments and Jupyter notebooks/labs.