//
//  TableViewController.swift
//  ALLgorithms
//
//  Created by Hasan Efe Özkavcı on 21.05.2020.
//  Copyright © 2020 Hasan Efe Özkavcı. All rights reserved.
//

import UIKit
var myIndex = 0
var algorithmTitles = ["Stable Matching Problem", "MST(Kruskal's Algorithm)", "MST(Prim's Algorithm)", "Breadth First Search", "Depth First Search", "Testing Bipartiteness", "Topological Sorting", "Ford - Fulkerson Algorithm"]
let colorArray = [UIColor.red, UIColor.blue, UIColor.yellow, UIColor.cyan, UIColor.red, UIColor.blue, UIColor.yellow, UIColor.cyan]
var cellImages = [#imageLiteral(resourceName: "Stable Matching Problem"), #imageLiteral(resourceName: "MST(Kruskal's Algorithm)"), #imageLiteral(resourceName: "MST(Prim's Algorithm)"), #imageLiteral(resourceName: "Breadth First Search"), #imageLiteral(resourceName: "Depth First Search"), #imageLiteral(resourceName: "Testing Bipartiteness"), #imageLiteral(resourceName: "Topological Sorting"), #imageLiteral(resourceName: "Ford - Fulkerson Algorithm")]
var limit = algorithmTitles.count
class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return algorithmTitles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        
        //cell.cellLabel.text = algorithmTitles[indexPath.row]
        //cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 8
        //cell.cellImage.layer.cornerRadius = 15
        cell.cellImage.image = cellImages[indexPath.row]
        //cell.layer.borderWidth = 5
        //cell.layer.borderColor = colorArray[indexPath.row].cgColor
        /*cell.cellView.layer.borderColor = UIColor(displayP3Red: 1, green: 87/255, blue: 51/255, alpha: 1).cgColor*/

        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        
    }
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
