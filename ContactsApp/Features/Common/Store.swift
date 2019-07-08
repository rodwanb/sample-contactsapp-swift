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
    
    private let actionSubject: PublishSubject<Action>
    private let stateSubject: BehaviorSubject<ApplicationState>
    
    var state: Observable<ApplicationState> {
        get {
            return stateSubject.asObserver()
        }
    }
    
    init() {
        self.actionSubject = PublishSubject<Action>()
        self.stateSubject = BehaviorSubject<ApplicationState>(value: ApplicationState.initial())
        
        _ = self.actionSubject
            .subscribe({ action in
                let state = ApplicationReducer.reduce(
                    state: self.getState(),
                    action: action.element!)
                self.stateSubject.onNext(state)
            })
    }
    
    func dispatch(action: Action) {
        actionSubject.onNext(action)
    }
    
    func getState() -> ApplicationState {
        do {
            return try stateSubject.value()
        } catch {
            return ApplicationState.initial()
        }
    }
}
