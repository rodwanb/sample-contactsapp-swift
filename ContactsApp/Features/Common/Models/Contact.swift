//
//  Contact.swift
//  ContactsApp
//
//  Created by Rodwan Barbier on 2019/07/08.
//  Copyright © 2019 Rodwan Barbier. All rights reserved.
//

import Foundation

struct Contact {
    var Name = ""
    var Email = ""
}

extension Contact : Equatable {
    static func == (lhs: Contact, rhs: Contact) -> Bool {
        return lhs.Name == rhs.Name &&
            lhs.Email == rhs.Email
    }
}
