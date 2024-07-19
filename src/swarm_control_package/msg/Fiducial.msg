# Fiducial marker message for ArUco markers
Header header           # Standard header containing timestamp and frame ID
uint32 fiducial_id      # Unique identifier for the fiducial marker
float64 x               # X coordinate of the fiducial marker in camera frame
float64 y               # Y coordinate of the fiducial marker in camera frame
float64 z               # Z coordinate of the fiducial marker in camera frame
float64 theta_x         # Rotation around X axis (roll) of the fiducial marker
float64 theta_y         # Rotation around Y axis (pitch) of the fiducial marker
float64 theta_z         # Rotation around Z axis (yaw) of the fiducial marker

