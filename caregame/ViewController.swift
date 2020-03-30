//
//  ViewController.swift
//  caregame
//
//  Created by 이혜민 on 2020/03/30.
//  Copyright © 2020 connect.foundation.zzz0484. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    var flipCount  = 0 {
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }

    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["👻","🎃","👻","🎃 "]
    
    @IBAction func touchCard(_ sender: UIButton) {
//        print("agh! a ghost!!")
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
//            print("cardNumber = \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else{
             print("선택된 카드는 cardButtons에 없습니다")
        }
    }
//    @IBAction func touchSecondCard(_ sender: UIButton) {
//        flipCount += 1
//        flipCard(withEmoji: "🎃", on: sender)
//    }
    
    func flipCard(withEmoji emoji:String, on button: UIButton){
//        print("flipCard(wi thEmoji: \(emoji))")
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    

}

