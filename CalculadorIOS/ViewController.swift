//
//  ViewController.swift
//  CalculadorIOS
//
//  Created by pos on 25/10/2018.
//  Copyright © 2018 ifsp.org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ResultadoLabel: UILabel!
    
    var concatenaLcd:Bool = false;
    //variavel multiplicadora de %
    var fator:Float = 1;
    
    var calc = CalculadoraClass();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func NumeroClick(_ sender: UIButton) {
        
        if (!concatenaLcd) {
            ResultadoLabel.text = "";
        }
        
        ResultadoLabel.text = ResultadoLabel.text!+sender.currentTitle!;
        
        //lcd.append(String.valueOf(botao.getText().toString()));
        concatenaLcd = true;
    }
    
    
    @IBAction func CeClick(_ sender: UIButton) {
        ResultadoLabel.text = "0";
        concatenaLcd = false;
    }
    

    @IBAction func CClick(_ sender: UIButton) {
        calc.reseta();
        ResultadoLabel.text = "0";
        concatenaLcd = false;
    }
}

