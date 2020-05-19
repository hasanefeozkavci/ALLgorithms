//
//  ViewController.swift
//  ALLgorithms
//
//  Created by Hasan Efe Özkavcı on 18.05.2020.
//  Copyright © 2020 Hasan Efe Özkavcı. All rights reserved.
//

import UIKit
import Foundation
public class Node{
    var key: Int
    var left: Node?
    var right: Node?
    
    init(key: Int, left: Node?, right: Node?) {
        self.key = key
        self.left = left
        self.right = right
    }
    var root = Node(key: 5, left: nil, right: nil)
    func insert(node: Node?, val: Int){
        
    }
}



class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var gif: UIImageView!
    @IBOutlet weak var definitionSwitch: UISegmentedControl!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var definitionView: UITextView!
    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var mySlider: UISlider!
    
    var stableIndex = 0
    var kruskalIndex = 0
    let stableMatchingImageSet = [#imageLiteral(resourceName: "frame_0_delay-7s.jpg"), #imageLiteral(resourceName: "frame_1_delay-7s.jpg"), #imageLiteral(resourceName: "frame_2_delay-7s.jpg"), #imageLiteral(resourceName: "frame_3_delay-7s.jpg"), #imageLiteral(resourceName: "frame_4_delay-7s.jpg"), #imageLiteral(resourceName: "frame_5_delay-7s.jpg"), #imageLiteral(resourceName: "frame_6_delay-7s.jpg")]
    let kruskalSet = [#imageLiteral(resourceName: "KruskalDemo-0.jpg"),#imageLiteral(resourceName: "KruskalDemo-1.jpg"),#imageLiteral(resourceName: "KruskalDemo-2.jpg"),#imageLiteral(resourceName: "KruskalDemo-3.jpg"),#imageLiteral(resourceName: "KruskalDemo-4.jpg"),#imageLiteral(resourceName: "KruskalDemo-5.jpg"),#imageLiteral(resourceName: "KruskalDemo-6.jpg"),#imageLiteral(resourceName: "KruskalDemo-7.jpg"),#imageLiteral(resourceName: "KruskalDemo-8.jpg"),#imageLiteral(resourceName: "KruskalDemo-9.jpg"),#imageLiteral(resourceName: "KruskalDemo-10.jpg"),#imageLiteral(resourceName: "KruskalDemo-11.jpg"),#imageLiteral(resourceName: "KruskalDemo-12.jpg"),#imageLiteral(resourceName: "KruskalDemo-13.jpg"),#imageLiteral(resourceName: "KruskalDemo-14.jpg"),#imageLiteral(resourceName: "KruskalDemo-15.jpg"),#imageLiteral(resourceName: "KruskalDemo-16.jpg"),#imageLiteral(resourceName: "KruskalDemo-17.jpg"),#imageLiteral(resourceName: "KruskalDemo-18.jpg"),#imageLiteral(resourceName: "KruskalDemo-19.jpg"),#imageLiteral(resourceName: "KruskalDemo-20.jpg"),#imageLiteral(resourceName: "KruskalDemo-21.jpg"),#imageLiteral(resourceName: "KruskalDemo-22.jpg"),#imageLiteral(resourceName: "KruskalDemo-23.jpg"),#imageLiteral(resourceName: "KruskalDemo-24.jpg"),#imageLiteral(resourceName: "KruskalDemo-25.jpg"),#imageLiteral(resourceName: "KruskalDemo-26.jpg"),#imageLiteral(resourceName: "KruskalDemo-27.jpg"),#imageLiteral(resourceName: "KruskalDemo-28.jpg"),#imageLiteral(resourceName: "KruskalDemo-29.jpg"),#imageLiteral(resourceName: "KruskalDemo-30.jpg"),#imageLiteral(resourceName: "KruskalDemo-31.jpg"),#imageLiteral(resourceName: "KruskalDemo-32.jpg"),#imageLiteral(resourceName: "KruskalDemo-33.jpg"),#imageLiteral(resourceName: "KruskalDemo-34.jpg"),#imageLiteral(resourceName: "KruskalDemo-35.jpg"),#imageLiteral(resourceName: "KruskalDemo-36.jpg"),#imageLiteral(resourceName: "KruskalDemo-37.jpg"),#imageLiteral(resourceName: "KruskalDemo-38.jpg"),#imageLiteral(resourceName: "KruskalDemo-39.jpg"),#imageLiteral(resourceName: "KruskalDemo-40.jpg"),#imageLiteral(resourceName: "KruskalDemo-41.jpg"),#imageLiteral(resourceName: "KruskalDemo-42.jpg"),#imageLiteral(resourceName: "KruskalDemo-43.jpg"),#imageLiteral(resourceName: "KruskalDemo-44.jpg"),#imageLiteral(resourceName: "KruskalDemo-45.jpg"),#imageLiteral(resourceName: "KruskalDemo-46.jpg"),#imageLiteral(resourceName: "KruskalDemo-47.jpg"),#imageLiteral(resourceName: "KruskalDemo-48.jpg"),#imageLiteral(resourceName: "KruskalDemo-49.jpg"),#imageLiteral(resourceName: "KruskalDemo-50.jpg"),#imageLiteral(resourceName: "KruskalDemo-51.jpg"),#imageLiteral(resourceName: "KruskalDemo-52.jpg"),#imageLiteral(resourceName: "KruskalDemo-53.jpg"),#imageLiteral(resourceName: "KruskalDemo-54.jpg"),#imageLiteral(resourceName: "KruskalDemo-55.jpg"),#imageLiteral(resourceName: "KruskalDemo-56.jpg"),#imageLiteral(resourceName: "KruskalDemo-57.jpg"),#imageLiteral(resourceName: "KruskalDemo-58.jpg"),#imageLiteral(resourceName: "KruskalDemo-59.jpg"),#imageLiteral(resourceName: "KruskalDemo-60.jpg"),#imageLiteral(resourceName: "KruskalDemo-61.jpg"),#imageLiteral(resourceName: "KruskalDemo-62.jpg"),#imageLiteral(resourceName: "KruskalDemo-63.jpg"),#imageLiteral(resourceName: "KruskalDemo-64.jpg"),#imageLiteral(resourceName: "KruskalDemo-65.jpg"),#imageLiteral(resourceName: "KruskalDemo-66.jpg"),#imageLiteral(resourceName: "KruskalDemo-67.jpg"),#imageLiteral(resourceName: "KruskalDemo-68.jpg"),#imageLiteral(resourceName: "KruskalDemo-69.jpg"),#imageLiteral(resourceName: "KruskalDemo-70.jpg"),#imageLiteral(resourceName: "KruskalDemo-71.jpg"),#imageLiteral(resourceName: "KruskalDemo-72.jpg"),#imageLiteral(resourceName: "KruskalDemo-73.jpg"),#imageLiteral(resourceName: "KruskalDemo-74.jpg"),#imageLiteral(resourceName: "KruskalDemo-75.jpg"),#imageLiteral(resourceName: "KruskalDemo-76.jpg"),#imageLiteral(resourceName: "KruskalDemo-77.jpg"),#imageLiteral(resourceName: "KruskalDemo-78.jpg"),#imageLiteral(resourceName: "KruskalDemo-79.jpg"),#imageLiteral(resourceName: "KruskalDemo-80.jpg"),#imageLiteral(resourceName: "KruskalDemo-81.jpg"),#imageLiteral(resourceName: "KruskalDemo-82.jpg"),#imageLiteral(resourceName: "KruskalDemo-83.jpg"),#imageLiteral(resourceName: "KruskalDemo-84.jpg"),#imageLiteral(resourceName: "KruskalDemo-85.jpg"),#imageLiteral(resourceName: "KruskalDemo-86.jpg"),#imageLiteral(resourceName: "KruskalDemo-87.jpg"),#imageLiteral(resourceName: "KruskalDemo-88.jpg"),#imageLiteral(resourceName: "KruskalDemo-89.jpg"),#imageLiteral(resourceName: "KruskalDemo-90.jpg"),#imageLiteral(resourceName: "KruskalDemo-91.jpg"),#imageLiteral(resourceName: "KruskalDemo-92.jpg")]
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        indexLabel.text = "\(Int(sender.value))/\(Int(sender.maximumValue))"
        switch myIndex{
        case 0:
                stableIndex = Int(sender.value)-1
                gif.image = stableMatchingImageSet[Int(sender.value)-1]
        case 1:
                kruskalIndex = Int(sender.value)-1
                gif.image = kruskalSet[Int(sender.value)-1]
        default:
            print("No algorithm selected!")
        }
    }
    @IBAction func forwardPressed(_ sender: Any) {
        switch myIndex{
        case 0:
            if (stableIndex<stableMatchingImageSet.count-1){
                mySlider.value += 1
                stableIndex += 1
                gif.image = stableMatchingImageSet[stableIndex]
                indexLabel.text = "\(stableIndex+1)/\(stableMatchingImageSet.count)"
                
            }
        case 1:
            if(kruskalIndex<kruskalSet.count-1){
                mySlider.value += 1
                kruskalIndex += 1
                gif.image = kruskalSet[kruskalIndex]
                indexLabel.text = "\(kruskalIndex+1)/\(kruskalSet.count)"
            }
        default:
            print("No algorithm selected!")
        }
    }
    
    
    
    @IBAction func backPressed(_ sender: Any) {
        switch myIndex{
        case 0:
            if(stableIndex >= 1){
                mySlider.value -= 1
                stableIndex -= 1
                print("Stable index was \(stableIndex+1) and decreased to \(stableIndex) setcount: \(stableMatchingImageSet.count)\n")
                gif.image = stableMatchingImageSet[stableIndex]
                indexLabel.text = "\(stableIndex+1)/\(stableMatchingImageSet.count)"
            }
        case 1:
            if(kruskalIndex >= 1){
                mySlider.value -= 1
                kruskalIndex-=1
                gif.image = kruskalSet[kruskalIndex]
                indexLabel.text = "\(kruskalIndex+1)/\(kruskalSet.count)"
            }
                
        default:
            print("No algorithm selected!")
        }
    }
    
    var index = 0
    
    @IBAction func switchChanged(_ sender: Any) {
        
        switch definitionSwitch.selectedSegmentIndex{
        case 0:
            definitionView.text = Definitions[algorithmTitles[index]]
        case 1:
            definitionView.text = Algorithms[algorithmTitles[index]]
        default:
            break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        index = myIndex
        
        

        titleLabel.text = algorithmTitles[myIndex]
        definitionView.text = Definitions[algorithmTitles[myIndex]]
        mySlider.minimumValue = 1
        mySlider.value = 1
        switch myIndex{
            case 0:
                mySlider.maximumValue = Float(stableMatchingImageSet.count)
                stableIndex = 0
                titleLabel.text = algorithmTitles[myIndex]
                gif.image = stableMatchingImageSet[stableIndex]
                indexLabel.text = "1/\(stableMatchingImageSet.count)"
            case 1:
                mySlider.maximumValue = Float(kruskalSet.count)
                kruskalIndex = 0
                titleLabel.text = algorithmTitles[myIndex]
                gif.image = kruskalSet[kruskalIndex]
                indexLabel.text = "1/\(kruskalSet.count)"
            default:
                print("No algorithm selected!")
        }
        
    }
    
    
    
    
    

}
