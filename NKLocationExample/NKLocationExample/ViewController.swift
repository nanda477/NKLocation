//
//  ViewController.swift
//  NKLocationExample
//
//  Created by Ramanan D2V on 6/8/19.
//  Copyright © 2019 D2V Software Solutions pvt ltd. All rights reserved.
//

import UIKit
import NKLocation

class ViewController: UIViewController {

    @IBOutlet weak var locationLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // step: 1 : Start your location update
        LocationSingleton.sharedInstance.startUpdatingLocation()
        
        
    }
    
    
    @IBAction func locationAction(_ sender: Any) {
        
        LocationSingleton.sharedInstance.startUpdatingLocation()
        let location = LocationSingleton.sharedInstance.lastLocation
        
        
        if location != nil {
            
            print(location!.coordinate.latitude)
            print(location!.coordinate.longitude)
        }
        
    }
    

}

