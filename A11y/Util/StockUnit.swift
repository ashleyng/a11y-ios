//
//  StockUnit.swift
//  A11y
//
//  Created by Ashley Ng on 3/21/25.
//

import Foundation

struct StockUnit: Codable, Identifiable {
    
    enum CodingKeys: String, CodingKey {
        case dateString = "date"
        case highPrice = "high"
        case units
    }
    
    let id = UUID()
    let dateString: String
    let highPrice: Double
    let units: Int
    
    var date: Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        return dateFormatter.date(from: dateString)
    }
}
