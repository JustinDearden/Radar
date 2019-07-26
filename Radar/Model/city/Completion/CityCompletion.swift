//
//  CityCompletion.swift
//  Radar
//
//  Created by Justin Dearden on 2019-07-25.
//  Copyright © 2019 JustinD. All rights reserved.
//

import SwiftUI
import Combine

class CityCompletion: NSObject, BindableObject {
    
    var didChange = PassthroughSubject<CityCompletion, Never>()
    
    var predictions: [CityCompletion.Prediction] = [] {
        didSet {
            didChange.send(self)
        }
    }
    
    private var completionManager: CityCompletionManager
    
    override init() {
        predictions = []
        completionManager = CityCompletionManager()
        super.init()
    }
    
    func search(_ search: String) {
        completionManager.getCompletion(for: search) { (predictions) in
            DispatchQueue.main.async {
                self.predictions = predictions
            }
        }
    }
    
}
