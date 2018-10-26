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
    /*public static final int ADICAO = 0;
    public static final int SUBTRACAO = 1;
    public static final int MULTIPLICACAO = 2;
    public static final int DIVISAO = 3;
    public static  final int RAIZ =4;*/
    
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
}
