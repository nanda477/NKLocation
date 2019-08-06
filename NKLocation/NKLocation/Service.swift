//
//  Service.swift
//  NKLocation
//
//  Created by Ramanan D2V on 6/8/19.
//  Copyright © 2019 D2V Software Solutions pvt ltd. All rights reserved.
//

import UIKit
import CoreLocation


public class LocationSingleton: NSObject,CLLocationManagerDelegate {
    public var locationManager: CLLocationManager?
    public var lastLocation: CLLocation?
    
    public static let sharedInstance:LocationSingleton = {
        let instance = LocationSingleton()
        return instance
    }()
    
    public override init() {
        super.init()
        self.locationManager = CLLocationManager()
        
        guard let locationManagers=self.locationManager else {
            return
        }
        locationManagers.desiredAccuracy = kCLLocationAccuracyBest
        locationManagers.pausesLocationUpdatesAutomatically = false
        locationManagers.delegate = self
        
        if CLLocationManager.authorizationStatus() == .notDetermined {
            locationManagers.requestAlwaysAuthorization()
            locationManagers.requestWhenInUseAuthorization()
        }
    }
    
    public func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
        print("Error")
    }
    
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }
        self.lastLocation = location
        //stopUpdatingLocation()
    }
    
    @nonobjc func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        switch status {
        case .notDetermined:
            locationManager?.requestAlwaysAuthorization()
            break
        case .authorizedWhenInUse:
            locationManager?.startUpdatingLocation()
            break
        case .authorizedAlways:
            locationManager?.startUpdatingLocation()
            break
        case .restricted:
            // restricted by e.g. parental controls. User can't enable Location Services
            break
        case .denied:
            // user denied your app access to Location Services, but can grant access from Settings.app
            break
        default:
            break
        }
    }
    
    
    
    public func startUpdatingLocation() {
        print("Starting Location Updates")
        self.locationManager?.startUpdatingLocation()
        //        self.locationManager?.startMonitoringSignificantLocationChanges()
    }
    
    public func stopUpdatingLocation() {
        print("Stop Location Updates")
        self.locationManager?.stopUpdatingLocation()
    }
    
    public func startMonitoringSignificantLocationChanges() {
        self.locationManager?.startMonitoringSignificantLocationChanges()
    }
    
    // #MARK:   get the alarm time from date and time
}



//<key>NSLocationAlwaysUsageDescription</key>
//<string>App would like to use your location for getting the deliver address.So that restaurant will delivery your food to your address.</string>
//<key>NSLocationWhenInUseUsageDescription</key>
//<string> App would like to use your location  for getting the deliver address.So that restaurant will delivery your food to your address.</string>
