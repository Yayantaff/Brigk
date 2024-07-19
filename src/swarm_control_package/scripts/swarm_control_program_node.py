#!/usr/bin/env python
# rosrun swarm_control_package swarm_control_program_node.py 
# roslaunch aruco_detect aruco_detect_flags.launch

# Import ROS.
import rospy
from swarm_control_package.msg import FiducialTransform, FiducialTransformArray
from swarm_control_package.srv import NewTarget

class Point( object ):
    def __init__( self, x, y, z ):
        self.x, self.y, self.z = x, y, z
        #self.data = data
    def distFrom( self, x, y, z ):
        return math.sqrt( (self.x-x)**2 + (self.y-y)**2 + (self.z-z)**2 )

#database = [ Point(x,y,z,data), Point(x,y,z,data), ... ]

class HalfCourt( object ):
    # DEfines the State of the one half of the arena, Includes the boxes , and the loiter points
    # predefined points
    LoiterPoints = [ Point(0, 0, 0), Point(1, 1, 1), Point(2, 2, 2), Point(3, 3, 3) ]
    
    team = ""
    
    def __init__(self, number):
        self.index = number
        self.boxes = [ Box(i) for i in range(3) ]
        ids = [ ['6', '7', '8'], ['1', '3', '5'] ]
        self.boxes_dict = dict(zip(self.boxes , ids[number]))
        print('LoiterPoints ', self.LoiterPoints[0].x)
        self.loiterSlots = [ LoiterSlot( self.LoiterPoints[self.index * 2 + i] ) for i in range(2) ]
        pass
        
class Box( object ):
# Defines the specifics of the boxes. Location. Posssesion, Id of marker
    #self.id_aruco = 0
    #self.possession = '' 
    def __init__(self, number):
        self.index = number
        self.id_aruco = 0
        self.possession = '' 
  

class Arena( object ):
    # DEfines the State of the one half of the arena in general
    # Includes the boxes , and the loiter points
    
    #self.health = 0
    #self.engagement = ""
    
    def __init__(self):
        self.health = 0
        self.engagement = ""
        pass

    def fiducial_callback(self, msg):
        rospy.loginfo(f"Received fiducial transform for fiducial ID {msg}")
        
        for transform in msg.transforms:
            fiducial_id = transform.fiducial_id
            
        
        # Example: Print fiducial ID and pose information
        rospy.loginfo(f"Fiducial ID: {fiducial_id}")
        
    def set_new_target_service_client(self, input_string):
        rospy.wait_for_service('set_new_target_service')
        try:
            my_service = rospy.ServiceProxy('set_new_target_service', NewTarget)
            # Create a request message instance
            
            response = set_new_target_service(2, "")
            return response.output_string
        except rospy.ServiceException as e:
            rospy.logerr(f"Service call failed: {e}")
    
    
    def main(self):
        self.halfCourts = [ HalfCourt(i) for i in range(2) ]
        print('here')

        # Initializing ROS node.
        rospy.init_node("swarm_controller", anonymous=True)

        # Swarm Logic here : --
        
        rospy.Subscriber("flags/fiducial_transforms", FiducialTransformArray, self.fiducial_callback)

        result = self.set_new_target_service_client("First Service")
        print("Resonse is "+ result)
        rospy.spin()

        






        # Here : ------

        pass 
        
class LoiterSlot( object ):
    #int point
    def __init__(self, point):
        self.pos = point
        pass
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
if __name__ == '__main__':
    #try:
    #c = Arena()
    #c.main()
    try:
        c = Arena()
        c.main()
    except KeyboardInterrupt:
        exit()
