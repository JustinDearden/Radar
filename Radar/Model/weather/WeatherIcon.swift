//
//  WeatherIcon.swift
//  Radar
//
//  Created by Justin Dearden on 2019-07-24.
//  Copyright © 2019 JustinD. All rights reserved.
//

import SwiftUI

extension Weather {
    
    enum Icons: String, Codable {
        case clearDay = "clear-day"
        case clearNight = "clear-night"
        case rain = "rain"
        case snow = "snow"
        case sleet = "sleet"
        case wind = "wind"
        case fog = "fog"
        case cloudy = "cloudy"
        case partyCloudyDay = "partly-cloud-day"
        case partyCloudyNight = "partly-cloud-night"
        
        var image: Image {
            switch self {
            case .clearDay:
                return Image(systemName: "sun.max.fill")
            case .clearNight:
                return Image(systemName: "moon.stars.fill")
            case .rain:
                return Image(systemName: "cloud.rain.fill")
            case .snow:
                return Image(systemName: "snow")
            case .sleet:
                return Image(systemName: "cloud.sleet.fill")
            case .wind:
                return Image(systemName: "wind")
            case .fog:
                return Image(systemName: "cloud.fog.fill")
            case .cloudy:
                return Image(systemName: "cloud.fill")
            case .partyCloudyDay:
                return Image(systemName: "cloud.sun.fill")
            case .partyCloudyNight:
                return Image(systemName: "cloud.moon.fill")
            }
        }
    }
}
