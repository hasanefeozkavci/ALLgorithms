//
//  Extentions.swift
//  ALLgorithms
//
//  Created by Hasan Efe Özkavcı on 21.05.2020.
//  Copyright © 2020 Hasan Efe Özkavcı. All rights reserved.
//

import Foundation
import UIKit
//Just an extension for uilabel which includes animate for code readibility.
extension UILabel {

    func animate(newText: String, characterDelay: TimeInterval) {

        DispatchQueue.main.async {

            self.text = ""

            for (index, character) in newText.enumerated() {
                DispatchQueue.main.asyncAfter(deadline: .now() + characterDelay * Double(index)) {
                    self.text?.append(character)
                }
            }
        }
    }

}

class Extentions: UIViewController{
    
}

