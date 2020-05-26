//
//  TableViewController.swift
//  ALLgorithms
//
//  Created by Hasan Efe Özkavcı on 21.05.2020.
//  Copyright © 2020 Hasan Efe Özkavcı. All rights reserved.
//

import UIKit
var myIndex = 0
//Variables for the list
var algorithmTitles = ["Stable Matching Problem", "MST(Kruskal's Algorithm)", "MST(Prim's Algorithm)", "Breadth First Search", "Depth First Search", "Testing Bipartiteness", "Topological Sorting", "Ford - Fulkerson Algorithm"]
var cellImages = [#imageLiteral(resourceName: "Stable Matching Problem"), #imageLiteral(resourceName: "MST(Kruskal's Algorithm)"), #imageLiteral(resourceName: "MST(Prim's Algorithm)"), #imageLiteral(resourceName: "Breadth First Search"), #imageLiteral(resourceName: "Depth First Search"), #imageLiteral(resourceName: "Testing Bipartiteness"), #imageLiteral(resourceName: "Topological Sorting"), #imageLiteral(resourceName: "Ford - Fulkerson Algorithm")]
var limit = algorithmTitles.count
class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return algorithmTitles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        
        //Using images designed with Adobe XD For the list.
        cell.cellImage.image = cellImages[indexPath.row]

        return cell
    }
    //Method for the height of each cell in the list.
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    //myIndex variable stores the list item index for further use.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        
    }
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        super.viewDidLoad()
    }
}
