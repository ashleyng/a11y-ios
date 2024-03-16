//
//  String+Extension.swift
//  A11y
//
//  Created by Ashley Ng on 3/15/24.
//

import Foundation

extension String {
    static func localizedString(key: String.LocalizationValue, arguments: CVarArg...) -> String {
        return String(format: String(localized: key), arguments)
    }
}
