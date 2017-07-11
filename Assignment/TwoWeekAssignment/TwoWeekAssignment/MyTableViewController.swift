//
//  MyTableViewController.swift
//  TwoWeekAssignment
//
//  Created by Sowmya Amireddy on 7/10/17.
//  Copyright © 2017 Sowmya Amireddy. All rights reserved.
//

import UIKit

var myIndex = 0
class MyTableViewController: UITableViewController {
    var names = ["James", "Mary", "Adam", "Joanne", "Christopher","Rose", "Bryan", "Tiffany", "Craig", "Jane"]
    var address = ["123 Main Street,GreenBelt, MD",
                   "801 Mandan St, Greenbelt, MD",
                   "7818 Hanover Pkwy, New York City, NY",
                   "6404 Ivy, Chicago IL",
                   "194 Hipine Rd,San Francisco CA",
                   "5256 Wisconsin Ave, Las Vegas NW",
                   "2400 Virginia Ave, Washington DC",
                   "728 !5th Street, Rockville MD",
                   "1800 M Stree, Arlington VA",
                   "284 avenue, Atlanta OA"]
    var arrayOfImages = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.png", "6.jpg", "7.jpg", "8.png", "9.png", "10.jpg"]
  

   
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return arrayOfImages.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let myImage = UIImage(named: arrayOfImages[indexPath.row])
        cell.imageView?.image = myImage
        cell.textLabel?.text = names[indexPath.row]
        cell.detailTextLabel?.text = address[indexPath.row]
        return cell
    }
    
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        print(myIndex)
        performSegue(withIdentifier: "segue1", sender: self)
    

    }

}
