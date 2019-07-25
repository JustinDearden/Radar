//
//  Weather.swift
//  Radar
//
//  Created by Justin Dearden on 2019-07-24.
//  Copyright © 2019 JustinD. All rights reserved.
//

import Foundation

struct Weather: Codable {
    var current: HourlyWeather
    var hours: Weather.List<HourlyWeather>
    var week: Weather.List<DailyWeather>
}
