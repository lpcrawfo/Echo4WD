//
//  FourthViewController.swift
//  Echo4WD
//
//  Created by LUKE PETER CRAWFORD on 16/05/2017.
//  Copyright © 2017 LUKE PETER CRAWFORD. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class FourthViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var map: MKMapView!
   

    let manager = CLLocationManager()
    
    @IBOutlet weak var btnLog: UIButton!
    
    @IBAction func btnLog(_ sender: Any) {
        performSegue(withIdentifier: "segue11" , sender: self)
    }
   
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var menuShowing = false
    
    @IBAction func openMenu(_ sender: Any) {
        
       
        
        if (menuShowing) {
            leadingConstraint.constant = -250
            UIView.animate(withDuration: 0.3, animations: {
                
                self.view.layoutIfNeeded() })
        } else {
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: {
            
                self.view.layoutIfNeeded() })
        }
        
        menuShowing = !menuShowing
        
    }
    
    
    
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations[0]
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        
        map.setRegion(region, animated: true)
        
        self.map.showsUserLocation = true
    }
    
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    
   
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    


}
