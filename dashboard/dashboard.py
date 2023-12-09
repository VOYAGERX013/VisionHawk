import time
import serial
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
import tkinter as tk
# from win32api import GetSystemMetrics

class AnimationPlot:
    def __init__(self, fig, dataList, graph, idx, lower, upper, showNumber=False):
        self.fig = fig
        self.dataList = dataList
        self.ax = fig.add_subplot(111)
        self.graph = graph
        self.lower = lower
        self.upper = upper
        self.idx = idx
        self.getPlotFormat()
        self.line, = self.ax.plot([], [], lw=2)
        self.showNumber = showNumber
        if showNumber:
            self.annotation = self.ax.annotate("", xy=(0.5, 0.9), xytext=(0.5, 0.9),
                                    textcoords="axes fraction", ha="center", va="center",
                                    color="white", fontsize=10, bbox=dict(facecolor='black', alpha=0.75),
                                    animated=True)

    def animate(self, i):
        ser.write(b'g')
        arduinoData_string = str(ser.readline().decode('ascii').split(",")[self.idx])
        try:
            arduinoData_float = float(arduinoData_string)
            self.dataList.append(arduinoData_float)
            if self.showNumber:
                self.annotation.set_text(f"{self.graph}: {round(arduinoData_float, 2)}")
        except Exception as e:
            print(e)

        self.dataList = self.dataList[-50:]

        self.ax.clear()
        self.getPlotFormat()
        self.ax.plot(self.dataList)
        self.line.set_data(range(len(self.dataList)), self.dataList)

        if self.showNumber:
            return [self.line, self.annotation]

        return [self.line]

    def getPlotFormat(self):
        self.ax.set_ylim([self.lower, self.upper])
        self.ax.set_title(self.graph)
        self.ax.set_xticks([])
        self.ax.set_xticklabels([])

def on_closing():
    ser.close()
    root.destroy()

plt.style.use("dark_background")

root = tk.Tk()
root.title("Dashboard")
root.configure(background='black')
# root.geometry(f"{GetSystemMetrics(0)}x{GetSystemMetrics(1)}")
root.geometry(f"{root.winfo_screenwidth()}x{root.winfo_screenheight()}")

# Altitude graph
dataAltitude = []

figAltitude = plt.Figure(figsize=(3,2))
canvasAltitude = FigureCanvasTkAgg(figAltitude, master=root)
canvas_widget_altitude = canvasAltitude.get_tk_widget()
canvas_widget_altitude.grid(row=0, column=0, padx=10, pady=10, sticky="nw")

Altitude = AnimationPlot(figAltitude, dataAltitude, "Altitude", 0, 0, 1)

#Temperature graph
dataTemperature = []

figTemperature = plt.Figure(figsize=(3,2))
canvasTemperature = FigureCanvasTkAgg(figTemperature, master=root)
canvas_widget_temperature = canvasTemperature.get_tk_widget()
canvas_widget_temperature.grid(row=1, column=0, padx=10, pady=10, sticky="nw")

Temperature = AnimationPlot(figTemperature, dataTemperature, "Temperature", 1, 0, 40)

# Pressure graph
dataPressure = []

figPressure = plt.Figure(figsize=(3,2))
canvasPressure = FigureCanvasTkAgg(figPressure, master=root)
canvas_widget_pressure = canvasPressure.get_tk_widget()
canvas_widget_pressure.grid(row=2, column=0, padx=10, pady=10, sticky="nw")

Pressure = AnimationPlot(figPressure, dataPressure, "Pressure", 2, 90, 110)

# Battery graph
# dataBattery = []

# figBattery = plt.Figure(figsize=(3,2))
# canvasBattery = FigureCanvasTkAgg(figBattery, master=root)
# canvas_widget_battery = canvasBattery.get_tk_widget()
# canvas_widget_battery.grid(row=0, column=1, padx=10, pady=10, sticky="nw")

# Battery = AnimationPlot(figBattery, dataBattery, "Battery", 3, 6, 9, True)

# battery_text = figBattery.text(0.72, 0.92, "",
#                                ha="center", va="center", color="white", fontsize=10, bbox=dict(facecolor='black', alpha=0.75, edgecolor='none'))
# figBattery.subplots_adjust(top=0.85)
# Update the battery text in the animation
# def update_battery_text(i):
#     ser.write(b'g')
#     arduinoData_string = str(ser.readline().decode('ascii').split(",")[3])  # Assuming the battery data is at index 3
#     try:
#         arduinoData_float = float(arduinoData_string)
#         battery_value = round(arduinoData_float, 2)  # Adjust the precision as needed
#         battery_text.set_text(f"({battery_value}V)")
#     except Exception as e:
#         print(e)

# ser = serial.Serial("com7", 9600)
ser = serial.Serial("/dev/tty.usbserial-1410", 9600)
time.sleep(2)

aniAltitude = animation.FuncAnimation(figAltitude, Altitude.animate, frames=None, interval=1, blit=True)
aniTemperature = animation.FuncAnimation(figTemperature, Temperature.animate, frames=None, interval=1, blit=True)
aniPressure = animation.FuncAnimation(figPressure, Pressure.animate, frames=None, interval=1, blit=True)
# aniBattery = animation.FuncAnimation(figBattery, Battery.animate, frames=None, interval=1, blit=True)
# aniBatteryText = animation.FuncAnimation(figBattery, update_battery_text, frames=None, interval=1)

root.protocol("WM_DELETE_WINDOW", on_closing)
root.mainloop()
