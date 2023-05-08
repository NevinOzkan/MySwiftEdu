//
//  ViewController.swift
//  MapKitFramework
//
//  Created by Nevin Özkan on 8.05.2023.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let konum = CLLocationCoordinate2D(latitude: 41.0370014, longitude:
        28.9763369)
        
        let span = MKCoordinateSpan (latitudeDelta: 0.1, longitudeDelta: 0.1)
        
        let bolge = MKCoordinateRegion (center: konum, span: span)
        
        mapView.setRegion(bolge, animated: true)
        
        let pin = MKPointAnnotation()
        
        pin.coordinate = konum
        pin.title = "Taksim"
        pin.subtitle = "Alt başlık"
        
        mapView.addAnnotation(pin)
    }


}

