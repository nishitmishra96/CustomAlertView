//
//  ViewController.swift
//  AlertView
//
//  Created by Himanshu Singh on 31/05/19.
//  Copyright © 2019 Himanshu Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let ok = UIAlertAction(title: "himanshu", style: .cancel) { (action) in
            print("action")
        }
        let dissmiss = UIAlertAction(title: "dsds", style: .destructive, handler: nil)
        showPickerController(tittle: "saasssaassa saasasasassaasasasasasasassaasassa", message: "saassaassaasas", withView: UIView(), actions: [ok,dissmiss])
    }
   

}



extension UIViewController{
    func showPickerController(tittle:String,message:String?,withView:UIView,actions:[UIAlertAction]) {
        let alertController = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
        alertController.view.addSubview(withView)
        withView.translatesAutoresizingMaskIntoConstraints = false
        withView.topAnchor.constraint(equalTo: alertController.view.topAnchor, constant: 45).isActive = true
        withView.rightAnchor.constraint(equalTo: alertController.view.rightAnchor, constant: -10).isActive = true
        withView.leftAnchor.constraint(equalTo: alertController.view.leftAnchor, constant: 10).isActive = true
        withView.heightAnchor.constraint(equalToConstant: 330).isActive = true
        alertController.view.translatesAutoresizingMaskIntoConstraints = false
        alertController.view.heightAnchor.constraint(equalToConstant: 430).isActive = true
        withView.backgroundColor = .green
        for action in actions{
            alertController.addAction(action)
        }
        self.present(alertController, animated: true, completion: nil)
    }
}
