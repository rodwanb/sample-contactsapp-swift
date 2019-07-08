//
//  ContactsListState.swift
//  ContactsApp
//
//  Created by Rodwan Barbier on 2019/07/08.
//  Copyright © 2019 Rodwan Barbier. All rights reserved.
//

import Foundation

struct ContactsListState {
    let contacts: [Contact]
    
    static func initial() -> ContactsListState {
        return ContactsListState(contacts: [])
    }
}
