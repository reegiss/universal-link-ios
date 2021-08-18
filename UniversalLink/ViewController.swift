//
//  ViewController.swift
//  UniversalLink
//
//  Created by hexacta do Brasil on 18/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var urlUniversal: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openLink(_ sender: Any) {
        
        
        
        guard let url = URL(string: urlUniversal.text ?? "https://www.modal.com.br/") else {
            return //be safe
        }
        
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url) { success in
                if success {
                    print("The URL was delivered successfully.")
                } else {
                    print("The URL failed to open.")
                }
            }
        }
    }
    
}

