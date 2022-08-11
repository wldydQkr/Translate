//
//  TranslateRequestModel.swift
//  Translate
//
//  Created by 박지용 on 2022/08/11.
//

import Foundation

struct TranslateRequestModel: Codable {
    let source: String
    let target: String
    let text: String
}
