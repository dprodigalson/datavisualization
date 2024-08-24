# Setting Up the Python Environment

## 1. Create a Virtual Environment

To keep your project dependencies isolated, create a virtual environment:

- Open your terminal or command prompt.
- Navigate to your project directory.
- Run the following command to create a virtual environment named `myenv`:

```bash
python -m venv myenv
```

## 2. Activate the Virtual Environment

Activate the virtual environment using the following commands:

- **On Windows:**

```bash
myenv\Scripts\activate
```

- **On macOS/Linux:**

```bash
source myenv/bin/activate
```

You should see `(myenv)` preceding your command prompt, indicating the environment is active.

## 3. Select the Virtual Environment in VSCode

To use the virtual environment in Visual Studio Code:

1. **Open VSCode** and your project folder.
2. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on macOS) to open the Command Palette.
3. Type `Python: Select Interpreter` and press Enter.
4. Choose the interpreter located in your `myenv` folder (e.g., `myenv\Scripts\python.exe` on Windows or `myenv/bin/python` on macOS/Linux).

## 4. Ensure `ipykernel` is Installed

Make sure `ipykernel` is listed in your `requirements.txt`. If not, add it:

```bash
pip install ipykernel
```

## 5. Set Up Jupyter Kernel

With your virtual environment active, set up the Jupyter kernel:

```bash
python -m ipykernel install --user --name=myenv
```

## 6. Running Jupyter Notebooks in VSCode

To run `.ipynb` files in VSCode:

1. Open the `.ipynb` file.
2. Click on the kernel selector in the top-right corner of the notebook.
3. Select the `myenv` kernel that you set up earlier.
4. Run the cells in your notebook using this environment.