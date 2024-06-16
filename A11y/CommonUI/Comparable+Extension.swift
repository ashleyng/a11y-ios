//
//  Comparable+Extension.swift
//  A11y
//
//  Created by Ashley Ng on 4/10/24.
//

import Foundation

extension Comparable where Self: CaseIterable, Self: ListItemNavigation {
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.itemTitleString < rhs.itemTitleString
    }
}
