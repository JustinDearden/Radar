//
//  City.swift
//  Radar
//
//  Created by Justin Dearden on 2019-07-24.
//  Copyright © 2019 JustinD. All rights reserved.
//

import SwiftUI
import Combine

class City: BindableObject {
    
    var didChange = PassthroughSubject<City, Never>()
    
    var name: String
    var longitude: Double
    var latitude: Double
    var image: UIImage? {
        didSet {
            didChange.send(self)
        }
    }
    var weather: Weather? {
        didSet {
            didChange.send(self)
        }
    }
    
    init() {
        self.name = "Windsor"
        self.longitude = -83.036858
        self.latitude = 42.314079
        self.getWeather()
    }
    
    init(cityData data: CityValidation.CityData) {
        self.name = data.name
        self.longitude = data.geometry.location.longitude
        self.latitude = data.geometry.location.latitude
        self.getWeather()
    }
    
    private func getWeather() {
        WeatherManager.getWeather(for: self) { (weather) in
            DispatchQueue.main.async {
                self.weather = weather
            }
        }
    }
    
}
