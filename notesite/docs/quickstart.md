

# Impractical Flow Cytometry

# Instrument Start-up

Section TLDR:

1. Electronics
2. Fluidics
3. Insrument Orientation
4. Stream and Optical Stages

# Electronics 

Section TLDR:

1. Turn On InFlux Instrument
2. Check Cameras with Marshal Monitor
3. Turn on Lasers
4. Turn On Computers and start Software

## Turn On InFlux

1. Turn On Primary Power "Power Strip 1" Computer Table
2. Turn On Instrument Power using Rocker Switch on Instrument Chassis
    1. Turn On Sort Chamber Illumination Light
    2. Turn On Power for the Vacuum Pump and Lasers using the Rocker Switches on the *E 107* Unit. The Switches are numbered:
        1. **1** VAC - Vacuum Pump
        2. **2** 488 - 488nm *Coherent* Laser
        3. **3** 457 - 457nm *Melles Griot* Laser
        4. **4** 671 - 671nm *Opto Engine* Laser
3. Turn On Tektronix TDS 2014C Oscilliscope using the Power Switch on the Top Left Corner

## Check the Cameras using the Marshall Monitor

1. Monitor is located on Computer Table.
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

## Turn On Lasers using the PSU on the Instrument Chassis

1. Turn On 488nm *Coherent* Laser Power Supply Unit with the following sequence:
    1. Power Switch 
    2. Turn Key
    3. Use the dial to set the 488nm Laser Power Percent to 108 (as seen in the digital read-out)
2. Turn On 457nm *Melles Griot* Laser  Power Supply Unit with the following sequence:
    1. Power Switch
    2. Laser Power Button
    3. Turn Key to Enable
3. *(Optional)* Turn On 671nm *Opto Engine* Laser Power Supply Unit
    1. Power Switch
    2. Use the dial to set Laser Power to **6.73?**

## Turn On Computers & Start Software

1. Start Dell PC (CytoServer)
    1. Use the login info recorded locally.
    2. Wait for this PC to boot up and login to Desktop before proceeding
2. Start HP PC (Sortware and Sensirion)
    1. Start SortWare
    2. Connect to Cytometer
    3. Start Sensirion Software
        1. Begin Logging

---

# Fluidics

Section TLDR:

1. Make Sheath Fluid
2. Hook Up Waste Cannister
3. Install Nozzle on Nozzle Assembly
4. Hook Up Sheath Cannister
5. Purge Nozzle and Nozzle Assembly

## Fill Sheath Fluid Canister - *Previous Day*

1. Use Graduated Cylinder to Mix Sheath Fluid
    1. For Non-Sorting, pure MilliQ Water is fine.
    2. For Sorting, we need a saline solution:
        1. For BioSure: Mixture is 1/8 BioSure Concentrate and 7/8 MilliQ Water in a Graduated Cylinder
        2. For NaCl: Dissolve **X** g NaCl in **Y** liters MillQ Water. *Let Sheath Fluid sit overnight to fully dissolve NaCl*
    3. Fill a 60ml Syringe with Sheath Fluid for Purging the instrument and filling sort tubes.
        1. Label Syringe.
        2. Attach a 0.2um Acrodisc Synring Filter to the synringe
    

## Hook-Up Waste Canister

1. Connect InFlux Waste Lines Intake
2. Connect Vacuum Pump
3. Turn on Vacuum Pump (Pump is powered by InFlux Instrument Power)


## Install Nozzle on Nozzle Assembly

1. Use the Nozzle Lock-Ring to install the Nozzle
2. Make sure there is an undamaged O-Ring neslted in the Nozzle Lock-Ring orifice
3. Make sure the Nozzle is not obviously clogged:
    1. Use a 60ml Syringe filled with MilliQ water and fitted with an Acrodisc 0.2um Syringe Filter
    2. Place the Nozzle so that the wider end is around the outflow of the Acrodisc filter, and press lightly on the Syringe.
    3. Water should be ejected from the Nozzle Tip in a straight stream.
        1. If you cannot get a clear stream, try multiple light pressses on the Syringe plunger
        2. If the Stream comes out at an angle, attempt this flushing by reversing the Nozzle so that the tip is fitted into the outflow of the Acrodisc Filter. **BE CAREFULE**
        3. If Flushing in reverse does not work, Sonicate the Nozzle.
            1. Place the nozzle in a plastic lid (see example) to protect it from the bare metal of the sonicator
            2. Sonicate in MilliQ water for 15 minutes
            3. Attempt Syringe purges again
            4. If still clogged, soak Nozzle in 70% Ethanol for 30 minutes and repeat flushes and sonication
4. Place Nozzle inside Nozzle Lock-Ring and install on Nozzle Assembly
    1. It may help to turn on PURGE on the Regulator Tower to open the Waste Valve and create a vacuum on the Nozzle Assembly to hold the Nozzle steady. 
        1. **DO NOT RELY ON THIS VACUUM TO HOLD THE NOZZLE ON ITS OWN**
        2. After Nozzle has been installed, turn off PURGE if used.

## Hook-Up Sheath Fluid Canister to InFlux

1. Connect InFlux Sheath Line (clear)
    1. Install a new 0.2um Sterivex In-line Filter  
2. Connect InFlux Air Line (blue)
3. *Loosen* Pressure Valve
4. *Optional* Filter Sheath Fluid
    1. Disconnect 0.2um Sterivex In-line Filter at the outlet leading to the InFlux
    2. Get a clean Sheath Fluid Cannister
    3. Connect Sheath Fluid Cannister Fluid Intake Adapter filter Sheath Fluid from the original cannister to the clean one using the 0.2um Sterivex
        1. Loosen Pressure Valve on New Sheath Cannister
5. Purge and Fill Sheath Line
    1. Working on the Air Regulator Knobs on the Right Side of the Instrument 
    2. Use the Sheath Knob on the Right side of the instrument to set the Sheath PSI to 10.0
    3. Slowly tighten the Pressure Release valve on the Sheath Fluid Cannister            
        1. You may need to wiggle the lid of the cannister to get the O-Ring to settle and seal the container
        2. This is done to gently fill the 0.2um Sterivex In-line Filter so that it doesn't have air bubbles
    4. *Optional* (If Filtering Sheath Fluid):
        1. Filter the Sheath Fluid from the Original Sheath Cannister to the New Sheath Cannister
        2. Transfer the Sheath Line and Sterivex to the New Sheath Cannister.
        3. Disconnect the Fluid Intake Adapter from the Sterivex and the New Sheath Cannister
        4. Connect the Sheath Fluid Outlet to the New Sheath Cannister
        5. Connect the 0.2um Sterivex to the Sheath Line leading to the instrument
    5. Once Sheath Cannister is pressurized, increase the Sheath PSI to 15.0 using the Knob on the Regulator Tower
    6. Press the RINSE button on the Regulator Tower to open the Sheath and Waste valves.
        1. Stop the Rinse when Sheath Fluid reaches the Y-Connector affixed to the upper right corner of the Nozzle Assembly  

## Purge Nozzle and Nozzle Assembly

1. Ensure that Nozzle has been installed (see section **Install Nozzle**)
2. Place the Drain below the Nozzle Assembly, the peg on the bottom of the Drain should fit into the hole leading to the Sort Chamber
3. Place the glass Spoon on the Drain such that the Nozzle is inside the spoon
4. Fill the Spoon with 0.2um filtered Sheath Fluid from the Syringe with the 0.2um Acrodisc Filter
    1. The Water level should be high enough to immerse the Nozzle Tip, but below the level where it would cover the Nozzle Lock-Ring in fluid
    2. Press PURGE to open the Waste Valve leading from the Sheath Fluid Y-Connector to the Waste Canister
5. This will fill the Nozzle Assembly by drawing water from the Spoon
    1. Do not let the sheath water level in the Spoon drop below the Nozzle Tip 
    2. Be sure that the OVERRIDE Button next to the Sample Cradle is *not* pressed. This Button forces the Sample Valve Open. Normally the Sample Valve only opens if RUN is pressed.
    3. Continue Purging until Sheath Fluid drawn into the Nozzle Tip and up through the Nozzle Assembly reaches the Y-Connector at the top of the Nozzle Assembly.
   	4. You should see the air bubble flow out of the Y-Connector and into the Waste Line at the top of the Y-Connector.
   	5. Briefly press the RINSE Button to open the Sheath Valve and Waste Valve to chase bubbles out of the Y-Connector
    6. Press the PURGE Button to open the Waste Valve and close the Sheath Valve
    7. Press the PULSE Button on the Regulator Tower to open and close the Sheath Valve several times in quick succession. 
        1. Air Bubbles from the Nozzle should be loosened and begin to travel up through the Nozzle Assembly. Continue with PURGE until all bubbles are removed from the Nozzle Assembly.
6. Press the RUN Button on the Regulator Tower to close the Waste Valve and open the Sheath Valve
    1. Remove Spoon and Drain from Instrument
    2. Use a twisted KimWipe to soak up any water stuck to the Nozzle Tip
7. Press BACKFLUSH Button next to the Sample Cradle to open the Sample Valve. 
    1. Sheath fluid should drip out of the Sample Tube
    2. After 30 sec, if you do not hear the Sheath Fluid being sucked into the drain below the Sample Cradle (which leads to one of the four pink lines on the Waste Connector), check to verify that the drain is not clogged.
    3. See the above if water begins to spill out because you ignored the previously given advice.
8. Check Warning Lights below SAMPLE Button next to Sample Cradle.

---

# Coarse Alignment

## Stream Tilt and Stage with Pinhole and Stream Cameras

1. Open Laser Chamber Door
2. Ensure that the Sort Chamber Light is on by pressing ILLUM Button on Instrument Chassis Front.
2. Center Stream over Waste Tube (Stream Camera, Left Monitor, Video 1) using Stream Tilt X and Stream Tilt Z Knobs.
3. Set Nozzle Height via Pinhole and Drop Cameras
    1. VIDEO to Channel 1 on the Left Monitor "PINHOLE"
4. Move Nozzle Tip up to “Just Off Screen” of Pinhole Camera Monitor
5. Set VIDEO to Channel 2 on the Center Monitor "DROP" to view the Drop Camera
6. Move the Drop Camera Up using the Drop Camera Knob at Top of Instrument (to the Left of the Sheath and Waste Valves)
    1. The Nozzle should be visible when the Drop Camera Readout (Below the Sheath Valve Control Buttons PULSE/PURGE/RINSE/RUN) is less than 40.
    2. Move the Nozzle Tip using the Stream Stage Z Knob so that the Nozzle Tip is at the `<` symbol drawn on the Second Monitor. The Drop Camera Readout should be 38-41. 
7. Bring the Sort Stream into focus on the Pinhole Camera.
    1. The Stream should look fairly straight and have well defined sides once it is brought into focus
    2. If there are visible twists in the Stream, remove the Nozzle and attempt to Flush it as described earlier.

## *If Sorting* Sort Drop Deflection via Sort Stream Camera 

1. You will need to start the BD Sortware Software on the HP PC to access the Drop Drive Settings

## Placing Sample Tubes in the Sample Cradle

1. Ensure Sample Line is purged of air by pressing the BACKFLUSH Button (Next to Sample Cradle) and letting Sheath Fluid drip out the line
3. Place tube on Sample Cradle
    1. Install the tube by raising it upward around the Sample Line until the tube rim meets the Rubber Sample Cradle Nozzle. Do not manually press the Sample Tube onto the Rubber Nozzle
    2. Holding the Tube up against the Rubber Nozzle, use the Handle to swing the Sample Cradle Base clockwise to lock the Sample Tube in Place.
    3. By using the Sample Cradle Base, the tube will be gently and evenly pushed snug agains the Rubber Nozzle.
        1. Note: When Removing Sample Tubes that have become pressurized, very slowly turn the Sample Cradle Base Handle CCW to gently release the pressure. That will prevent Sample Fluid from being ejected out of the Sample Tube.

## Laser Alignment with Beer and Pinhole Camera

1. Open the Physical Laser Shutters by pulling the Hanldes (Left side of Instrument) out so that the red tape on the handle is visible outside the instrument panel.
2. Close the Laser Chamber Door and activate the Finger Switch to open Electronic Shutters (if using the 671 or new lasers)
3. 

## Iterate Coarse Alignment

---

# Full Alignment

## Set Sortware Workspace

1. In Sortware, go to File > Open Workspace
    1. 

## Run QC Bead Sample

1. Create a dilution of 1.0um Ultra Rainbow Fluorescent Beads (*Spherotech*) by dropping 2-3 drops of Bead Concentrate into 2ml 0.2um Filtered MilliQ Water (from a syringe).

## Align 488 Laser

1. The 488nm Laser is the Primary laser for this Instrument. It is the only laser that passes through the filters on the FSC Detector Path and thus can be used for FSC measurements.
2. We will align the 488nm Laser to the Fluorescence Channels first because the SSC/Fluoresence Detector Lens is fixed, whereas the FSC Detector Lens can be moved with it's own stage.
3. 

## Align 457 Laser

## *Optional* Align 671 Laser

## Iterate Full Alignment

---

# Sorting Setup

## Set Workspace

## Run 3.1um Bead Sample

---

# Find Sort Stability Point

## Theory

## Checklist

## Piezo Voltage V

## Wavelength kHz

## Drop Deflection 

1. Sortware
2. Sort Stream Camera

---

# Set Drop Delay

## Calculate Drop Delay

## Coarse Calibration Slide(s)

## Calibration Slides 

