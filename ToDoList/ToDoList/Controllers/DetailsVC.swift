//
//  DetailsVC.swift
//  ToDoList
//
//  Created by Feras Al Mutairi on 20/01/1446 AH.
//

import UIKit

class DetailsVC: UIViewController {

    //Object
    var reminders: Reminders!
    
    //UILable
    @IBOutlet weak var detailsTitleLable: UILabel!
    @IBOutlet weak var detailsDateLable: UILabel!
    
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailsTitleLable.text = reminders.title
        detailsDateLable.text = reminders.date
        
    }
    



}
