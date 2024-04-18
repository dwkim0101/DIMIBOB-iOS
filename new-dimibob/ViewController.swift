//
//  ViewController.swift
//  new-dimibob
//
//  Created by 김도완 on 2020/06/28.
//
import Foundation
import UIKit
import RxSwift
import CardParts
import RxCocoa

class ViewController: CardsViewController{
    
    required init?(coder: NSCoder) {
        CardPartsMintTheme().apply()
        super.init(coder: coder)
    }
    
    let cards: [CardController] = [DateViewController(), BreakfastViewController(), LunchViewController(), DinnerViewController()]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = self.collectionView.collectionViewLayout as? UICollectionViewFlowLayout
        layout!.sectionInset = UIEdgeInsets(top:15, left:10, bottom:15, right :10)
        loadCards(cards: cards)
    }
    
}

class emptyViewController: CardPartsViewController  {
    
    var titlePart = CardPartTitleView(type: .titleOnly)
    var textPart = CardPartTextView(type: .normal)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titlePart.title = function().dateStringsetting()
        textPart.text = "오늘도 맛있는 하루 되세요 😊"
        setupCardParts([titlePart, textPart])
    }

}


extension Date {
    
    var today: Date {
        return Calendar.current.date(byAdding: .day, value: 0, to: noon)!
    }
    var tommorow : Date{
        return Calendar.current.date(byAdding: .day, value: 1, to: noon)!
    }

    var noon: Date {
        return Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: self)!
    }
    var month: Int {
        return Calendar.current.component(.month,  from: self)
    }
    var isLastDayOfMonth: Bool {
        return tommorow.month != month
    }
}
