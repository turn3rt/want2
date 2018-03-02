//
//  HomeTVController.swift
//  Want2
//
//  Created by Turner Thornberry on 3/2/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import UIKit

class HomeTVController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeActivityCell", for: indexPath)
            return cell
            
//        }
//        let cell = tableView.dequeueReusableCell(withIdentifier: "beef", for: indexPath)
//        return cell
        
        
    }
    
}
