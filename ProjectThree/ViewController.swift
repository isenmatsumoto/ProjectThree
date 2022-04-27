//
//  ViewController.swift
//  ProjectThree
//
//  Created by Isen Matsumoto on 4/25/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    
  
    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.334490540701943, longitude: -158.05188002698773)
    
    let regionRadius = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerMapOnLocation(location: initialLocation)
        // Do any additional setup after loading the view.
        title = "Eatery Locations"
        
        let restaurantOne = Restaurant(title: "Nagoya Ramen & Bakery", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.333312228343928, longitude: -158.05174666066475))
        
        let restaurantTwo = Restaurant(title: "Taqueria El Ranchero", type: "Mexican", coordinate: CLLocationCoordinate2D(latitude: 21.333556296411945, longitude: -158.05013807415853))
        
        let restaurantThree = Restaurant(title: "Jolibee", type: "Filipino", coordinate: CLLocationCoordinate2D(latitude: 21.334388264692816, longitude: -158.0543811318293))
        
        let restaurantFour = Restaurant(title: "Tanaka Ramen & Izakaya", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.339157837437057, longitude: -158.08114654789532))
        
        let restaurantFive = Restaurant(title: "Olive Garden", type: "Italian", coordinate: CLLocationCoordinate2D(latitude: 21.334591281553404, longitude: -158.0521072164878))
        
        
        
        mapView.addAnnotation(restaurantOne)
        mapView.addAnnotation(restaurantTwo)
        mapView.addAnnotation(restaurantThree)
        mapView.addAnnotation(restaurantFour)
        mapView.addAnnotation(restaurantFive)
        
    }

    func centerMapOnLocation(location:CLLocation){
        
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
                mapView.setRegion(coordinateRegion, animated: true)
        
        
    }
        
    
    
    
    
    
}

