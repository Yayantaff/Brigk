# CMake generated Testfile for 
# Source directory: /home/grsh/catkin_ws05/src/fiducials/aruco_detect
# Build directory: /home/grsh/catkin_ws05/build/aruco_detect
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_aruco_detect_rostest_test_aruco_images.test "/home/grsh/catkin_ws05/build/aruco_detect/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/grsh/catkin_ws05/build/aruco_detect/test_results/aruco_detect/rostest-test_aruco_images.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/grsh/catkin_ws05/src/fiducials/aruco_detect --package=aruco_detect --results-filename test_aruco_images.xml --results-base-dir \"/home/grsh/catkin_ws05/build/aruco_detect/test_results\" /home/grsh/catkin_ws05/src/fiducials/aruco_detect/test/aruco_images.test ")
set_tests_properties(_ctest_aruco_detect_rostest_test_aruco_images.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;80;add_rostest;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;100;_add_rostest_google_test;/home/grsh/catkin_ws05/src/fiducials/aruco_detect/CMakeLists.txt;69;add_rostest_gtest;/home/grsh/catkin_ws05/src/fiducials/aruco_detect/CMakeLists.txt;0;")
subdirs("gtest")
