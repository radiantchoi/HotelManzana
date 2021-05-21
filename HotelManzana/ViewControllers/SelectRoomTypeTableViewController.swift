//
//  SelectRoomTypeTableViewController.swift
//  HotelManzana
//
//  Created by Gordon Choi on 2021/05/21.
//

import UIKit

class SelectRoomTypeTableViewController: UITableViewController {

    var roomType: RoomType?
    
    weak var delegate: SelectRoomTypeTableViewControllerDelegate?
}

extension SelectRoomTypeTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension SelectRoomTypeTableViewController {
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RoomType.all.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomTypeCell", for: indexPath)
        let roomType = RoomType.all[indexPath.row]
        if roomType == self.roomType {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        cell.textLabel?.text = roomType.name
        cell.detailTextLabel?.text = "$ \(roomType.price)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        roomType = RoomType.all[indexPath.row]
        delegate?.didSelect(roomType: roomType!)
        tableView.reloadData()
    }
}

protocol SelectRoomTypeTableViewControllerDelegate: class {
    func didSelect(roomType: RoomType)
}
