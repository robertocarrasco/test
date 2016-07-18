//: Playground - noun: a place where people can play

import UIKit


/*
 
 Roberto Carrasco.
 
 Tienes que generar una serie de números de 100 números, del 0 al 100, tienes que incluir el 100. Y
 cada vez que imprimas ese número tienes que decidir cómo lo imprimes de acuerdo a las siguientes
 cuatro reglas. Si el número es divisible entre cinco, debes de imprimir el número y la palabra Bingo.
 Si el número es par, debes imprimir el número, más la palabra Par. Si el número es impar, debes
 imprimir el número y la palabra impar. Si el número se encuentra entre un rango de 30 a 40, vamos a
 imprimir el número, más la palabra Viva Swift.
 
 Al evaluar cada número debes aplicar las siguientes reglas:
 - Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!”
 - Si el número es par, imprime: # el número + “par!!!”
 - Si el número es impar, imprime: # el número + “impar!!!”
 - Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”
 
 
 */


for i in 1...100{
    
    if i%5==0 {
        print("# \(i) Bingo!!!");
    }
    else if i%2==0 {
        print("# \(i) par!!!");
    }
    else if i%2==1 {
        print("# \(i) impar!!!");
    }
    
    if i>=30 && i<=40 {
        print("# \(i) Viva Swift!!!");
    }
    
}