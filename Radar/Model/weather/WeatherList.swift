//
//  WeatherList.swift
//  Radar
//
//  Created by Justin Dearden on 2019-07-24.
//  Copyright © 2019 JustinD. All rights reserved.
//

import SwiftUI

extension Weather {
    struct List<T: Codable & Identifiable>: Codable {
        
        var list:[T]
        
        enum CodingKeys: String, CodingKey {
            case list = "data"
        }
    }
}
