//
//  RegistrationTableViewController.swift
//  HotelManzana
//
//  Created by Gordon Choi on 2021/05/22.
//

import UIKit

class RegistrationTableViewController: UITableViewController {

    var registrations: [Customer] = []
    
}

extension RegistrationTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension RegistrationTableViewController {
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return registrations.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RegistrationCell", for: indexPath)
        
        let registration = registrations[indexPath.row]
        
        let dateFormatter  = DateFormatter()
        dateFormatter.dateStyle = .short
        
        cell.textLabel?.text = registration.firstName + " " + registration.lastName
        cell.detailTextLabel?.text = dateFormatter.string(from: registration.checkInDate) + " - " + dateFormatter.string(from: registration.checkOutDate) + ": " + registration.roomType.name
        
        return cell
    }
    
}

extension RegistrationTableViewController {
    
    @IBAction func unwindFromAddRegistration(unwindSegue: UIStoryboardSegue) {
        guard let addRegistragionTableViewController = unwindSegue.source as? AddRegistrationTableViewController,
              let registration = addRegistragionTableViewController.registration else { return }
        
        registrations.append(registration)
        tableView.reloadData()
    }
}
