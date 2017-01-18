//
//  ViewController.swift
//  $125 Million App
//
//  Created by John Gallaugher on 1/16/17.
//  Copyright © 2017 Gallaugher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Executes if the user clicks on the "Convert" button
    @IBAction func convertButtonPressed(_ sender: UIButton) {
        // The .text property of a UITextField is always an optional.  We've created the text field and it's been displayed on screen so we can force unwrap it with "!" and have the confidence that it won't ever be nil.
        // If we can take the text from the userInput UITextField and convert it into a Double then create a constant miles that is a Double...
        if let miles = Double(userInput.text!) {
            // ... and multiply miles by 1.6, assigning this value to the new constant named km
            let km = miles * 1.6
            // Assign the string below to the resultsLabel's .text property.  The \() with a value inside is String interpolation - it'll convert anything into a String.
            resultsLabel.text = "\(miles) miles = \(km) kilometers"
        } else {
            // otherwise, if the userInput.text couldn't be converted to a Double and we have a nil, instead, set the resultsLabel.text to the empty string so it shows up blank, with no result.
            resultsLabel.text = ""
            
            // perform the four-step process to create an alert, create an action, assign an action to the alert, and preset the alert.
            let alertController = UIAlertController(title: "Entry Error", message: "Please enter a valid number. Not an empty string, no commas, symbols, or non-numeric characters", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
        }
    }
}

