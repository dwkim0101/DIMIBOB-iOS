//
//  DateViewController.swift
//  new-dimibob
//
//  Created by 김도완 on 2020/06/30.
//

import Foundation
import UIKit
import RxSwift
import CardParts
import RxCocoa
class DateViewController: CardPartsViewController  {
    
    var titlePart = CardPartTitleView(type: .titleOnly)
    var textPart = CardPartTextView(type: .normal)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titlePart.title = function().dateStringsetting()
        textPart.text = "오늘도 맛있는 하루 되세요 😊"
        setupCardParts([titlePart, textPart])
    }

}

//extension DateViewController: ShadowCardTrait {
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
//
//}
//
//extension DateViewController: RoundedCardTrait {
//    func cornerRadius() -> CGFloat {
//        return 10.0
//    }
//}

//extension DateViewController: CustomMarginCardTrait {
//
//    func customMargin() -> CGFloat {
//        return 50
//        
//        
//    }
//}
