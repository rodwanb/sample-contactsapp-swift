//
//  ApplicationReducer.swift
//  ContactsApp
//
//  Created by Rodwan Barbier on 2019/07/08.
//  Copyright © 2019 Rodwan Barbier. All rights reserved.
//

import Foundation

class ApplicationReducer {
    static func reduce(state: ApplicationState, action: Action) -> ApplicationState {
        return ApplicationState(
            contactsListState: ContactsListReducer.reduce(
                state: state.contactsListState,
                action: action))
    }
}
