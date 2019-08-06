# NKLocation
Simple  : Get Location(Lat &amp; long) with one line

Step 1: In ViewDidLoad

        override func viewDidLoad() {
                    super.viewDidLoad()
                    // Do any additional setup after loading the view.
                    // step: 1 : Start your location update
                    LocationSingleton.sharedInstance.startUpdatingLocation()
        }
        
Step 2: 

     In Button Action Add This lines
     
        func getLatAndLong() {
        
                     LocationSingleton.sharedInstance.startUpdatingLocation()
                     let location = LocationSingleton.sharedInstance.lastLocation
                     
                     
                     if location != nil {
                     
                     print(location!.coordinate.latitude)
                     print(location!.coordinate.longitude)
                     }
         }
         
Step3: 
    Provide Location Privacy settings  
    
    In Info.plist Paste this code
    
    <key>NSLocationAlwaysUsageDescription</key>
    <string>App would like to use your location</string>
    <key>NSLocationWhenInUseUsageDescription</key>
    <string> App would like to use your location</string>
    
    
    
    
    
    
    ~~~~~~~~~~~~~~~~ Thank you ~~~~~~~~~~~~~~~~~~~~


