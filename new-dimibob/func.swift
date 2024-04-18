//
//  func.swift
//  new-dimibob
//
//  Created by 김도완 on 2020/06/30.
//

import Foundation
import Alamofire
import SwiftyJSON

class function {
    func dateStringsetting() -> String{
        let now = Date().today
        let date = DateFormatter()
        date.locale = Locale(identifier: "ko_kr")
        date.timeZone = TimeZone(abbreviation: "KST") // "2018-03-21 18:07:27"
        date.dateFormat = "yyyy년 MM월 dd일 급식"
        let dateString = date.string(from: now)
        return dateString
    }
    func requestDateSetting() -> String?{
        let now = Date().today
        let date = DateFormatter()
        date.locale = Locale(identifier: "ko_kr")
        date.timeZone = TimeZone(abbreviation: "KST") // "2018-03-21 18:07:27"
        date.dateFormat = "yyyyMMdd"
        let kr = date.string(from: now)
        let url = "https://dev-api.dimigo.in/dimibobs/"
        let url2 = url + kr
        Alamofire.request(url2, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
             case .failure(let error):
                print("JSON ERROR")
                print(error)
            }
        }
        return url2
    }
}
