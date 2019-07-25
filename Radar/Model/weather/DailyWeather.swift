//
//  DailyWeather.swift
//  Radar
//
//  Created by Justin Dearden on 2019-07-24.
//  Copyright © 2019 JustinD. All rights reserved.
//

import SwiftUI

struct DailyWeather: Codable, Identifiable {
    
    var id: Date {
        return time
    }
    
    var time: Date
    var maxTemperature: Double
    var minTemperature: Double
    var icon: Weather.Icon
    
    enum CodingKeys: String, CodingKey {
        case time = "time"
        case maxTemperature = "temperatureHigh"
        case minTemperature = "temperatureLow"
        case icon = "icon"
    }
}
