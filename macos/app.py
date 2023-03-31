
import tkinter as tk
import os 

root = tk.Tk()
root.title("Hochwasserwarnsystem")
root.geometry("500x400")

# create a menu bar
menu_bar = tk.Menu(root)
root.config(menu=menu_bar)

# create a file menu
file_menu = tk.Menu(menu_bar, tearoff=0)
menu_bar.add_cascade(label="File", menu=file_menu)
file_menu.add_command(label="New")
file_menu.add_command(label="Open")
file_menu.add_separator()
file_menu.add_command(label="Exit", command=root.quit)

# create an edit menu
edit_menu = tk.Menu(menu_bar, tearoff=0)
menu_bar.add_cascade(label="Edit", menu=edit_menu)
edit_menu.add_command(label="Cut")
edit_menu.add_command(label="Copy")
edit_menu.add_command(label="Paste")


# create a canvas to draw the animation
canvas = tk.Canvas(root, width=200, height=200)
canvas.pack()

# create a button
button = tk.Button(root, text="Starte das Warten auf den Alarm!", command=lambda: animate_button(canvas))
button.pack(pady=10)

# center the window on the screen
root.eval('tk::PlaceWindow %s center' % root.winfo_toplevel())

# define a function to animate the button and print "Hello, World!"
def animate_button(canvas):
    def create_second_button():
        second_button = tk.Button(root, text="Schliese dieses Fenster!", command=root.destroy)
        second_button.pack(pady=10)


    # print "Hello, World!"
    print("Hello, World!")
    create_second_button()


    # clear the canvas
    canvas.delete("all")
    
    # create a rectangle
    rect = canvas.create_rectangle(50, 50, 150, 150, fill="green")

      # add text to the rectangle
    canvas.create_text(100, 100, text="Gestarted!")
    
    # animate the rectangle
        # animate the rectangle
    for i in range(10):
        canvas.move(rect, 10, 0)
        canvas.after(50)
        canvas.update()
        canvas.move(rect, -10, 0)
        canvas.after(50)
        canvas.update()

  # start the event loop
root.mainloop()
print("gui ist nun zuende")
script = './script.sh'
os.system(script)
