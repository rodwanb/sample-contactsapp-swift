//
//  AddContactAction.swift
//  ContactsApp
//
//  Created by Rodwan Barbier on 2019/07/08.
//  Copyright © 2019 Rodwan Barbier. All rights reserved.
//

import Foundation

class AddContactAction : Action {
    let name: String!
    let email: String!
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
}

class LoadContactsAction: Action {
    
}
