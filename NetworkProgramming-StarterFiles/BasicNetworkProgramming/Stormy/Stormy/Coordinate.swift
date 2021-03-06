//
//  Coordinate.swift
//  Stormy
//
//  Created by Screencast on 5/23/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

struct Coordinate {
    let latitude: Double
    let longitude: Double
}

extension Coordinate: CustomStringConvertible {
    var description: String {
        return "\(latitude),\(longitude)"
    }
    
    static var alcatrazIsland: Coordinate {
        return Coordinate(latitude: 37.8267, longitude: -122.4233)
    }
    
    static var myLocation: Coordinate {
        return Coordinate(latitude: 35.7407, longitude: 95.3441)
    }
}













