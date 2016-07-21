//
//  Datos.swift
//  Hamburguesas
//
//  Created by Roberto Carrasco on 21/7/16.
//  Copyright © 2016 robertocarrasco.es. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
 
    let paises : [String] = ["Alemania", "Albania", "España", "Portugal", "Italia", "Francia", "Suecia", "Suiza", "Noruega", "Reino Unido", "India", "China", "Japón", "Rumanía", "Hungría", "Bulgaria", "Rusia", "USA", "Holanda", "Austria", "Grecia"]
 
    func obtenPais() -> String {
       
        return paises[Int(arc4random()) % (paises.count)]
    }

}

class ColeccionDeHamburguesa {
    
    let hamburguesas : [String] = ["Simple", "Doble", "Triple", "Ibérica", "Noruega", "Británica", "Buenísima", "Gordos", "Light", "Ligera", "Finisima", "Arce", "Kobe", "Cantábrica", "Salmón", "Cheese", "Ham", "Brooklyn", "FastFood", "Stark", "Monster"]
    
    func obtenHamburguesa() -> String {
        
        return hamburguesas[Int(arc4random()) % hamburguesas.count]
    }
}

struct Colores {

    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                
                UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                
                UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
                
                UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
                
                UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                
                UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                
                UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                
                UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    func dameColor () -> UIColor {
    
         return colores[Int(arc4random()) % colores.count]
    }
    
}
