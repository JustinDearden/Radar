//
//  HourlyWeather.swift
//  Radar
//
//  Created by Justin Dearden on 2019-07-24.
//  Copyright © 2019 JustinD. All rights reserved.
//

import SwiftUI

struct HourlyWeather: Codable, Identifiable {
    var id: Date {
        return time
    }
    
    var time: Date
    var temperature: Double
    var icon: Weather.Icon
    
}
