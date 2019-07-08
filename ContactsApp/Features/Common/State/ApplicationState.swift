//
//  ApplicationState.swift
//  ContactsApp
//
//  Created by Rodwan Barbier on 2019/07/08.
//  Copyright © 2019 Rodwan Barbier. All rights reserved.
//

import Foundation

struct ApplicationState {
    let contactsListState: ContactsListState
    
    static func initial() -> ApplicationState {
        return ApplicationState(contactsListState: ContactsListState.initial())
    }
}
