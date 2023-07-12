






# InFlux Instrument Guide

---

# Instrument Orientation

Section TLDR:
1. Instrument Left-Right-Front-Back and XYZ

## Stage Directions

1. The Right and Left sides of the instrument are based on the user facing the instrument from the front, viewing the Sort Chamber
2. In XYZ Terms we will use for Alignment Movements
    1. X = Machine Left-Right, with X Increasing from RIGHT to LEFT.
    2. Y = Machine Front-Back, with Y Increasing as you approach the Front of the Instrument.
    3. Z = Machine Up-Down, with Z increasing as you approach the top of the Instrument.

---

# System Components

## Computer Workbench

1. Dell PC (CytoServer)
2. HP PC (Sortware)
3. Router (*Apple AirPort*)
3. Camera Monitor Unit (*Marshal*)
4. Oscilloscope (*Tektronix* 2014C)

## Sheath and Vacuum Additions

1. Sheath Tank
2. Sheath Tank Scale
3. Vacuum Tank
4. Vacuum Pump

## Instrument Chassis

1. InFlux Flow Cytometer
    1. Regulator Tower
2. Laser and Vacuum Tank Power Switches
2. Lasers
    1. Laser Unit
    2. Laser PSUs
4. Sort Chamber Control Buttons
5. The InFlux’s Brain


---

# Main Instrument Components

## Regulator Tower

1. Located on Right of machine
2. Houses the regulators for controlling the Sample, Sheath, and Sample Boost PSI
    1.On Right side of Regulator Tower, Three Knobs are available to adjust the Sample, Sheath, and Boost PSI.


## Laser Chamber

1. Where the Lasers pass through the Sample Stream.
2. Laser Chamber Components
    1. Left: Laser Ingress
        1. Lasers enter the chamber from the Laser Intake Paths, after being directed using the Laser Stages (top of instrument, to left of Laser Chamber)
    2. Rear: Side-Scatter (SSC) and Fluorescence detector lens
        1. This lens is fixed and cannot be moved with a Stage.
    3. Right: Forward Scatter (FSC) Detector Lens
        1. This Lens can be moved using the FSC Lens Stage (located on Instrument Top, at right of Laser Chamber)
    4. Rear/Right Corner (between SSC and FSC lens): Cut-out for Drop Camera Mirror
    5. Front/Left Outside Laser Chamber: Drop Camera Mirror
        1.The Mirror has a peg on the bottom that fits into a slot outside the left edge of the Laser Chamber Door
        1. The Mirror should have the flat side angled towards the Drop Camera Cut-out
    6. Front: Laser Chamber Door
        1. There is a magnet switch that automatically closes the electric shutters on the Laser Shutters (at instrument far left)
        2. After opening the door (therefore closing the Electric Shutters), close the Laser Chamber Door, and place a finger over the Finger Switch (upper right corner of track where the Laser Chamber Door slides) to open the Electrix Shutters. 
        3. Note: The Electric Shutters can be forced open by closing and opening the Physical Laser Shutter Stops using the handles on Instrument Left Side.
        4. Further Note: The Electric Shutters for the 488nm and 457nm lasers have been **removed** because the Electroc Shutters were sticking and not re-opening when the Finger Switch was activated. The 488 and 457 lasers can only be shuttered using rhe Physical Laser Shutters.
    7. Bottom of Chamber below Nozzle Assembly: Port where the Stream enters the Sort Chamber below.
        1. During alignment, the combination of the Stream Stage and Stream Tilt may lead to the Stream not being centered in the port. That is okay.
    8. (*Optionla*) Top: Laser Chamber Cover
        1. For sensitive sorting, or if using UV Lasers
3. Shown on the Pinhole Camera
    1. The 5 Pinholes go to the fluorescence detector paths for each laser.
    2. The Pinhole Camera Image is vertically inverted on the Monitor. The top pinhole on the Monitor (for the 488nm Laser) is actually the bottom pinhole on the instrument.
    3. From Top to Bottom as shown on the *Monitor* image:
        1. Top: 488nm
        2. Empty
        3. Middle: 457nm
        4. Empty
        5. Bottom: 671nm
4. 

## Sort Chamber

1. Where Cell Sorting occurs
2. Sort Chamber Components
    1. Waste Pipe
        1. Where unsorted drops and sample stream are directed. 
        2. Waste Pipe is plumbed via tubing at the Bottom/Rear (outsiode) the back of the Sort Chamber. The Tubing goes to the 4-barb Waste Tank Fitting.
    2. Sample Tray
        1. Supports the 
    3. Sort Chamber Door
        1. Can be held open using the handle on Left Edge of Sort Chamber Door
    4. Electric Plates
        1. Used to Deflect Drops when Sorting
        2. Acivated using the PLATES Button on the Sort Chamber Control Panel, located on Instrument Chassis
    5. Sort Chamber Camera "STREAM"
        1. For Positioning Stream over Waste Pipe and for optimizing Sorting
    6. Sort Chamber ILLUM Laser
        1. Laser shines from Left to Right in the Sort Chamber and illuminates the Stream and the Sorting Side-Streams when the Drop Drive is active and the Electric Plates are On.
        2. Turned on using the ILLUM Button on the Sort Chamber Control Pannel on Instrument Chassis
        3. Sort Chamber ILLUM Laser is Enabled if the Magnetic Switch (Outside Chamber, Top Right Corner of Sort Chamber Door) is triggered.
            1. We have removed the Magnetic Switch from the Sort Chamber Door and use a loose Magnet to keep the Magnetic Switch activated, when when the Sort Chamber Door is Open.

## Laser Intake Paths

1. Located on Left of Instrument
2. Physical Laser Shutters are located on the far left of the instrument, at the rear of the Laser Intake Path Panel.
    1. There are automatic Laser Shutters that close when the Laser Chamber door is open (unless the magnetic switch has been defeated).
    2. The automatic Shutters are re-opened when the Laser Chamber door is closed and the “Finger Switch” in the upper right corner of the Laser Chamber Door path has been activated (by hovering a finger over the sensor).
    3. The automatic shutters can also be opened by physically opening (or closing and reopening if the physical shutter was open) the Shutter Stops.
    4. The automatic Laser Shutters for the 488 and 457 lasers have been **removed** because they were sticking. The **only** way to block the 488 and 457 lasers is to close the Physical Shutter.

## FSC Detector 

1. Located at Front Right of Instrumenr
2. Directly across the Laser Chamber from where the Lasers enter the chamber. Lasers Enter from Left.

## Fluorescence and SSC Detectors

1. Detector Paths begin at the rear of the Laser Chamber
2. There are Five Pinholes, listed here from Top to Bottom *as they appear in the Pinhole Camera*. 
    1. Top: 488
    2. None
    3. Middle: 457
    4. None
    5. Bottom: 671
    6. *Note*: The Pinhole Camera image is vertically flipped: what looks like the top Pinhole (for the 488) is actually the bottom, and thus, the fluorescence detector path for the 488 Laser is on the bottom level of the fluorescence detector paths.

---

# Buttons

## Sheath Control Buttons

1. PULSE
2. PURGE
3. RINSE 
4. RUN

## Sample Control Buttons

1. SAMPLE
2. BACKFLUSH
3. OVERRIDE

## Sort Chamber Control Buttons

1. ILLUM
2. PLATES

---

# Fluidics

---

# Sheath Fluidics

## Sheath Lines

1. Intake (from Sheath Tank)
2. Waste (to Waste Tank)
3. To Nozzle Assembly

## External Sheath Air Temp Multimeter

---

# Nozzle Assembly 

## Nozzle Assembly Fluid Path

## Nozzle

## Nozzle Lock-Ring

---

# Sample Intake

## Sample Line

## Sample Cradle

## Sample Line Air Sensor

## Flow Meters

## Sample Error Lights

1. Bubble in Sample Line
2. Other Error Light

---

# Cameras and Marshal Monitor

1. Marshal Monitor is located on Computer Table.
2. Toggle Between the VIDEO 1 and VIDEO 2 Sources for each Monitor using the Silver Switch at the Upper Right Corner of the Monitor
3. Left Monitor "PIN HOLE"
    1. VIDEO 1 - Pinhole Camera of the Stream and the Laser Pinholes
    2. VIDEO 2 - None
4. Center Monitor  "DROP"
    1. VIDEO 1 - FSC Pinhole Camera 
        1. Camera is located on the FSC optical path
    2. VIDEO 2 - Drop Camera: For finding Break-off Point for Flow Sorting
        1. The Drop Camera is moved with the Drop Camera Z Knob located near the Sheath Valve on the top of the Instrument
        2. If the Drop Camera seems dark, be sure that the Drop Camera Mirror is installed outside the Laser Chamber with the Flat Side facing towards the corner between the FSC and Side/Fluorescence lenses. There is an opening in the wall of the Laser Chamber, allowing light from the Drop Camera Mirror to illuminate the stream viewed by the Drop Camera.
5. Right Monitor "STREAM"
    1. VIDEO 1 - Stream Camera (Shows Sort Chamber for Sorting and Coarse Alignment)
        1. If this Camera is dark, make sure to activate the yellow ILLUM Button located on the Front Right side of the Instrument Chassis

---

# Stream and Optical Stages:

Section TLDR:

1. Stream Stages
2. FSC Stage
3. Laser Stages

## Stream Stages

1. Stream Tilt (Black Knobs)
    1. Stream Tilt X - Located immediately below the Sheath Line Y-Connector
    2. Stream Tilt Y - Located at Front of Nozzle Assemblt
2. Stream Stage (Silver Knobs)
    1. Stream Stage X - Located at Bottom Right Side of Nozzle Assembly Stage
    2. Stream Stage Y - Located at Rear of Nozzle Assembly Stage

## FSC Stage

3. FSC Stage (Silver Knobs)
    1. FSC Stage X - located on Right Side of FSC Stage
    2. FSC Stage Y - located on Front Side of FSC Stage
    3. FSC Stage Z - located on Top of FSC Stage

## Laser Stages (Silver and Color-Coded Knobs) on Top Left Side of Instrument

1. 488nm Laser
    1. 488 Stage Z - Located at Top of 488 Stage
    2. 488 Stage Sweep - Located at Front Side of 488 Stage
2. 457nm Laser
    1. 457 Stage Z - Located at Top of 488 Stage
    2. 457 Stage Sweep - Located at Rear Side of 457 Stage
3. 671nm Laser
    1. 671 Stage Z - Located at Top of 671 Stage
    2. 671 Stage Sweep - Located at Rear Side of 671 Stage
