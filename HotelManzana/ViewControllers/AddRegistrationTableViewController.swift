//
//  AddRegistrationTableViewController.swift
//  HotelManzana
//
//  Created by Gordon Choi on 2021/05/18.
//

import UIKit

class AddRegistrationTableViewController: UITableViewController {
    
    @IBOutlet private var firstNameTextField: UITextField!
    @IBOutlet private var lastNameTextField: UITextField!
    @IBOutlet private var emailTextField: UITextField!
    
    @IBOutlet private var checkInDateLabel: UILabel!
    @IBOutlet private var checkInDatePicker: UIDatePicker!
    @IBOutlet private var checkOutDateLabel: UILabel!
    @IBOutlet private var checkOutDatePicker: UIDatePicker!
    
}

extension AddRegistrationTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let midnightToday = Calendar.current.startOfDay(for: Date())
        checkInDatePicker.minimumDate = midnightToday
        checkInDatePicker.date = midnightToday
        updateDateViews()
    }
}

/*
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
*/

extension AddRegistrationTableViewController {
    private func updateDateViews() {
        checkOutDatePicker.minimumDate = checkInDatePicker.date.addingTimeInterval(86400)
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        
        checkInDateLabel.text = dateFormatter.string(from: checkInDatePicker.date)
        checkOutDateLabel.text = dateFormatter.string(from: checkOutDatePicker.date)
    }
}

extension AddRegistrationTableViewController {
    @IBAction private func doneBarButtonTapped(_ sender: UIBarButtonItem) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        let checkInDate = checkInDatePicker.date
        let checkOutDate = checkOutDatePicker.date
        
        print("DONE TAPPED")
        print("First name: \(firstName)")
        print("Last name: \(lastName)")
        print("email: \(email)")
        print("Checkin: \(checkInDate)")
        print("Checkout: \(checkOutDate)")
    }
    
    @IBAction private func datePickerValueChanged(_ sender: UIDatePicker) {
        updateDateViews()
    }
}
