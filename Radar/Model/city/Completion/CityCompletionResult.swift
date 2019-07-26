//
//  CityCompletionResult.swift
//  Radar
//
//  Created by Justin Dearden on 2019-07-25.
//  Copyright © 2019 JustinD. All rights reserved.
//

import SwiftUI

extension CityCompletion {
    
    struct Result: Codable {
        
        var predictions: [Prediction]
        
        enum CodingKeys: String, CodingKey {
            
            case predictions = "predictions"
            
        }
        
    }
    
    struct Prediction: Codable, Identifiable {
        
        var id: String
        var description: String
        
        enum CodingKeys: String, CodingKey {
            
            case id = "place_id"
            case description = "description"
            
        }
        
    }
    
}
