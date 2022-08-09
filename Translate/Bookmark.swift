//
//  Bookmark.swift
//  Translate
//
//  Created by 박지용 on 2022/08/09.
//

import Foundation

struct Bookmark: Codable {
    let sourceLanguage: Language
    let translatedLanguage: Language
    
    let sourceText: String
    let translatedText: String
}
