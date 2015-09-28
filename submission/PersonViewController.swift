// HOMEWORK 4 START

import UIKit

class PersonViewController: UIViewController, UITableViewDataSource{

  var firstName = ["Anastasia", "Nastya", "Dasha", "Olga", "Katya", "Polina", "Masha", "Yana", "Sveta", "Ira", "Lena", "Natalia", "Darya", "Anya", "Sasha", "Catherine", "Vlada", "Kira", "Tatyana", "Galina"]
  var lastName = ["Smirnov", "Ivanov", "Kuznetsov", "Popov", "Vasiliev", "Petrov", "Mikhailov", "Sokolov", "Morozov", "Volkov", "Pavlov", "Kozlov", "Stepanov", "Nikolaev", "Orlov", "Emelianenko", "Tinkov", "Vlad", "Zubkov", "Kozak"]
  
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
        super.viewDidLoad()
      tableView.dataSource = self
    }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return lastName.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    // Deque my cell (allow reuse)
    let cell = tableView.dequeueReusableCellWithIdentifier("personCell", forIndexPath: indexPath)

    // Configure cell value
    let fullName = firstName[indexPath.row] + " " + lastName[indexPath.row]
    cell.textLabel?.text = fullName
    
    // Return cell value
    return cell
  }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
}
// HOMEWORK 4 END