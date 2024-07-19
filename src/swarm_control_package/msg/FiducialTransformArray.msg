# Fiducial transform array message
#Header header                        # Standard ROS message header
#fiducial_msgs/FiducialTransform[] transforms  # Array of fiducial transforms

# A set of camera to fiducial transform with supporting data corresponding
# to an image
Header header
int32 image_seq
FiducialTransform[] transforms 
