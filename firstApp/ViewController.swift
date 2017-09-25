//
//  ViewController.swift
//  firstApp
//
//  Created by Juan Antonio Perez Clemente on 25/9/17.
//  Copyright © 2017 Juan Antonio Perez Clemente. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: properties

    @IBOutlet weak var nombreLbl: UILabel!
    
    @IBOutlet weak var nombreTxt: UITextField!
    
    @IBOutlet weak var apellidoTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nombreTxt.delegate = self
        apellidoTxt.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    
    @IBAction func btnNuevo(_ sender: UIButton) {
        nombreLbl.text = "Hola desconocido"
        nombreTxt.text = ""
        apellidoTxt.text = ""
    }
    
    func getRandomColor() -> UIColor{
        
        let randomRed:CGFloat = CGFloat(drand48())
        
        let randomGreen:CGFloat = CGFloat(drand48())
        
        let randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
    @IBAction func btnColour(_ sender: UIButton) {
    
        
        self.view.backgroundColor = getRandomColor()
    }
    
    
    //MARK: UITextFIeldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if (nombreTxt.text != "" && apellidoTxt.text != "") {
            nombreLbl.text = "Hola " + nombreTxt.text! + " " + apellidoTxt.text!
        }
        
    }
    
}

