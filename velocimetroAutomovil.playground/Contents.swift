
//: Playground - noun: Velocimetro de Automovil
// Roberto Carrasco

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self  = velocidadInicial
    }
    
}

class Auto {
    
    var velocidad : Velocidades
    
    init(){ // Inicialización del primer valor
        self.velocidad = Velocidades.Apagado           //Forma1
        //self.velocidad = Velocidades(rawValue: 0)!   //Forma2
        print ("0, Velocidad apagado")
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String){
        
        var velocidadImpresion : String = ""
        
        switch velocidad.rawValue {
            case 0 :
                self.velocidad = Velocidades.VelocidadBaja
                velocidadImpresion = "Velocidad baja"
            case 20 :
                self.velocidad = Velocidades.VelocidadMedia
                velocidadImpresion = "Velocidad media"
            case 50 :
                self.velocidad = Velocidades.VelocidadAlta
                velocidadImpresion = "Velocidad alta"
            case 120 :
                self.velocidad = Velocidades.VelocidadMedia
                velocidadImpresion = "Velocidad media"
            default:
                self.velocidad = Velocidades.Apagado
                velocidadImpresion = "Velocidad apagado"
        }
        return (velocidad.rawValue, velocidadImpresion)
    }
}

var coche : Auto = Auto()

for i in 1...20 {
    var salida = coche.cambioDeVelocidad()
    print("\(salida.actual), \(salida.velocidadEnCadena)")
}

