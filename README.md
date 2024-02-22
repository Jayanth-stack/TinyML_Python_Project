# Using TinyML Concepts to Alert Cyclist/Motorcyclist about Potential Road Hazard 

This project demonstrates a tinyML application for detecting the presence of a person using a machine learning model deployed on the Arduino Nano 33 BLE Sense. The project leverages the onboard sensors of the Nano 33 BLE Sense to collect data, which is then processed by a pre-trained machine learning model to perform person detection in real-time.
Project Overview

The goal of this project is to create a low-power, efficient person detection system that can run on edge devices, specifically the Arduino Nano 33 BLE Sense. This can be used in various applications, such as security systems, automated lighting, and occupancy monitoring.
Hardware Requirements

    Arduino Nano 33 BLE Sense
    Micro USB cable
    (Optional) External battery for portable applications

Software Requirements

    Arduino IDE
    TensorFlow Lite for Microcontrollers
    (Optional) Python for model training and conversion

Getting Started

Follow these steps to set up and run the project.
Setting Up the Arduino Environment

    Install Arduino IDE: Download and install the Arduino IDE from the official website.
    Configure the Board Manager:
        Open Arduino IDE, go to Tools > Board > Boards Manager....
        Search for "Arduino Mbed OS Nano Boards" and install it.
        Select your board via Tools > Board > Arduino Mbed OS Nano Boards > Arduino Nano 33 BLE.

Preparing the Model

    Train the Model: Train a person detection model using your preferred machine learning framework. TensorFlow is recommended for compatibility with TensorFlow Lite.
    Convert to TensorFlow Lite: Convert the trained model to the TensorFlow Lite format using the TensorFlow Lite Converter.
    Optimize for Microcontrollers: Use the TensorFlow Lite for Microcontrollers toolkit to further optimize and convert the model into a C array.

Loading the Sketch

    Clone the Repository: Clone this repository to your local machine, or download the source code.
    Open the Sketch: Open the Arduino IDE, navigate to File > Open..., and select the .ino file from the cloned repository.
    Install Libraries: Install necessary libraries via Sketch > Include Library > Manage Libraries.... Search for and install "TensorFlow Lite for Microcontrollers".
    Upload the Sketch: Connect your Arduino Nano 33 BLE Sense to your computer using the micro USB cable. Upload the sketch to the board by clicking the upload button in the Arduino IDE.

Running the Project

Once the sketch is uploaded, the Arduino Nano 33 BLE Sense will start running the person detection model automatically. Use the Arduino IDE's Serial Monitor (Tools > Serial Monitor) to view the output and detection results.
Customization

You can customize the project by retraining the model with your dataset or adjusting the inference parameters in the sketch.
Troubleshooting

    Model Not Running: Ensure the model is correctly converted and optimized for microcontrollers.
    Serial Monitor Not Showing Data: Check the board's connection and ensure the correct COM port is selected in Tools > Port.

Contributing

Contributions to this project are welcome. Please fork the repository and submit a pull request with your enhancements.
