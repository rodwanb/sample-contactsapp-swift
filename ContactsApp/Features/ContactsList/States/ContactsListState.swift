//
//  ContactsListState.swift
//  ContactsApp
//
//  Created by Rodwan Barbier on 2019/07/08.
//  Copyright © 2019 Rodwan Barbier. All rights reserved.
//

import Foundation

struct ContactsListState : Equatable {
    let contacts: [Contact]
    
    static func initial() -> ContactsListState {
        return ContactsListState(contacts: [])
    }
    
    static func == (lhs: ContactsListState, rhs: ContactsListState) -> Bool {
        return lhs.contacts.elementsEqual(rhs.contacts)
    }
}
