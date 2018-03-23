//
//  SecondVC.swift
//  DataPassing
//
//  Created by Lead on 23/03/18.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var textview_Desc: UITextView!
    
    var SecondVCType = 0
    var descText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if SecondVCType == 1 { //Type Programatically
            textview_Desc.text = descText
        }
        else if SecondVCType == 2 { //Type Segue
            textview_Desc.text = descText
        }
        else if SecondVCType == 3 { //Type UserDefault
            textview_Desc.text = UserDefaults.standard.value(forKey: "PASS_DATA") as! String
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
