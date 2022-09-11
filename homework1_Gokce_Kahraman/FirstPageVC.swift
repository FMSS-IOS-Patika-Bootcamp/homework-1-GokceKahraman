//
//  ViewController.swift
//  homework1_Gokce_Kahraman
//
//  Created by Gökçe Kahraman on 9.09.2022.
//

import UIKit

class FirstPageVC: UIViewController {

    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionFill(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension FirstPageVC: SecondViewControllerDelegate {
    func sendInformation(name: String, age: String, animal: String, city: String) {
        nicknameLabel.text = name
        ageLabel.text = age
        animalLabel.text = animal
        cityLabel.text = city
    }
}

