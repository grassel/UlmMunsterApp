//
//  ViewController.swift
//  UlmMunsterApp
//
//  Created by Guido Grassel on 04/09/14.
//  Copyright (c) 2014 Guido Grassel. All rights reserved.
//

import UIKit
import MapKit;

class ViewController: UIViewController, MKMapViewDelegate {
                            
    @IBOutlet weak var theMapView: MKMapView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        var lat : CLLocationDegrees = 48.399193;
        var long : CLLocationDegrees = 9.993341;
    
        var latDelta : CLLocationDegrees = 0.01;
        var longDelta : CLLocationDegrees = 0.01;
        
        var theSpan : MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta);
        
        var churchLocation : CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, long);
        var theRegion : MKCoordinateRegion = MKCoordinateRegionMake(churchLocation, theSpan);
        
        self.theMapView.setRegion(theRegion, animated: true);
        
        var theUlmMunsterAnnotation = MKPointAnnotation();
        theUlmMunsterAnnotation.coordinate = churchLocation;
        theUlmMunsterAnnotation.title = "Ulm Munster";
        theUlmMunsterAnnotation.subtitle = "Hochste Kirche"
        self.theMapView.addAnnotation(theUlmMunsterAnnotation);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

