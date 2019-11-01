# PAAS-TA-API-GATEWAY-SERVICE-RELEASE


### PaaS-TA API Gateway Service Configuration
- api-gateway-server :: N machine(s)
- api-gateway-service-broker :: 1 machine
- mariadb :: 1 machine

### Create PaaS-TA API Gateway Service Release
- Download the latest API Gateway Release
    ```
    $ git clone https://github.com/PaaS-TA/PAAS-TA-API-GATEWAY-SERVICE-RELEASE.git
    ```
- Copy "source files" into the src directory
    ```
    ## src directory
    src  
        ├── api-gateway  
        │   ├── artifacts.zip  
        │   └── wso2am-2.6.0.zip  
        ├── common  
        │   ├── pid_utils.sh  
        │   └── syslog_utils.sh  
        ├── java  
        │   └── OpenJDK8U-jre_x64_linux_hotspot_8u212b03.tar.gz  
        ├── mariadb  
        │   └── mariadb-10.3.15-linux-x86_64.tar.gz  
        └── service-broker  
        │   └── paasta-api-gateway-service-broker.jar  
    ```
- Create API Gateway Release
    ```
    $ cd PAAS-TA-API-GATEWAY-SERVICE-RELEASE
    ## <RELEASE_TARBALL_PATH> :: release file path (e.g. /home/ubuntu/workspace/paasta-api-gateway-service-release.tgz) 
    $ bosh create-release --name=paasta-api-gateway-service --version=1.0 --tarball=<RELEASE_TARBALL_PATH> --force
    ```
### PAAS-TA-API-GATEWAY-SERVICE-DEPLOYMENT 
- https://github.com/PaaS-TA/PAAS-TA-API-GATEWAY-SERVICE-DEPLOYMENT

### 참고 자료
- https://bosh.io/docs
- https://docs.wso2.com/display/AM260/WSO2+API+Manager+Documentation
    
