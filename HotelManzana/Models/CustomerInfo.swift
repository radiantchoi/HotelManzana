//
//  CustomerInfo.swift
//  HotelManzana
//
//  Created by Gordon Choi on 2021/05/17.
//

import Foundation

struct Customer {
    var firstName: String
    var lastName: String
    var email: String
    
    var checkinDate: Date
    var checkoutDate: Date
    
    var numberOfAdults: Int
    var numberOfChildren: Int
    
    var roomType: RoomType
    var wifi: Bool
}

struct RoomType: Equatable {
    var id: Int
    var name: String
    var shortName: String
    var price: Int
    
    static func ==(lhs: RoomType, rhs: RoomType) -> Bool {
        return lhs.id == rhs.id
    }
}
