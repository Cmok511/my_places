//
//  MainTableViewController.swift
//  my_places
//
//  Created by Денис Чупров on 26.03.2021.
//

import UIKit

class MainTableViewController: UITableViewController {

 let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "Love&Life", "Шок", "Бочка"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
    cell.imageOfPlace.image = UIImage(named: restaurantNames[indexPath.row])
    cell.nameLabel.text = restaurantNames[indexPath.row]
    cell.imageView?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
    cell.imageView?.clipsToBounds = true
        

        return cell
    }
    
    
    // MARK: - TableViewDelegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
*/
}
