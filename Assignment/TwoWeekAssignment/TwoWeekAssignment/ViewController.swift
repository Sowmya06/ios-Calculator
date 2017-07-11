//
//  ViewController.swift
//  TwoWeekAssignment
//
//  Created by Sowmya Amireddy on 7/10/17.
//  Copyright © 2017 Sowmya Amireddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    
    
    var tab = MyTableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var imageLoad = tab.arrayOfImages[myIndex]
        imageView.image = UIImage(named: imageLoad)
        var data = tab.names[myIndex]
        self.navigationItem.title = data
        
        var data1 = tab.address[myIndex]
        print(data1)
        label1.text = data1
        
    }
   

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

