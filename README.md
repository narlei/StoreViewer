#StoreViewer

This app uses iTunes API to show softwares.
Actually is requesting results with search term `insta`.

iTunes API documentation: http://www.apple.com/itunes/affiliates/resources/documentation/itunes-store-web-service-search-api.html

### Libraries

#### Cocoapods
````
 # Database
pod 'FMDB', '~> 2.6'
  
# Rest 
pod 'Unirest', '~> 1.1'
  
# Keyboard and Scroll Control
pod 'TPKeyboardAvoiding', '~> 1.3'
  
#Cache
pod 'EGOCache', '~> 2.1'
pod 'EGOImageLoading', '~> 0.0'
pod 'EGOPhotoViewer', '~> 0.0'
	
# Internet
pod 'Reachability', '~> 3.2'
````

#### Database

To data store this app uses Sqlite with my own Orm library. This library is an open project. Https://github.com/narlei/namdatabase
