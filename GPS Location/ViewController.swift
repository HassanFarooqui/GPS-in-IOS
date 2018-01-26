//
//  ViewController.swift
//  GPS Location
//
//  Created by SGI-Mac7 on 26/01/2018.
//  Copyright © 2018 Slash Global. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate
{
    let locationManager = CLLocationManager()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //for use when the app os open & in the background 
        locationManager.requestAlwaysAuthorization()
        
        //for use when the app is open
        //locationManager.requestWhenInUseAuthorization()
        
        
        
        if CLLocationManager.locationServicesEnabled(){
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        
            
        }
    }

    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        if let location = locations.first
        {
            print(location.coordinate)
        }
            
    }
   
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }

}

