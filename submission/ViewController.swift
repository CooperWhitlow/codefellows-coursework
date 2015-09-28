import UIKit

class ViewController: UIViewController {
 
// HOMEWORK 2 START
  var leftCounter = 0
  var rightCounter = 0

  @IBOutlet weak var leftLabel: UILabel!
  @IBOutlet weak var rightLabel: UILabel!
  
  @IBAction func leftButton(sender: AnyObject) {
    leftCounter++
    if leftCounter > 10 {
      leftCounter = 0
    }
    leftLabel.text = "\(leftCounter)"
  }

  @IBAction func rightButton(sender: AnyObject) {
    rightCounter++
    if rightCounter > 10 {
      rightCounter = 0
    }
    rightLabel.text = "\(rightCounter)"
  }
// HOMEWORK 2 END
  
// HOMEWORK 3 START
  var leftArray = [0, 1, 2, 3, 4, 5]
  var leftArrayPosition = 0
  
  var rightArray = [100, 101, 102, 103, 104, 105]
  var rightArrayPosition = 0
  
  @IBOutlet weak var leftBottomLabel: UILabel!
  @IBOutlet weak var rightBottomLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    leftBottomLabel.text = "\(leftArray[leftArrayPosition])"
    rightBottomLabel.text = "\(rightArray[rightArrayPosition])"
  }
  
  @IBAction func leftBottomButton(sender: AnyObject) {
    leftArrayPosition++
    if leftArrayPosition >= leftArray.count {
      leftArrayPosition = 0
    }
    leftBottomLabel.text = "\(leftArray[leftArrayPosition])"
  }
  @IBAction func rightBottomButton(sender: AnyObject) {
    rightArrayPosition++
    if rightArrayPosition >= rightArray.count {
      rightArrayPosition = 0
    }
    rightBottomLabel.text = "\(rightArray[rightArrayPosition])"
  }
// HOMEWORK 3 END
}

