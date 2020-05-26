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



class ViewController: UIViewController {
    
    @IBOutlet weak var gif: UIImageView!
    @IBOutlet weak var definitionSwitch: UISegmentedControl!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var definitionView: UITextView!
    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var mySlider: UISlider!
    
    var stableIndex = 0,kruskalIndex = 0, primIndex = 0, bfsIndex = 0, dfsIndex = 0, topIndex = 0
    let stableMatchingImageSet = [#imageLiteral(resourceName: "frame_0_delay-7s.jpg"), #imageLiteral(resourceName: "frame_1_delay-7s.jpg"), #imageLiteral(resourceName: "frame_2_delay-7s.jpg"), #imageLiteral(resourceName: "frame_3_delay-7s.jpg"), #imageLiteral(resourceName: "frame_4_delay-7s.jpg"), #imageLiteral(resourceName: "frame_5_delay-7s.jpg"), #imageLiteral(resourceName: "frame_6_delay-7s.jpg")]
    let kruskalSet = [#imageLiteral(resourceName: "KruskalDemo-0.jpg"),#imageLiteral(resourceName: "KruskalDemo-1.jpg"),#imageLiteral(resourceName: "KruskalDemo-2.jpg"),#imageLiteral(resourceName: "KruskalDemo-3.jpg"),#imageLiteral(resourceName: "KruskalDemo-4.jpg"),#imageLiteral(resourceName: "KruskalDemo-5.jpg"),#imageLiteral(resourceName: "KruskalDemo-6.jpg"),#imageLiteral(resourceName: "KruskalDemo-7.jpg"),#imageLiteral(resourceName: "KruskalDemo-8.jpg"),#imageLiteral(resourceName: "KruskalDemo-9.jpg"),#imageLiteral(resourceName: "KruskalDemo-10.jpg"),#imageLiteral(resourceName: "KruskalDemo-11.jpg"),#imageLiteral(resourceName: "KruskalDemo-12.jpg"),#imageLiteral(resourceName: "KruskalDemo-13.jpg"),#imageLiteral(resourceName: "KruskalDemo-14.jpg"),#imageLiteral(resourceName: "KruskalDemo-15.jpg"),#imageLiteral(resourceName: "KruskalDemo-16.jpg"),#imageLiteral(resourceName: "KruskalDemo-17.jpg"),#imageLiteral(resourceName: "KruskalDemo-18.jpg"),#imageLiteral(resourceName: "KruskalDemo-19.jpg"),#imageLiteral(resourceName: "KruskalDemo-20.jpg"),#imageLiteral(resourceName: "KruskalDemo-21.jpg"),#imageLiteral(resourceName: "KruskalDemo-22.jpg"),#imageLiteral(resourceName: "KruskalDemo-23.jpg"),#imageLiteral(resourceName: "KruskalDemo-24.jpg"),#imageLiteral(resourceName: "KruskalDemo-25.jpg"),#imageLiteral(resourceName: "KruskalDemo-26.jpg"),#imageLiteral(resourceName: "KruskalDemo-27.jpg"),#imageLiteral(resourceName: "KruskalDemo-28.jpg"),#imageLiteral(resourceName: "KruskalDemo-29.jpg"),#imageLiteral(resourceName: "KruskalDemo-30.jpg"),#imageLiteral(resourceName: "KruskalDemo-31.jpg"),#imageLiteral(resourceName: "KruskalDemo-32.jpg"),#imageLiteral(resourceName: "KruskalDemo-33.jpg"),#imageLiteral(resourceName: "KruskalDemo-34.jpg"),#imageLiteral(resourceName: "KruskalDemo-35.jpg"),#imageLiteral(resourceName: "KruskalDemo-36.jpg"),#imageLiteral(resourceName: "KruskalDemo-37.jpg"),#imageLiteral(resourceName: "KruskalDemo-38.jpg"),#imageLiteral(resourceName: "KruskalDemo-39.jpg"),#imageLiteral(resourceName: "KruskalDemo-40.jpg"),#imageLiteral(resourceName: "KruskalDemo-41.jpg"),#imageLiteral(resourceName: "KruskalDemo-42.jpg"),#imageLiteral(resourceName: "KruskalDemo-43.jpg"),#imageLiteral(resourceName: "KruskalDemo-44.jpg"),#imageLiteral(resourceName: "KruskalDemo-45.jpg"),#imageLiteral(resourceName: "KruskalDemo-46.jpg"),#imageLiteral(resourceName: "KruskalDemo-47.jpg"),#imageLiteral(resourceName: "KruskalDemo-48.jpg"),#imageLiteral(resourceName: "KruskalDemo-49.jpg"),#imageLiteral(resourceName: "KruskalDemo-50.jpg"),#imageLiteral(resourceName: "KruskalDemo-51.jpg"),#imageLiteral(resourceName: "KruskalDemo-52.jpg"),#imageLiteral(resourceName: "KruskalDemo-53.jpg"),#imageLiteral(resourceName: "KruskalDemo-54.jpg"),#imageLiteral(resourceName: "KruskalDemo-55.jpg"),#imageLiteral(resourceName: "KruskalDemo-56.jpg"),#imageLiteral(resourceName: "KruskalDemo-57.jpg"),#imageLiteral(resourceName: "KruskalDemo-58.jpg"),#imageLiteral(resourceName: "KruskalDemo-59.jpg"),#imageLiteral(resourceName: "KruskalDemo-60.jpg"),#imageLiteral(resourceName: "KruskalDemo-61.jpg"),#imageLiteral(resourceName: "KruskalDemo-62.jpg"),#imageLiteral(resourceName: "KruskalDemo-63.jpg"),#imageLiteral(resourceName: "KruskalDemo-64.jpg"),#imageLiteral(resourceName: "KruskalDemo-65.jpg"),#imageLiteral(resourceName: "KruskalDemo-66.jpg"),#imageLiteral(resourceName: "KruskalDemo-67.jpg"),#imageLiteral(resourceName: "KruskalDemo-68.jpg"),#imageLiteral(resourceName: "KruskalDemo-69.jpg"),#imageLiteral(resourceName: "KruskalDemo-70.jpg"),#imageLiteral(resourceName: "KruskalDemo-71.jpg"),#imageLiteral(resourceName: "KruskalDemo-72.jpg"),#imageLiteral(resourceName: "KruskalDemo-73.jpg"),#imageLiteral(resourceName: "KruskalDemo-74.jpg"),#imageLiteral(resourceName: "KruskalDemo-75.jpg"),#imageLiteral(resourceName: "KruskalDemo-76.jpg"),#imageLiteral(resourceName: "KruskalDemo-77.jpg"),#imageLiteral(resourceName: "KruskalDemo-78.jpg"),#imageLiteral(resourceName: "KruskalDemo-79.jpg"),#imageLiteral(resourceName: "KruskalDemo-80.jpg"),#imageLiteral(resourceName: "KruskalDemo-81.jpg"),#imageLiteral(resourceName: "KruskalDemo-82.jpg"),#imageLiteral(resourceName: "KruskalDemo-83.jpg"),#imageLiteral(resourceName: "KruskalDemo-84.jpg"),#imageLiteral(resourceName: "KruskalDemo-85.jpg"),#imageLiteral(resourceName: "KruskalDemo-86.jpg"),#imageLiteral(resourceName: "KruskalDemo-87.jpg"),#imageLiteral(resourceName: "KruskalDemo-88.jpg"),#imageLiteral(resourceName: "KruskalDemo-89.jpg"),#imageLiteral(resourceName: "KruskalDemo-90.jpg"),#imageLiteral(resourceName: "KruskalDemo-91.jpg"),#imageLiteral(resourceName: "KruskalDemo-92.jpg")]
    let primSet = [#imageLiteral(resourceName: "PrimAlgDemo-0.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-1.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-2.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-3.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-4.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-5.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-6.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-7.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-8.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-9.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-10.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-11.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-12.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-13.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-14.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-15.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-16.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-17.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-18.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-19.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-20.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-21.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-22.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-23.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-24.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-25.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-26.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-27.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-28.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-29.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-30.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-31.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-32.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-33.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-35.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-36.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-37.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-38.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-39.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-40.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-41.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-42.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-43.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-44.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-45.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-46.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-47.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-48.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-49.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-50.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-51.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-52.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-53.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-54.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-55.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-56.jpg"),#imageLiteral(resourceName: "PrimAlgDemo-57.jpg")]
    let bfsSet = [#imageLiteral(resourceName: "Animated_BFS-0.jpg"),#imageLiteral(resourceName: "Animated_BFS-1.jpg"),#imageLiteral(resourceName: "Animated_BFS-2.jpg"),#imageLiteral(resourceName: "Animated_BFS-3.jpg"),#imageLiteral(resourceName: "Animated_BFS-4.jpg"),#imageLiteral(resourceName: "Animated_BFS-5.jpg"),#imageLiteral(resourceName: "Animated_BFS-6.jpg"),#imageLiteral(resourceName: "Animated_BFS-7.jpg"),#imageLiteral(resourceName: "Animated_BFS-8.jpg"),#imageLiteral(resourceName: "Animated_BFS-9.jpg")]
    let dfsSet = [#imageLiteral(resourceName: "Depth-First-Search-0.jpg"),#imageLiteral(resourceName: "Depth-First-Search-1.jpg"),#imageLiteral(resourceName: "Depth-First-Search-2.jpg"),#imageLiteral(resourceName: "Depth-First-Search-3.jpg"),#imageLiteral(resourceName: "Depth-First-Search-4.jpg"),#imageLiteral(resourceName: "Depth-First-Search-5.jpg"),#imageLiteral(resourceName: "Depth-First-Search-6.jpg"),#imageLiteral(resourceName: "Depth-First-Search-7.jpg"),#imageLiteral(resourceName: "Depth-First-Search-8.jpg"),#imageLiteral(resourceName: "Depth-First-Search-9.jpg"),#imageLiteral(resourceName: "Depth-First-Search-10.jpg")]
    let bipartitenessImage = UIImage.init(imageLiteralResourceName: "Bipartiteness.png")
        

    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        indexLabel.text = "\(Int(sender.value))/\(Int(sender.maximumValue))"
        switch myIndex{
        case 0:
                stableIndex = Int(sender.value)-1
                gif.image = stableMatchingImageSet[Int(sender.value)-1]
        case 1:
                kruskalIndex = Int(sender.value)-1
                gif.image = kruskalSet[Int(sender.value)-1]
        case 2:
                primIndex = Int(sender.value)-1
                gif.image = primSet[Int(sender.value)-1]
        case 3:
                bfsIndex = Int(sender.value)-1
                gif.image = bfsSet[Int(sender.value)-1]
        case 4:
                dfsIndex = Int(sender.value)-1
                gif.image = dfsSet[Int(sender.value)-1]
        case 6:
                topIndex = Int(sender.value)-1
                if topIndex < 10{
                    gif.image = UIImage.init(imageLiteralResourceName: "AnimatedSourBandicoot-mobile_00\(topIndex).jpg")
                }
                else if topIndex >= 10 && topIndex < 99{
                        gif.image = UIImage.init(imageLiteralResourceName: "AnimatedSourBandicoot-mobile_0\(topIndex).jpg")
                }
                else{
                    gif.image = UIImage.init(imageLiteralResourceName: "AnimatedSourBandicoot-mobile_\(topIndex).jpg")
                }
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
        case 2:
            if(primIndex < primSet.count-1){
                mySlider.value += 1
                primIndex += 1
                gif.image = primSet[primIndex]
                indexLabel.text = "\(primIndex+1)/\(primSet.count)"
            }
        case 3:
            if(bfsIndex < bfsSet.count-1){
                mySlider.value += 1
                bfsIndex += 1
                gif.image = bfsSet[bfsIndex]
                indexLabel.text = "\(bfsIndex+1)/\(bfsSet.count)"
            }
        case 4:
            if(dfsIndex < dfsSet.count-1){
                mySlider.value += 1
                dfsIndex += 1
                gif.image = dfsSet[dfsIndex]
                indexLabel.text = "\(dfsIndex+1)/\(dfsSet.count)"
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
        case 2:
            if(primIndex >= 1){
                mySlider.value -= 1
                primIndex -= 1
                gif.image = primSet[primIndex]
                indexLabel.text = "\(primIndex+1)/\(primSet.count)"
            }
        case 3:
            if(bfsIndex >= 1){
                mySlider.value -= 1
                bfsIndex -= 1
                gif.image = bfsSet[bfsIndex]
                indexLabel.text = "\(bfsIndex+1)/\(bfsSet.count)"
            }
        case 4:
            if(dfsIndex >= 1){
                mySlider.value -= 1
                dfsIndex -= 1
                gif.image = dfsSet[dfsIndex]
                indexLabel.text = "\(dfsIndex+1)/\(dfsSet.count)"
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
            case 2:
                mySlider.maximumValue = Float(primSet.count)
                primIndex = 0
                titleLabel.text = algorithmTitles[myIndex]
                gif.image = primSet[primIndex]
                indexLabel.text = "1/\(primSet.count)"
            case 3:
                mySlider.maximumValue = Float(bfsSet.count)
                bfsIndex = 0
                titleLabel.text = algorithmTitles[myIndex]
                gif.image = bfsSet[bfsIndex]
                indexLabel.text = "1/\(bfsSet.count)"
            case 4:
                mySlider.maximumValue = Float(dfsSet.count)
                dfsIndex = 0
                titleLabel.text = algorithmTitles[myIndex]
                gif.image = dfsSet[bfsIndex]
                indexLabel.text = "1/\(dfsSet.count)"
            case 5:
                mySlider.maximumValue = 1
                titleLabel.text = algorithmTitles[myIndex]
                gif.image = bipartitenessImage
                indexLabel.text = "1/1"
            case 6:
                mySlider.maximumValue = 300
                titleLabel.text = algorithmTitles[myIndex]
                if topIndex < 10{
                    gif.image = UIImage.init(imageLiteralResourceName: "AnimatedSourBandicoot-mobile_00\(topIndex).jpg")
                }
                else if topIndex >= 10 && topIndex < 99{
                        gif.image = UIImage.init(imageLiteralResourceName: "AnimatedSourBandicoot-mobile_0\(topIndex).jpg")
                }
                else{
                    gif.image = UIImage.init(imageLiteralResourceName: "AnimatedSourBandicoot-mobile_\(topIndex).jpg")
                }
                indexLabel.text = "1/300"
                
            default:
                print("No algorithm selected!")
        }
        
    }
    
    
    
    
    

}
