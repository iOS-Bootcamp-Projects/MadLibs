//
//  SecondeViewController.swift
//  MadLibs
//
//  Created by Aamer Essa on 20/11/2022.
//

import UIKit

class SecondeViewController: UIViewController {

    @IBOutlet weak var nounTextField: UITextField!
    @IBOutlet weak var verbTextField2: UITextField!
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var verbTextField: UITextField!
    
    public var handelText:((String?) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    
    @IBAction func onClickSubmit(_ sender: Any) {
        var text = "We are having a perfectly \(adjectiveTextField.text!) right now. Later we will \(verbTextField.text!) and \(verbTextField2.text!) in the \(nounTextField.text!)."
         handelText?(text)
        dismiss(animated: true)

      
        
        
        

    }

}
