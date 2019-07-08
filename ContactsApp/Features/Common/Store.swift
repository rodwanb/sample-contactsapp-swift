//
//  Store.swift
//  ContactsApp
//
//  Created by Rodwan Barbier on 2019/07/08.
//  Copyright © 2019 Rodwan Barbier. All rights reserved.
//

import Foundation
import RxSwift

class Store {
    
    let actionSubject: PublishSubject<Action>
    let stateSubject: BehaviorSubject<ApplicationState>
    
    init() {
        self.actionSubject = PublishSubject<Action>()
        self.stateSubject = BehaviorSubject<ApplicationState>(value: ApplicationState.initial())
    }
}
