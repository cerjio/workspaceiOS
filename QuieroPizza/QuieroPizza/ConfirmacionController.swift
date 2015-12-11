//
//  ConfirmacionController.swift
//  QuieroPizza
//
//  Created by cerjio on 10/12/15.
//  Copyright © 2015 cerjio. All rights reserved.
//

import UIKit

class ConfirmacionController: UIViewController {
    
    var tamañoSeleccionado : String? = nil
    var tipoMasa : String? = nil
    var tipoQueso : String? = nil
    var ingredientes : String? = nil
    var faltantes: [String] = []
    
    @IBOutlet weak var tamañoEtiqueta: UILabel!
    @IBOutlet weak var ingredientesEtiqueta: UILabel!
    @IBOutlet weak var ingredientesValores: UILabel!
    @IBOutlet weak var quesoEtiqueta: UILabel!
    @IBOutlet weak var masaEtiqueta: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        if(tamañoSeleccionado != nil) {
            tamañoEtiqueta.text! += tamañoSeleccionado!
        } else {
            faltantes.append(tamañoEtiqueta.text!.stringByReplacingOccurrencesOfString(":", withString: ""))
        }
        
        if(tipoMasa != nil) {
            masaEtiqueta.text! += tipoMasa!
        } else {
            faltantes.append(masaEtiqueta.text!.stringByReplacingOccurrencesOfString(":", withString: ""))
        }
        
        
        if(tipoQueso != nil) {
            quesoEtiqueta.text! += tipoQueso!
        } else {
            faltantes.append( quesoEtiqueta.text!.stringByReplacingOccurrencesOfString(":", withString: ""))
        }
        
        if(ingredientes != nil) {
            
            ingredientesValores.text! += ingredientes!
            ingredientesValores.sizeToFit()
        } else {
            faltantes.append(ingredientesEtiqueta.text!.stringByReplacingOccurrencesOfString(":", withString: ""))
        }
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        
        if(faltantes.count > 0) {
            
            let alertController = UIAlertController(title: "Hey, te hace falta seleccionar:", message: faltantes.joinWithSeparator(","), preferredStyle: .Alert)
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(defaultAction)
            
            self.presentViewController(alertController, animated: true, completion: nil)
            
            return false
        } else {
            
            return true
        }

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
