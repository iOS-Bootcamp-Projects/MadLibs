//
//  ViewController.swift
//  MadLibs
//
//  Created by Aamer Essa on 20/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var labelText = "..."
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labelText 
    }
    
  @IBAction func goToSecondeView(){
        let storybord = UIStoryboard(name: "Main", bundle: nil)
       let secondeView = storybord.instantiateViewController(withIdentifier: "SecondeView") as! SecondeViewController 
       
       secondeView.modalPresentationStyle = .fullScreen
      secondeView.handelText = {text in self.label.text = text}
       present(secondeView, animated: true)
    }
    

}

