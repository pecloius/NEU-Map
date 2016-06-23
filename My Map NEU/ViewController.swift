//
//  ViewController.swift
//  My Map NEU
//
//  Created by Pecko Loius on 6/23/16.
//  Copyright © 2016 Pecko Loius. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController, MKMapViewDelegate {
    
    
    @IBOutlet weak var MyMapView: MKMapView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myLat:CLLocationDegrees = 16.422689
        var myLng:CLLocationDegrees = 102.815934
        
        var latDelta:CLLocationDegrees = 0.01
        var lngDelta:CLLocationDegrees = 0.01
        
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lngDelta)
        var neuLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLat, myLng)
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(neuLocation, theSpan)
        
        self.MyMapView.setRegion(theRegion, animated: true)
        
        var neuAnotation = MKPointAnnotation()
        neuAnotation.coordinate = neuLocation
        neuAnotation.title = "มหาวิทยาลัยภาคตะวันออกเฉียงเหนือ"
        neuAnotation.subtitle = "จังหวัดขอนแก่น"
        self.MyMapView.addAnnotation(neuAnotation)
        
        
    } // ViewDidLoad

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

