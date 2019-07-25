//
//  Location.swift
//  ToDo
//
//  Created by Larry Bulen on 7/21/19.
//  Copyright © 2019 Larry Bulen. All rights reserved.
//

import Foundation
import CoreLocation

struct Location {
    let name: String
    let coordinate: CLLocationCoordinate2D?

    init(name: String,
         coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
}
