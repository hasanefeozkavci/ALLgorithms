//
//  FirstViewController.swift
//  ALLgorithms
//
//  Created by Hasan Efe Özkavcı on 20.05.2020.
//  Copyright © 2020 Hasan Efe Özkavcı. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
  func fadeTo(_ alpha: CGFloat, duration: TimeInterval = 0.3) {
    DispatchQueue.main.async {
      UIView.animate(withDuration: duration) {
        self.alpha = alpha
      }
    }
  }

  func fadeIn(_ duration: TimeInterval = 0.3) {
    fadeTo(1.0, duration: duration)
  }

  func fadeOut(_ duration: TimeInterval = 0.3) {
    fadeTo(0.0, duration: duration)
  }
}
class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var startExploring: UIButton!
    @IBOutlet weak var mainView: UIView!
    let seconds = 2.0
    override func viewDidLoad() {
        NSLog("Hey!")
        imageView1.alpha = 0
        startExploring.alpha = 0
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 2.0) {
            self.imageView1.alpha = 1.0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + self.seconds) {
            UIView.animate(withDuration: 2.0){
                self.startExploring.alpha = 1.0
            }
        }
        
    }
    
    
}
