//
//  FirstViewController.swift
//  ALLgorithms
//
//  Created by Hasan Efe Özkavcı on 20.05.2020.
//  Copyright © 2020 Hasan Efe Özkavcı. All rights reserved.
//

import Foundation
import UIKit


class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var node1button: UIButton!
    @IBOutlet weak var node2button: UIButton!
    @IBOutlet weak var node3button: UIButton!
    @IBOutlet weak var node4button: UIButton!
    @IBOutlet weak var node5button: UIButton!
    @IBOutlet weak var node1label: UILabel!
    @IBOutlet weak var node2label: UILabel!
    @IBOutlet weak var node3label: UILabel!
    @IBOutlet weak var node4label: UILabel!
    @IBOutlet weak var node5label: UILabel!
    var node1text = "Edsger Wybe Dijkstra"
    var node2text = "Vojtěch Jarník"
    var node3text = "Edward F. Moore"
    var node4text = "Paul Erdős"
    var node5text = "Alan Mathison Turing"
    var shapeLayer: CAShapeLayer?
    let path = UIBezierPath()
    
    func drawLine(x1: CGFloat, y1: CGFloat, x2: CGFloat, y2: CGFloat){
        path.move(to: CGPoint.init(x: x1, y: y1))
        path.addLine(to: CGPoint.init(x: x2, y: y2))
        shapeLayer = CAShapeLayer.init()
        shapeLayer?.fillColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        shapeLayer?.strokeColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        shapeLayer?.lineWidth = 4
        shapeLayer?.path = path.cgPath
        view1.layer.addSublayer(shapeLayer!)
        

        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        
        animation.fromValue = 0
        animation.duration = 1
        shapeLayer!.add(animation, forKey: "MyAnimation")
        
    }
    @IBAction func node1Clicked(_ sender: Any) {
        
        node1label.animate(newText: node1text, characterDelay: 0.05)
        drawLine(x1: node1button.center.x, y1: CGFloat(node1button.center.y), x2: node2button.center.x, y2: CGFloat(node2button.center.y))
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.node2button.isHidden = false
        }
    }
    @IBAction func node2Clicked(_ sender: Any) {
        node2label.animate(newText: node2text, characterDelay: 0.05)
        drawLine(x1: node2button.center.x, y1: CGFloat(node2button.center.y), x2: node3button.center.x, y2: CGFloat(node3button.center.y))
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.node3button.isHidden = false
        }
    }
    @IBAction func node3Clicked(_ sender: Any) {
        node3label.animate(newText: node3text, characterDelay: 0.05)
        drawLine(x1: node3button.center.x, y1: CGFloat(node3button.center.y), x2: node4button.center.x, y2: CGFloat(node4button.center.y))
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.node4button.isHidden = false
        }
    }
    @IBAction func node4Clicked(_ sender: Any) {
        node4label.animate(newText: node4text, characterDelay: 0.05)
        drawLine(x1: node4button.center.x, y1: CGFloat(node4button.center.y), x2: node5button.center.x, y2: CGFloat(node5button.center.y))
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.node5button.isHidden = false
            self.node5label.isHidden = false
        }
    }
    
    @IBAction func node5Clicked(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        node1button.isHidden = false
        node2button.isHidden = true
        node3button.isHidden = true
        node4button.isHidden = true
        node5button.isHidden = true
        node5label.isHidden = true
        NSLog("Hey!")
        /*
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.node1Clicked((Any).self)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.node2Clicked((Any).self)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.node3Clicked((Any).self)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.node4Clicked((Any).self)
        }
        */
    }
}
