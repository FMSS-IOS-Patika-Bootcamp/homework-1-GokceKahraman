//
//  SecondViewController.swift
//  homework1_Gokce_Kahraman
//
//  Created by Gökçe Kahraman on 11.09.2022.
//

import UIKit

protocol SecondViewControllerDelegate: AnyObject {
    func sendInformation(name: String, age: String, animal: String, city: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var nickNameTxtField: UITextField!
    @IBOutlet weak var ageTxtField: UITextField!
    @IBOutlet weak var favAnimalTxtField: UITextField!
    @IBOutlet weak var favCityTextField: UITextField!
 
    weak var delegate: SecondViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func actionConfirm(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        delegate?.sendInformation(name: nickNameTxtField.text ?? "",
                                  age: ageTxtField.text ?? "",
                                  animal: favAnimalTxtField.text ?? "",
                                  city: favCityTextField.text ?? "")
    }

}
