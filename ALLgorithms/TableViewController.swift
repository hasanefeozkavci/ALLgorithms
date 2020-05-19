//
//  TableViewController.swift
//  Data Processing Algorithms - IOS
//
//  Created by Hasan Efe Özkavcı on 17.05.2020.
//  Copyright © 2020 Hasan Efe Özkavcı. All rights reserved.
//

import UIKit
var algorithmTitles = ["Stable Matching Problem", "MST(Kruskal's Algorithm)", "MST(Prim's Algorithm)", "Breadth First Search", "Depth First Search", "Testing Bipartiteness", "Topological Ordering", "Ford - Fulkerson Algorithm"]
var myIndex = 0
class TableViewController: UITableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return algorithmTitles.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = algorithmTitles[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue2", sender: self)
    }
}
