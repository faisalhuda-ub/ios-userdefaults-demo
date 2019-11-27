//
//  ViewController.swift
//  UserDefaults-Demo
//
//  Created by Fais Al Huda on 27/11/19.
//  Copyright © 2019 UB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // deklarasi outlet textfield untuk menerima input
    // dari user
    @IBOutlet weak var inputTextField: UITextField!
    
    // deklarasi outlet labet untuk menampilkan data
    // yang tersimpar di UserDefault
    @IBOutlet weak var outputLabel: UILabel!
    
    // deklarasi userdefault untuk menyimpan dan
    // menampilkan kembali data yang tersimpan
    // pada local storage
    let userDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        // mengecek apakah ada data dengan key name, jika ada
        // maka dimasukkan ke variabel name
        if let name = userDefaults.string(forKey: "name") {
            // variabel name dari proses sebelumnya ditampilkan
            // pada label UI
            outputLabel.text = name
        }
    }

    @IBAction func outputButtonPressed(_ sender: Any) {
        // Memeriksa apakah textfield telah diisi oleh pengguna
        if !inputTextField.text!.isEmpty {
            // menyimpan input pengguna dengan identitas key "name"
            userDefaults.set(inputTextField.text, forKey: "name")
        }
    }
}

