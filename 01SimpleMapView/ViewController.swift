//
//  ViewController.swift
//  01SimpleMapView
//
//  Created by D7703_13 on 2019. 9. 17..
//  Copyright © 2019년 Personal Team. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let center = CLLocationCoordinate2D(latitude: 35.164952, longitude: 129.071399)
        
        //let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
    
        //let region = MKCoordinateRegion(center: center, span: span)
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 300, longitudinalMeters: 300)
        
        mapView.setRegion(region, animated: true)
        
        let anno01 = MKPointAnnotation()
        anno01.coordinate = center
        anno01.title = "DIT 동의과학대학교"
        anno01.subtitle = "나의 꿈이 자라는 학교"

        
        let anno02 = MKPointAnnotation()
        anno02.coordinate.latitude = 36.164472
        anno02.coordinate.longitude = 129.064951
        anno02.title = "송상현광장"
        anno02.subtitle = "푸른 잔디밭이 좋은 곳"


        
        let anno03 = MKPointAnnotation()
        anno03.coordinate.latitude = 35.171077
        anno03.coordinate.longitude = 129.070783
        anno03.title = "번개반점"
        anno03.subtitle = "번개반점"

        
        mapView.showAnnotations([anno01, anno02, anno03], animated: true)
    }
    @IBAction func standardMapTypeAction(_sender: Any) {
        mapView.mapType = MKMapType.standard
    }
    @IBAction func satelliteMapTypeAction(_sender: Any) {
        mapView.mapType = MKMapType.satellite
    }
    @IBAction func hybridMapTypeAction(_sender: Any) {
        mapView.mapType = MKMapType.hybrid
    }

    
}

