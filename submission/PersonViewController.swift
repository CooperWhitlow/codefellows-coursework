// HOMEWORK 4 START

import UIKit

class PersonViewController: UIViewController, UITableViewDataSource{

  // Instatiate arrays with our name data
  let firstNames = ["Anastasia", "Nastya", "Dasha", "Olga", "Katya", "Polina", "Masha", "Yana", "Sveta", "Ira", "Lena", "Natalia", "Darya", "Anya", "Sasha", "Catherine", "Vlada", "Kira", "Tatyana", "Galina"]
  let lastNames = ["Smirnov", "Ivanov", "Kuznetsov", "Popov", "Vasiliev", "Petrov", "Mikhailov", "Sokolov", "Morozov", "Volkov", "Pavlov", "Kozlov", "Stepanov", "Nikolaev", "Orlov", "Emelianenko", "Tinkov", "Vlad", "Zubkov", "Kozak"]
  
  // Prep our astrology images for later use
  let astrologicalSignImages = [UIImage(named: "images/aries.png"), UIImage(named: "images/taurus.png"), UIImage(named: "images/gemini.png"), UIImage(named: "images/cancer.png"), UIImage(named: "images/leo.png"), UIImage(named: "images/virgo.png"), UIImage(named: "images/libra.png"), UIImage(named: "images/scorpio.png"), UIImage(named: "images/sagittarius.png"), UIImage(named: "images/capricorn.png"), UIImage(named: "images/aquarius.png"), UIImage(named: "images/pisces.png")]
  var astrologicalSignAssignments = [Int]()
  
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
        super.viewDidLoad()
      tableView.dataSource = self
    
    // assign a random astrological sign at each name index without any 'magic numbers'
    let totalAstrolocialSignsAvailable = astrologicalSignImages.count
    
    for _ in lastNames {
      astrologicalSignAssignments.append(Int(arc4random_uniform(UInt32(totalAstrolocialSignsAvailable))))
    }
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "displayNameDetail" {
      
      //Get reference to where we are going
      if let destinationViewController = segue.destinationViewController as? NameDetailViewController {
      
      //identify which row a user clicks on
      let selectedIndexPath = tableView.indexPathForSelectedRow!
      let selectedRow = selectedIndexPath.row
      
      // identify name detail data for the row selected by user
      let selectedFirstName = firstNames[selectedRow]
      let selectedLastName = lastNames[selectedRow]
      let uniqueAstrologicalSign = astrologicalSignAssignments[selectedRow]

      // pass the above detail data to the destination VC
      destinationViewController.selectedFirstName = selectedFirstName
      destinationViewController.selectedLastName = selectedLastName
      destinationViewController.uniqueAstrologicalSign = astrologicalSignImages[uniqueAstrologicalSign]
      }
    }
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return lastNames.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    // Deque my cell (allow reuse)
    let cell = tableView.dequeueReusableCellWithIdentifier("personCell", forIndexPath: indexPath)

    // Configure cell value
    let fullName = firstNames[indexPath.row] + " " + lastNames[indexPath.row]
    cell.textLabel?.text = fullName
    
    // Return cell value
    return cell
  }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
}
// HOMEWORK 4 END