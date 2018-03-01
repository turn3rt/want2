//
//  ExploreTVController.swift
//  Want2
//
//  Created by Turner Thornberry on 3/1/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class ExploreTVController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO: need to implement Search Bar Controller
//        var searchBar = UISearchBar()
//        var searchController = UISearchController()
//        searchController.delegate = self as! UISearchDisplayDelegate
//        searchController.searchResultsDataSource = self
//        tableView.tableHeaderView = searchBar
//        tableView.contentOffset = CGPoint(x: 0, y: searchBar.frame.height)
        
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 && indexPath.row != 2 && indexPath.row != 6 { //if indexpath divided by 2's remainder is = 0, indexpath is even
            let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityWithPromoPicTVCell", for: indexPath)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityCell", for: indexPath)
        
        
        return cell
    }
    

   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: - Search Results Updating Delegate

//extension ExploreTVController: UISearchResultsUpdating {
//
//}


