//
//  ParseJsonService.swift
//  A11y
//
//  Created by Ashley Ng on 3/22/25.
//

import Foundation

class ParseJsonService {
    static func parseAppleStock() -> [StockUnit] {
        guard let url = Bundle.main.url(forResource: "aapl-stock", withExtension: "json") else {
            print("Failed to load json file")
            return []
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode([StockUnit].self, from: data)
            return jsonData
        } catch {
            print("failed to decode apple stock file: \(error)")
            return []
        }
    }
    
    static func parsePollenCount() -> [PollenCount] {
        guard let url = Bundle.main.url(forResource: "pollen-count", withExtension: "json") else {
            print("Failed to load json file")
            return []
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode([PollenCount].self, from: data)
            return jsonData
        } catch {
            print("failed to decode pollen count file: \(error)")
            return []
        }
    }
}
