//
//  DinnerViewController.swift
//  new-dimibob
//
//  Created by 김도완 on 2020/06/29.
//


import Foundation
import UIKit
import RxSwift
import CardParts
import RxCocoa

class DinnerViewController: CardPartsViewController  {
    
    var titlePart = CardPartTitleView(type: .titleOnly)
    var textPart = CardPartTextView(type: .normal)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titlePart.title = "저녁 밥은..."
        textPart.text = "가자미유린기강정/흑미밥/쌀밥/부대찌개/어묵콩나물볶음/열무나물/깍두기/모듬과일/2종시리얼/우유또는망고주스/땅콩샌드/선식"
        //textPart.text = function().requestDateSetting(type: 3)
        setupCardParts([titlePart, textPart])
    }
}
//extension DinnerViewController: ShadowCardTrait {
//    func shadowOffset() -> CGSize {
//        return CGSize(width: 1.0, height: 1.0)
//    }
//    
//    func shadowColor() -> CGColor {
//        return UIColor.lightGray.cgColor
//    }
//    
//    func shadowRadius() -> CGFloat {
//        return 10.0
//    }
//    
//    func shadowOpacity() -> Float {
//        return 0.8
//    }
//}
//
//extension DinnerViewController: RoundedCardTrait {
//    func cornerRadius() -> CGFloat {
//        return 10.0
//    }
//}
