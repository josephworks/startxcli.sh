echo "Getting BuildTools"
sudo apt install tree
mkdir build
cd build
mkdir DEBIAN
mkdir usr
cd usr
mkdir local
cd local
mkdir bin
cd ../../../
cp ./startxcli.sh ./build/usr/local/bin
cd build
tree

###

cd ..
rm -rf build