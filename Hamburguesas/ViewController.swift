//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Roberto Carrasco on 21/7/16.
//  Copyright © 2016 robertocarrasco.es. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var clasePaises = ColeccionDePaises()
    var claseHamburguesas = ColeccionDeHamburguesa()
    var colores = Colores()
    
    @IBOutlet weak var UILabelPais: UILabel!
    
    @IBOutlet weak var UILabelHamburguesa: UILabel!

    
    @IBAction func presionoBoton() {
        UILabelPais.text = clasePaises.obtenPais()
        UILabelHamburguesa.text = claseHamburguesas.obtenHamburguesa()
        view.backgroundColor = colores.dameColor()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

