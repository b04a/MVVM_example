//
//  ViewController.swift
//  MVVM_example
//
//  Created by Danil Bochkarev on 30.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginF: UITextField!
    @IBOutlet weak var passwordF: UITextField!
    

    @IBAction func loginButton(_ sender: Any) {
        viewModel.userButtonPressed(login: loginF.text ?? "", password: passwordF.text ?? "")
    }
    
    @IBOutlet weak var label: UILabel!
    
    
    var viewModel = ViewModel()
    
    func initialState() {
        label.textColor = .white
        label.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }

    func bindViewModel() {
        viewModel.statusText.bind { statusText in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        }
        
        viewModel.statusColor.bind { statusColor in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        }
    }
}

