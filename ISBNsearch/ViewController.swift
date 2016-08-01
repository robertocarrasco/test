//
//  ViewController.swift
//  ISBNsearch
//
//  Created by Roberto Carrasco on 29/7/16.
//  Copyright © 2016 robertocarrasco.es. All rights reserved.
//

import UIKit
import SystemConfiguration


class ViewController: UIViewController {
    
    @IBOutlet weak var codigoISBN: UITextField!
    var respuestaServidor : String = ""
    var tituloJSON : String = ""
    var autoresJSON : String = ""
    var portadaJSON : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVista = segue.destinationViewController as! vistaResultados
        busquedaSincrona()
        sigVista.respuesta = respuestaServidor
        sigVista.tituloRespuesta = tituloJSON
        sigVista.autoresRespuesta = autoresJSON
        sigVista.portadaRespuesta = portadaJSON
        
    }
    
    func connectedToNetwork() -> Bool {
        
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(sizeofValue(zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        guard let defaultRouteReachability = withUnsafePointer(&zeroAddress, {
            SCNetworkReachabilityCreateWithAddress(nil, UnsafePointer($0))
        }) else {
            return false
        }
        
        var flags : SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {
            return false
        }
        
        //let isReachable = flags.contains(.Reachable)
        //let needsConnection = flags.contains(.ConnectionRequired)
        
        // For Swift 3, replace the last two lines by
        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)
        
        
        return (isReachable && !needsConnection)
    }
    
    func busquedaSincrona(){
        
        //Comprobamos si hay conexion a Internet. Función extraida de:
        //http://stackoverflow.com/questions/25623272/how-to-use-scnetworkreachability-in-swift/25623647#25623647
        
        let estadoInternet = connectedToNetwork()
        
        if (estadoInternet == false){
            respuestaServidor = "Problemas con el servidor"
        }
        else {
            //var urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:978-84-376-0494-7"
            var urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"
            urls += String(codigoISBN.text!)
            let url = NSURL(string: urls)
            let datos:NSData? = NSData(contentsOf: url! as URL)
            let texto = NSString(data:datos! as Data, encoding: String.Encoding.utf8.rawValue)
            respuestaServidor = texto! as String
            
            do {
                
                let json = try JSONSerialization.jsonObject(with: datos! as Data, options: JSONSerialization.ReadingOptions.mutableLeaves)
                let dico1 = json as! NSDictionary
                let dico2 = dico1["ISBN:9788437604947"] as! NSDictionary
                self.tituloJSON = dico2["title"] as! NSString as String
                let dico3 = dico2["authors"] as! NSArray
                self.autoresJSON = dico3[0]["name"] as! NSString as String
                //No existe portada.
                self.portadaJSON = "No existe el tag"
            } catch _ {
                print ("Error")
            }
 
        }
    }

}

