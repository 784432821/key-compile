# kvm-compile
Docker compilation container for KEY programs

# Create a compilation container
```sudo docker run -tid --net=host -v /home/liusheng/key:/opt/key -w /opt/key --name key-build 784432821/key-compile:main /bin/bash```  
```sudo docker exec -ti key-build /bin/bash```  


# Build the program
```cd /opt/key```  
```./build.sh x32```  
