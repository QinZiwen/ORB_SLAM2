echo "Configuring and building ORB_SLAM2 ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j8
cd ..

echo "Building ROS nodes"

cd Examples/ROS/ORB_SLAM2
mkdir build
cd build
rm -rf *
cmake .. -DROS_BUILD_TYPE=Release
make -j8
