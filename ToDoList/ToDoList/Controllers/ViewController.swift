//
//  ViewController.swift
//  ToDoList
//
//  Created by Feras Al Mutairi on 13/01/1446 AH.
//

import UIKit

class ViewController: UIViewController {

    // UITableview
    @IBOutlet weak var remindersTableView: UITableView!
    
    //
    
    
    
    //
    
    @IBOutlet weak var addRemindersButton: UIButton!
    
    //MARK: -
    
    var remindersArray = [
        Reminders(title: "Hello", date: "01-02-2024"),
        Reminders(title: "Who are you?", date: "01-02-2024"),
        Reminders(title: "tota", date: "17-09-1995"),
        Reminders(title: "fofa", date: "06-03-1995"),
        Reminders(title: "Hello", date: "01-02-2024"),
        Reminders(title: "Who are you?", date: "01-02-2024"),
        Reminders(title: "tota", date: "17-09-1995"),
        Reminders(title: "fofa", date: "06-03-1995"),
        Reminders(title: "Hello", date: "01-02-2024"),
        Reminders(title: "Who are you?", date: "01-02-2024"),
        Reminders(title: "tota", date: "17-09-1995"),
        Reminders(title: "fofa", date: "06-03-1995"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        remindersTableView.dataSource = self
        remindersTableView.delegate = self
        

//        self.navigationItem.title = "Your Title Here"
        setupNavBar()
        
        addRemindersButton.layer.cornerRadius = 15
    }

    @IBAction func addRemindersPressedButton(_ sender: UIButton) {
        
        
        print("Add Reminder")
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddRemindersID") as? AddRemindersVC
        present(vc!, animated: true)
      
    }
    private func setupNavBar() {
        self.navigationItem.title = "Reminders"
    }
}


//MARK: -
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return remindersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let remidersCell = tableView.dequeueReusableCell(withIdentifier: "remindersCell", for: indexPath) as! RemindersCell
        remidersCell.remindersTitleLabel.text = remindersArray[indexPath.row].title
        remidersCell.remindersDateLabel.text = remindersArray[indexPath.row].date
        
        return remidersCell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Delete show
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Here we select the cell
        let reminders = remindersArray[indexPath.row]
        
        let detailsVC = storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as? DetailsVC
        if let details = detailsVC {
            details.reminders = reminders
            present(details, animated: true)
        }
        
    }
    
    
    
    
    
}
