//
//  TranlateResponseModel.swift
//  Translate
//
//  Created by 박지용 on 2022/08/11.
//

import Foundation

struct TranslateResponseModel: Decodable {
    let message: Message
    
    var translatedText: String { message.result.translatedText }
    
    struct Message: Decodable {
        let result: Result
    }
    
    struct Result: Decodable {
        let translatedText: String
    }
}
