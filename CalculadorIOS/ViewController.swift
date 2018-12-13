//
//  ViewController.swift
//  CalculadorIOS
//
//  Created by pos on 25/10/2018.
//  Copyright © 2018 ifsp.org. All rights reserved.
//

import UIKit

//extensão para arredondar os valores 0 após o ponto
extension Float {
    var clean: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var ResultadoLabel: UILabel!
    @IBOutlet weak var FundoLabel: UILabel!
    
    var concatenaLcd:Bool = false;
    //variavel multiplicadora de %
    var fator:Float = 1;
    
    var calc = CalculadoraClass();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.FundoLabel.layer.cornerRadius = 10;
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
    
    @IBAction func PontoClick(_ sender: UIButton) {
        
        if  ResultadoLabel.text!.contains("."){
            //nao faz nada
        }else{
            if(!concatenaLcd){
                ResultadoLabel.text="0";
            }
            
            ResultadoLabel.text?.append(".");
            concatenaLcd = true;
        }
        
        /*if (!lcd.getText().toString().contains(getString(R.string.ponto))) {
            if (!concatenaLcd) {
                lcd.setText(getString(R.string.zero));
            }
            lcd.append(getString(R.string.ponto));
            concatenaLcd = true;
        }*/
    }
    
    
    @IBAction func PercentagemClick(_ sender: UIButton) {
        if let valorAtual = Float(ResultadoLabel.text!){
            //define a % do fator para multiplicação do valor
            fator = valorAtual / 100;
            
            ResultadoLabel.text = String(calc.calcula(valor: valorAtual, operacao: calc.RESULTADO, fator: fator).clean);

            //ResultadoLabel.text = String(fator);
            
            fator = 1;
            
            
            concatenaLcd = false;
            
            
        }
    }
    
    @IBAction func SomaClick(_ sender: UIButton) {
        
        if let valorAtual = Float(ResultadoLabel.text!){
        
            ResultadoLabel.text = String(calc.calcula(valor: valorAtual, operacao: calc.ADICAO, fator: fator).clean);
            
            concatenaLcd = false;
            
            fator = 1;
        }
    }
    
    
    @IBAction func SubtracaoClick(_ sender: UIButton) {
        if let valorAtual = Float(ResultadoLabel.text!){
            
            ResultadoLabel.text = String(calc.calcula(valor: valorAtual, operacao: calc.SUBTRACAO, fator: fator).clean);
            
            concatenaLcd = false;
            
            fator = 1;
        }
    }
    
    
    @IBAction func MultiplicacaoClick(_ sender: UIButton) {
        
        if let valorAtual = Float(ResultadoLabel.text!){
            
            ResultadoLabel.text = String(calc.calcula(valor: valorAtual, operacao: calc.MULTIPLICACAO, fator: fator).clean);
            concatenaLcd = false;
         
            fator = 1;
        }
        
    }
    
    
    @IBAction func DivisaoClick(_ sender: UIButton) {
        
        if let valorAtual = Float(ResultadoLabel.text!){
            
            ResultadoLabel.text = String(calc.calcula(valor: valorAtual, operacao: calc.DIVISAO, fator: fator).clean);
            concatenaLcd = false;
            
            fator = 1;
        }
        
    }
    
    @IBAction func ResultadoClick(_ sender: UIButton) {
        
        if let valorAtual = Float(ResultadoLabel.text!){
            
            ResultadoLabel.text = String(calc.calcula(valor: valorAtual, operacao: calc.RESULTADO, fator: fator).clean);
            
            concatenaLcd = false;
            
            fator = 1;
        }
        
        
    }
    
    @IBAction func RaizClick(_ sender: UIButton) {

        if let valorAtual = Float(ResultadoLabel.text!){
    
            ResultadoLabel.text = String(calc.calcula(valor: valorAtual, operacao: calc.RAIZ, fator: fator));
            
            ResultadoLabel.text = String(calc.calcula(valor: valorAtual, operacao: calc.RESULTADO, fator: fator).clean)
            
 
            concatenaLcd = false;
            
            fator = 1;
        }
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

