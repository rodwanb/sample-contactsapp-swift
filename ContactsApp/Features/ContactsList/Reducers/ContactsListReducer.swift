//
//  ContactsListReducer.swift
//  ContactsApp
//
//  Created by Rodwan Barbier on 2019/07/08.
//  Copyright © 2019 Rodwan Barbier. All rights reserved.
//

import Foundation

class ContactsListReducer {
    static func reduce(state: ContactsListState, action: Action) -> ContactsListState {
        return ContactsListState(
            contacts: reduceContactsList(state: state.contacts, action: action))
    }
    
    private static func reduceContactsList(state: [Contact], action: Action) -> [Contact] {
        switch action {
        case let addContact as AddContactAction:
            return state + [Contact(Name: addContact.name, Email: addContact.email)]
        default:
            return state
        }
    }
}
