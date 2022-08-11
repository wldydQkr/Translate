//
//  TranlatorManager.swift
//  Translate
//
//  Created by 박지용 on 2022/08/11.
//

import Alamofire
import Foundation

struct TranslatorManager {
    var sourceLanguage: Language = .ko
    var targetLanuguage: Language = .en
    
    func translate(from text: String, completionHandler: @escaping (String) -> Void) {
        guard let url = URL(string: "https://openapi.naver.com/v1/papago/n2mt") else { return }
        
        // url이 존재한다는 담보가되어 있다
        let requestModel = TranslateRequestModel(
            source: sourceLanguage.languageCode,
            target: targetLanuguage.languageCode,
            text: text
        )
        
        let headers: HTTPHeaders = [
            "X-Naver-Client-Id": "Gs7nlm9jZ8lJqssUesZC",
            "X-Naver-Client-Secret": "3NlRavKiTU"
        ]
        AF
            .request(url, method: .post, parameters: requestModel, headers: headers)
            .responseDecodable(of: TranslateResponseModel.self) { response in
                switch response.result {
                case .success(let result):
                    completionHandler(result.translatedText)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
            .resume()
    }
}
