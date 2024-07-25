#!/usr/bin/env python3
# rosrun swarm_control_package swarm_control_program_node.py 
# roslaunch aruco_detect aruco_detect_flags.launch

# Import ROS.
import rospy
from swarm_control_package.msg import FiducialTransform, FiducialTransformArray
from swarm_control_package.srv import NewTarget
import math


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
        #print('LoiterPoints ', self.LoiterPoints[0].x)
        self.loiterSlots = [ LoiterSlot( self.LoiterPoints[self.index * 2 + i] ) for i in range(2) ]
        pass
        
class Box( object ):
# Defines the specifics of the boxes. Location. Posssesion, Id of marker
    def __init__(self, number):
        self.index = number
        self.id_aruco = 0
        self.possession = '' 
  

class Arena( object ):
    # DEfines the State of the one half of the arena in general
    # Includes the boxes , and the loiter points

    boxes_locations_dict =  {
        '61': [3, 2],
        '62': [3, 1],
        '63': [5, 3],
        '20': [8, 0],

        '0': [6, 1],

        '1': [3, 7],
        '2': [9, 3],
        '3': [6, 3],
        '4': [1, 5],
        '5': [3, 6],
        '6': [4, 3],
        '7': [1, 8],
        '8': [4, 2],
        '9': [6, 5],
        '10': [6, 1],
        '11': [7, 3],
        '12': [3, 2],
        '13': [4, 5],
        '14': [7, 9],
        '15': [5, 8],
        '16': [4, 3],
        '17': [5, 6],
        '18': [6, 8],
        '19': [5, 7],
        '21': [5, 3],
        '22': [3, 2],
        '23': [5, 8],
        '24': [6, 4],
        '25': [4, 3],



        #'64': [1, 2, 3, 4],
        #'65': [1, 2, 3, 4],
        #'66': [1, 2, 3, 4]
        '71': [1, 2],
        '72': [4, 3],
        '73': [5, 6]
        #'74': [1, 2, 3, 4],
        #'75': [1, 2, 3, 4],
        #'76': [1, 2, 3, 4]
    }

    drones_assignment_dict =  {                               # allotted targets
        'Allegiance' : ['20', '71', '72'],
        'Royal_Guard': ['70', '71', '72'],
        'Silky'      : ['71', '61', '62']
        
    }

    drones_targets_dict =  {                                  # current targets to capture
        'Allegiance' : ['61', '62', '63'],
        'Royal_Guard': ['61', '62', '63'],
        'Silky'      : ['71', '72', '73']
        
    }
    
    
    def __init__(self):

        rospy.init_node("swarm_controller", anonymous=True)
        self.now = rospy.Time.now().to_sec()
        self.last_capture_time = self.now#.to_sec()

        self.health = 0
        self.engagement = ""
        self.now = None#rospy.Time.now()
        self.total_time = 0
        self.captures = 0
        self.median = 10
        self.maneuver = None
        self.now = None
        self.start_of_game = False
        self.last_Sighting = 0
        pass
    
    def fiducial_callback(self, msg):

        ##rospy.loginfo(f"Received fiducial transform for fiducial ID {msg.header.id}")
        temp_dict = []

        if not self.start_of_game:
            self.last_Sighting = rospy.Time.now().to_sec()
            self.start_of_game = False

        for key in self.drones_targets_dict.keys():
            temp_dict = temp_dict + self.drones_targets_dict[key]

        #print('the temp_dict is ', temp_dict)

        for transform in msg.transforms:
            fiducial_id = str(transform.fiducial_id)
            #print('the fiducial id is ', str(fiducial_id))
            if not fiducial_id in temp_dict:

                #print('the time now is ', rospy.Time.now())
                
                time = self.last_Sighting - rospy.Time.now().to_sec()
                self.last_Sighting = rospy.Time.now().to_sec()
                self.captures += 1
                self.total_time += time#/ self.captures
                self.median = self.total_time / self.captures

                #print('the Time Values at the first sighting are ', time)
                #print('the Time Values at the first sighting are ', self.last_Sighting )
                #print('the Time Values at the first sighting are ', self.total_time)
                #print('the Time Values at the first sighting are ', self.median)
                self.validate_and_assign(fiducial_id)    
        # Target assignment logic goes here.. Call result = self.set_new_target_service_client_Allegiance("First Service") from here.

        ##rospy.loginfo(f"Fiducial ID: {fiducial_id}")

    def validate_and_assign(self, fiducial_id) :

        ##print("The fiducial id is ", fiducial_id)
        fiducial_id = str(fiducial_id)

        if fiducial_id in self.drones_assignment_dict['Silky']:
            self.drones_targets_dict['Silky'].append(fiducial_id)
            '''
            if fiducial_id in drones_assignment_dict['Silky']:
                least, index = 0
            for i in rane(len(drones_targets_dict['Silky'])):
                dist = self.distance(boxes_locations_dict[fiducial_id], boxes_locations_dict[i])
                if dist < 15:
                    least = dist
                    index = i
            drones_targets_dict['Silky'].insert(i, fiducial_id)
            '''
            key = 'Silky'
            #print('Key is ', key)
            self.set_new_target_service_client_Silky(fiducial_id)
            return

        #if drones_targets_dict
        least = 15

        for key in self.drones_targets_dict.keys():
            if len(self.drones_targets_dict[key]) == 0:
                k = key
                break
            for i in range(len(self.drones_targets_dict[key])): # calculates which waypoint is closest to the newly spotted flag.
                loc = self.drones_targets_dict[key][i] # eg. '71'
                a1 = self.boxes_locations_dict[fiducial_id]
                a2 = self.boxes_locations_dict[loc]
                dist = self.distance(a1, a2)
                if dist < least:
                    least = dist
                    k = key
                    #print('Key here', key)
        self.drones_targets_dict[k].append(fiducial_id)
        #print('Key is ', self.drones_targets_dict[k])

        if k == 'Allegiance' : #pass#
            self.set_new_target_service_client_Allegiance(fiducial_id)
        else : self.set_new_target_service_client_Royal_Guard(fiducial_id)


    def distance( self, x0 , y0 , x1, y1):
        return math.sqrt( (x0-x1)**2 + (y0-y1)**2)
    
    def distance( self, a1 , a2):
        x0 = a1[0]
        y0 = a1[1]
        x1 = a2[0]
        y1 = a2[1]
        return math.sqrt( (x0-x1)**2 + (y0-y1)**2)
    
    #-----------------------Service Server for updating for neutralized targets from target list---------------------------------------------------
    
    def update_target_list_after_neutralization_Common(self, req):
        #rospy.loginfo(f"Request received to neuytralize : {req.id}")
        output_string = req.drone_name 
        for key in self.drones_targets_dict.keys():
            if str(req.id) in self.drones_targets_dict[key]:
                 self.drones_targets_dict[key].remove(str(req.id))
                 break  
        self.last_capture_time = rospy.Time.now().to_sec() #- self.time
        ##print('the last capture time after neutralization is ', self.last_capture_time)
        #rospy.loginfo(f"Sending response from swarm control : {output_string}")
        return output_string 

    #------------------------# Service clients for assignning target on each of the three UAVs.--------------------------------------------
    # - Allegiance   
    def set_new_target_service_client_Allegiance(self, id):
        rospy.wait_for_service("set_new_target_service_Allegiance")
        try:
            my_service = rospy.ServiceProxy("set_new_target_service_Allegiance", NewTarget)
            
            response = my_service(id, "l")
            return response.output_string
        except rospy.ServiceException as e:
            rospy.logerr(f"Service call failed: {e}")
    # -
    # - $ilky
    def set_new_target_service_client_Silky(self, id):
        rospy.wait_for_service("set_new_target_service_Silky")
        try:
            my_service = rospy.ServiceProxy("set_new_target_service_Silky", NewTarget)
            
            response = my_service(id, "l")
            return response.output_string
        except rospy.ServiceException as e:
            rospy.logerr(f"Service call failed: {e}")
    # -

    # - Royal_Guard
    def set_new_target_service_client_Royal_Guard(self, id):
        rospy.wait_for_service("set_new_target_service_Royal_Guard")
        try:
            my_service = rospy.ServiceProxy("set_new_target_service_Royal_Guard", NewTarget)
            
            response = my_service(id, "l")
            return response.output_string
        except rospy.ServiceException as e:
            rospy.logerr(f"Service call failed: {e}")
    #- 
    #----------------------------# Service clients for special Commands on each of the three UAVs.---------------------------------

    # - Allegiance   
    def special_command_service_client_Allegiance(self, cmd):
        rospy.wait_for_service("special_command_service_Allegiance")
        try:
            my_service = rospy.ServiceProxy("special_command_service_Allegiance", SpecialCommands)
            
            response = my_service(cmd)
            return response.output_string
        except rospy.ServiceException as e:
            rospy.logerr(f"Service call failed: {e}")
    # -
    # - $ilky
    def special_command_service_client_Silky(self, cmd):
        rospy.wait_for_service("special_command_service_Silky")
        try:
            my_service = rospy.ServiceProxy("special_command_service_Silky", SpecialCommands)
            
            response = my_service(cmd)
            return response.output_string
        except rospy.ServiceException as e:
            rospy.logerr(f"Service call failed: {e}")
    # -

    # - Royal_Guard
    def special_command_service_client_Royal_Guard(self, cmd):
        rospy.wait_for_service("special_command_service_Royal_Guard")
        try:
            my_service = rospy.ServiceProxy("special_command_service_Royal_Guard", SpecialCommands)
            
            response = my_service(cmd)
            return response.output_string
        except rospy.ServiceException as e:
            rospy.logerr(f"Service call failed: {e}")
    #- 
    #------------------------------------------------------------------------------------------------------------------------------------------
    
    def main(self):
        self.halfCourts = [ HalfCourt(i) for i in range(2) ]
        self.last_Sighting = rospy.Time.now().to_sec() 
        # Swarm Logic here : --
        
        rospy.Subscriber("flags/fiducial_transforms", FiducialTransformArray, self.fiducial_callback)

        rospy.Service('update_target_list_service_Common', NewTarget, self.update_target_list_after_neutralization_Common)
        ##rospy.loginfo("Ready to receive requests.")

        #pub = rospy.Publisher('game_command', String, queue_size=10)
        
        print('trying to see what time looks like here ', " ", rospy.Time.now().to_sec(), ' ', self.last_capture_time, ' ', self.median )

        rate = rospy.Rate(3)
        for key in self.drones_targets_dict.keys():
            temp_dict = temp_dict + self.drones_targets_dict[key]

        while not rospy.is_shutdown():
            print('trying to see what time looks like here ', " ", rospy.Time.now().to_sec(), ' ', self.last_Sighting, ' ', self.median )
            print('The length of dictionary is ', len(temp_dict))
            if ( (rospy.Time.now().to_sec() - self.last_Sighting ) > self.median * 2 )and len(temp_dict) == 0:
                #self.special_maneuver()
                self.maneuver = True
                #msg = String()
                #msg.data = "Special"
                print('S P E ')
                #pub.publish(msg)
                special_command_service_client_Allegiance(self, "Special")
                special_command_service_client_Royal_Guard(self, "Special")
                special_command_service_client_Silky(self, "Special")
            elif self.maneuver:
                special_command_service_client_Allegiance(self, "Abort")
                special_command_service_client_Royal_Guard(self, "Abort")
                special_command_service_client_Silky(self, "Abort")
                self.maneuver = False

            rate.sleep()
        
        rate.sleep()
        rospy.spin()

        






        # Here : ------

        pass 
        
class LoiterSlot( object ):
    #int point
    def __init__(self, point):
        self.pos = point
        pass
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        #{output_string}
        
        
        
if __name__ == '__main__':
    #try:
    #c = Arena()
    #c.main()
    try:
        c = Arena()
        c.main()
    except KeyboardInterrupt:
        exit()