//
//  vistaResultados.swift
//  ISBNsearch
//
//  Created by Roberto Carrasco on 29/7/16.
//  Copyright © 2016 robertocarrasco.es. All rights reserved.
//

import UIKit

class vistaResultados: UIViewController {
    
    var respuesta : String = "" 
    @IBOutlet weak var resultadoConsulta: UITextView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        resultadoConsulta.text = respuesta
    }
    
}
