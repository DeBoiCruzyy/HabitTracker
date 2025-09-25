//
//  ViewController.swift
//  HabitTracker
//
//  Created by Cruz Arreola on 9/23/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!      // IB = Interface builder
    
    @IBOutlet weak var habitTextField: UITextField!
    
    var habits: [(habit: String, date: String)] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        if let headerView = self.view.subviews.first(where: { $0.restorationIdentifier == "HeaderView"}){
            tableView.tableHeaderView = headerView
        }
    }
    
    @IBAction func addHabit(_ sender: UIButton) {
        let habitText = habitTextField.text!        //pulls text from text field
        
        let formatter = DateFormatter()             // This part pulls current date/time
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        let currentDate = formatter.string(from: Date())
        
        habits.append((habit: habitText, date: currentDate))    /* adds habit and date/time
                                                                 to table */
        
        tableView.reloadData()      // refreshes table
        
        habitTextField.text = ""
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return habits.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HabitCell", for: indexPath) as! HabitCell
        let habitEntry = habits[indexPath.row]
        
        cell.habitLabel.text = habitEntry.habit
        cell.dateLabel.text = habitEntry.date
        
        return cell
    }


}

