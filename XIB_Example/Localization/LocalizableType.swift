//
//  LocalizableType.swift
//  XIB_Example
//
//  Created by Ümit on 9.05.2020.
//  Copyright © 2020 Ümit. All rights reserved.
//

import Foundation
enum LocalizableType : String {
    case newCountryList
    case Barcelona
    case Juventus
    case Chelsea
    
    func value() -> String {
        return self.rawValue
    }
}
