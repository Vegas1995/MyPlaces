//
//  ViewController.swift
//  MyPlaces
//
//  Created by Валерий Мустафин on 19/10/2019.
//  Copyright © 2019 Валерий Мустафин. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let restaurantNames = [
        "Балкан Гриль", "Бочка", "Вкусные истории",
        "Дастархан", "Индокитай", "Speak Easy",
        "Классик", "Шок", "Burger Heroes",
        "Bonsai", "Kitchen", "Love&Life",
        "Morris Pub", "Sherlock Holmes", "X.O",
    ]


func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return restaurantNames.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    
    cell.textLabel?.text = restaurantNames[indexPath.row]
    cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row] )
    return cell
    }
}
