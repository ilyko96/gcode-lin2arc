A lot of models contain parts that can be very accuratly approximated with arcs (they are originally arcs which were later discretized into stl files.
Most slicers usually approximate those parts with a bunch of linear segments which causes to high size of final gcode-file and overloaded serial-channel between control computer and cnc-machine (e.g. 3D-printer).
However most machine firmwares support G-codes G2/G3 which are arcs, so replacing a lot of linear moves in gcode-file is leads to more efficient load distribution.
