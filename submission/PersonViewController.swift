import UIKit

class PersonViewController: UIViewController, UITableViewDataSource{

  @IBOutlet weak var tableView: UITableView!
  
  var personArray = [Person]()
  
  override func viewDidLoad() {
        super.viewDidLoad()
    
    tableView.dataSource = self
    
    // loop through pre-existing first & last name arrays to instantiate everyone using Person class
    let safeArrayLength = min(firstNames.count, lastNames.count)
    for var index = 0; index < safeArrayLength; ++index {
      let newPerson = Person(fName: firstNames[index], lName: lastNames[index])
      personArray.append(newPerson)
    }
        }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    
    tableView.reloadData()
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "displayNameDetail" {
      
      //Get reference to where we are going with *optional* down cast
      if let destinationViewController = segue.destinationViewController as? NameDetailViewController {
      
      //identify which row a user clicks on
      let selectedIndexPath = tableView.indexPathForSelectedRow!
      let selectedRow = selectedIndexPath.row
      
      // identify Person object for the selected row above
      let selectedPerson = personArray[selectedRow]
      
      // pass the above Person object & zodiac to the destination VC
      destinationViewController.selectedPerson = selectedPerson
      destinationViewController.zodiacSign = zodiacImages[selectedPerson.zodiacIndexAssignment]
      }
    }
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return personArray.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    // Deque my cell (allow reuse)
    let cell = tableView.dequeueReusableCellWithIdentifier("personCell", forIndexPath: indexPath) as! TableViewCell

    // Configure cell value
    let person = personArray[indexPath.row]
    
    cell.firstNameLabel.text = person.firstName
    cell.lastNameLabel.text = person.lastName
    cell.profilePhoto.image = zodiacImages[person.zodiacIndexAssignment]
    
    // Return cell value
    return cell

  }
  
  // boiler plate code to save to disk
  func saveToArchive() {
    if let documentPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last {
      
      NSKeyedArchiver.archiveRootObject(personArray, toFile: documentPath + "/archive")
    }
  }
  
  func loadFromArchive() -> [Person]? {
    if let documentPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last {
      
      if let people = NSKeyedUnarchiver.unarchiveObjectWithFile(documentPath + "/archive") as? [Person] {
        return people
      }
    }
    return nil
  }
  
}