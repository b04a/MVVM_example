//
//  ViewModel.swift
//  MVVM_example
//
//  Created by Danil Bochkarev on 30.11.2022.
//

import Foundation
import UIKit.UIColor

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(UIColor.white)
    
    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Log in failed."
            statusColor.value = .red
        } else {
            statusText.value = "You successfully login in."
            statusColor.value = .green
        }
    }
}
