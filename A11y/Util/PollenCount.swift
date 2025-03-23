//
//  PollenCount.swift
//  A11y
//
//  Created by Ashley Ng on 3/22/25.
//


import Foundation

struct PollenCount: Codable, Identifiable {
    
    enum CodingKeys: String, CodingKey {
        case dateString = "date"
        case location
        case pollenIndex
    }
    
    let id = UUID()
    let dateString: String
    let location: String
    let pollenIndex: Double
    
    var date: Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        return dateFormatter.date(from: dateString)
    }
}
