//
//  ViewController.swift
//  HataMesajıHk
//
//  Created by KAAN YİĞİT on 2.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtID: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var txtRePass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnRegister(_ sender: Any) {
        if txtID.text == ""{
            sonuc(title: "Error!", message: "Hatalı giriş!")
        }else if txtPass.text == ""{
            sonuc(title: "Error!", message: "Hatalı giriş!")
            
        }else if txtRePass.text == ""{
            sonuc(title: "Error!", message: "Hatalı giriş!")
        }else if txtPass.text != txtRePass.text {
            sonuc(title: "Error!", message: "Hatalı giriş!")
        }else {
            sonuc(title: "Success", message: "Başarılı")
        }
        
        func sonuc (title : String, message : String) {
            let Alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.actionSheet)
            let AlertButton = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default, handler: nil)
            Alert.addAction(AlertButton)
            present(Alert, animated: true, completion: nil)
        }
        
        
    }
    
    
    
    
}

