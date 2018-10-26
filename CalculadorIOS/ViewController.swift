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
    
    var calc = CalculadoraClass();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func NumeroClick(_ sender: Any) {
        
        //var res = calc.soma(a:10);
        
        ResultadoLabel.text = String(calc.soma(a:10));
    }
    

}

