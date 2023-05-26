import subprocess
import tkinter as tk
from tkinter import filedialog
from PIL import Image, ImageTk

def run_tuff_script():
    target_domain = domain_entry.get()
    output_path = output_entry.get()

    if not target_domain or not output_path:
        result_label.config(text="Please enter both domain and output path.")
        return

    result_label.config(text="Running T.U.F.F. script...")

    script_path = "tuff.sh"

    try:
        subprocess.run(["chmod", "+x", script_path], check=True)  # Set execute permissions for the bash script
        subprocess.run(["bash", script_path, target_domain, output_path], check=True)
        result_label.config(text="T.U.F.F. script completed.")
    except subprocess.CalledProcessError as e:
        result_label.config(text=f"Error running T.U.F.F. script: {str(e)}")

def select_output_path():
    output_path = filedialog.askdirectory()
    output_entry.delete(0, tk.END)
    output_entry.insert(tk.END, output_path)

# Create the main window
window = tk.Tk()
window.title("T.U.F.F. - Targeted Utility for Fast Forensics")
window.geometry("400x200")

# Load and display the background image
background_image = Image.open("background.jpg")
background_photo = ImageTk.PhotoImage(background_image)
background_label = tk.Label(window, image=background_photo)
background_label.place(x=0, y=0, relwidth=1, relheight=1)

# Create GUI elements
domain_label = tk.Label(window, text="Target Domain:", bg='white')
domain_label.pack()
domain_entry = tk.Entry(window)
domain_entry.pack()

output_label = tk.Label(window, text="Output Path:", bg='white')
output_label.pack()
output_entry = tk.Entry(window)
output_entry.pack()

output_button = tk.Button(window, text="Select Path", command=select_output_path)
output_button.pack()

run_button = tk.Button(window, text="Start Scanning", command=run_tuff_script)
run_button.pack()

result_label = tk.Label(window, text="", bg='white')
result_label.pack()

# Start the GUI event loop
window.mainloop()
