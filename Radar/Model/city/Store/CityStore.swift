//
//  CityStore.swift
//  Radar
//
//  Created by Justin Dearden on 2019-07-25.
//  Copyright © 2019 JustinD. All rights reserved.
//

import SwiftUI
import Combine

class CityStore: BindableObject {
    
    let didChange = PassthroughSubject<CityStore, Never>()
    
    var cities: [City] = [City()] {
        didSet {
            didChange.send(self)
        }
    }
    
}
