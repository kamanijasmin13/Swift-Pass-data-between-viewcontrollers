//
//  FirstVC.swift
//  DataPassing
//
//  Created by Lead on 23/03/18.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var textview_Desc: UITextView!
    
    var FirstVCType = 0
    var descText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Swift Pass data between viewcontrollers
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //Passing Data With Programatically
    @IBAction func btn_Pass_Programatically(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        vc.SecondVCType = 1
        vc.descText = textview_Desc.text
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    //Passing Data With UserDefault
    @IBAction func btn_Pass_With_UserDefault(_ sender: Any) {
        UserDefaults.standard.set(textview_Desc.text, forKey: "PASS_DATA")
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        vc.SecondVCType = 3
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    //Passing Data With Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondVC
        vc.SecondVCType = 2
        vc.descText = textview_Desc.text
    }
    
}
