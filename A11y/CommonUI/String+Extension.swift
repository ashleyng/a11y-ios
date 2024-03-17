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
    
    static func shortLoremIpsum() -> String {
        return "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a gravida ipsum, ac scelerisque leo."
    }
    
    static func loremIpsum() -> String {
        return """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi semper felis at velit facilisis, a ornare mi elementum. Proin consequat diam suscipit facilisis \
        condimentum. Suspendisse potenti. Cras sit amet justo auctor, aliquet justo quis, imperdiet tortor. Cras fermentum lacinia massa, at suscipit nulla pellentesque in. \
        Phasellus pharetra lectus eget commodo feugiat. Nullam commodo porta metus, ut feugiat turpis condimentum vitae. Vestibulum auctor ex tortor, eu auctor ex tempus \
        vitae. Phasellus semper justo orci, et viverra lectus laoreet a. Proin efficitur tellus eu orci vulputate pellentesque. Donec in tristique enim, vitae dictum ligula.
        """
    }
}
