//
//  Type.swift
//  Translate
//
//  Created by 박지용 on 2022/08/09.
//

import UIKit

enum `Type` {
    case source
    case target
    
    var color: UIColor {
        switch self {
        case .source: return .label
        case .target: return .mainTintColor
        }
    }
}
