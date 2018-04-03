//
//  Activity.swift
//  Want2
//
//  Created by Turner Thornberry on 3/1/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import Foundation
//import MapKit

class Activity {
    
    //MARK: - VARS
    var id: String
    var name: String
    var isActive: Bool
    var privacySetting: String
    //var people: [Person]
    var locationString: String
    //var locationCoords: CLLocationCoordinate2D
    var locLat: Double
    var locLong: Double
    //var timeOfActivity: Double
    
    
    // MARK: - Initializers
    init(id: String,
         name: String,
         isActive: Bool,
         privacySetting: String,
        //people: [Person],
        locationString: String,
        //locationCoords: CLLocationCoordinate2D,
        locLat: Double,
        locLong: Double) {
        
        self.id = id
        self.name = name
        self.isActive = isActive
        self.privacySetting = privacySetting
        
        self.locationString = locationString
        //self.locationCoords = locationCoords
        self.locLat = locLat
        self.locLong = locLong
        //self.timeOfActivity = timeOfActivity
        
        
        
        
        
    }
    
    
}
