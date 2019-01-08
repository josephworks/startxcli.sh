echo "Getting BuildTools"
sudo apt install tree

# Creating Directories
mkdir build
cd build
mkdir DEBIAN
mkdir usr
cd usr
mkdir local
cd local
mkdir bin
cd ../../../

# Move files over for building
cp ./startxcli.sh ./build/usr/local/bin
cp ./control ./build/DEBIAN/

#####

# Map all build files
ls
tree

# Delete Build
rm -rf build