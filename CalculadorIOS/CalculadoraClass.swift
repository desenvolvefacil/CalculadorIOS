//
//  CalculadoraClass.swift
//  CalculadorIOS
//
//  Created by pos on 25/10/2018.
//  Copyright © 2018 ifsp.org. All rights reserved.
//

import Foundation

class CalculadoraClass{
    var operando:Float;
    var operacao:Int;
    let RESULTADO = -1;
    let ADICAO = 0;
    let SUBTRACAO = 1;
    let MULTIPLICACAO = 2;
    let DIVISAO = 3;
    let RAIZ = 4;
    
    var valor:Float = 0;
    
    init() {
        operando = 0.0;
        operacao = RESULTADO;
    }
    
    func soma(a:Float) -> Float {
        return a + 1;
    }
    
    //reseta os valores da calculadora
    func reseta()->Void{
        operando = 0.0;
        operacao = RESULTADO;
    }
    
    func calcula(valor:Float, operacao:Int, fator:Float)->Float {
        self.valor = valor;
        
        if (self.operacao == RESULTADO) {
            self.operacao = operacao;
            operando = valor;
            return operando;
        }
    
        //se fator != espera-se que seja feito a operação com a % do valor anterior (operando)
        if(fator != 1) {
            //valor = operando * fator;
            self.valor = operando * fator;
        }
        
        
        switch self.operacao {
            case ADICAO:
                operando = operando + valor;
                break;
            
            case SUBTRACAO:
                operando = operando - valor;
                break;
            
            case MULTIPLICACAO:
                operando = operando * valor;
                break;
            
            case DIVISAO:
                operando = operando / valor;
                break;
            
            case RAIZ:
            //retorna a raiz do valor
                operando = sqrt(valor);
                break;
            
            default:
                break;
            
        }
 
        
        self.operacao = operacao;
        return operando;
    }
}
