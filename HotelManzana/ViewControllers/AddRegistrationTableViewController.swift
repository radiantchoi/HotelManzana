//
//  AddRegistrationTableViewController.swift
//  HotelManzana
//
//  Created by Gordon Choi on 2021/05/18.
//

import UIKit

class AddRegistrationTableViewController: UITableViewController {
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!

}

extension AddRegistrationTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension AddRegistrationTableViewController {
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

}

extension AddRegistrationTableViewController {
    @IBAction func doneBarButtonTapped(_ sender: UIBarButtonItem) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        
        print("DONE TAPPED")
        print("First name: \(firstName)")
        print("Last name: \(lastName)")
        print("email: \(email)")
    }
}
