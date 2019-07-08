//
//  ContactsListViewController.swift
//  ContactsApp
//
//  Created by Rodwan Barbier on 2019/07/08.
//  Copyright © 2019 Rodwan Barbier. All rights reserved.
//

import UIKit

class ContactsListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        // Do any additional setup after loading the view.
        
        _ = store.state
            .distinctUntilChanged({ lhs, rhs in
                return lhs == rhs
            })
            .subscribe({ state in
                print(state)
            })
        
        // testing distinct stuff, that is why there are random ones
        store.dispatch(action: AddContactAction(name: "Roddy", email: "roddy@email.com"))
        store.dispatch(action: AddContactAction(name: "Poddy", email: "poddy@email.com"))
        store.dispatch(action: AddContactAction(name: "Charlie", email: "charlie@email.com"))
        store.dispatch(action: LoadContactsAction())
        store.dispatch(action: LoadContactsAction())
        store.dispatch(action: LoadContactsAction())
        store.dispatch(action: LoadContactsAction())
        store.dispatch(action: AddContactAction(name: "Ben", email: "ben@email.com"))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
