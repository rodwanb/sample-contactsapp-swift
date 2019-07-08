//
//  ApplicationState.swift
//  ContactsApp
//
//  Created by Rodwan Barbier on 2019/07/08.
//  Copyright © 2019 Rodwan Barbier. All rights reserved.
//

import Foundation

struct ApplicationState : Equatable {
    
    let contactsListState: ContactsListState
    
    static func initial() -> ApplicationState {
        return ApplicationState(contactsListState: ContactsListState.initial())
    }

    static func == (lhs: ApplicationState, rhs: ApplicationState) -> Bool {
        return lhs.contactsListState == rhs.contactsListState
    }
}
