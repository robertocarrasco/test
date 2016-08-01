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
    var tituloRespuesta : String = ""
    var autoresRespuesta : String = ""
    var portadaRespuesta : String = ""
    
    @IBOutlet weak var resultadoConsulta: UITextView!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var autores: UILabel!
    @IBOutlet weak var portada: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        
        resultadoConsulta.text = respuesta
        titulo.text = "Título: " + tituloRespuesta
        autores.text = "Autores: " + autoresRespuesta
        portada.text = "Portada: " + portadaRespuesta
    }
    
}
