//
//  IngredientesController.swift
//  QuieroPizza
//
//  Created by cerjio on 09/12/15.
//  Copyright © 2015 cerjio. All rights reserved.
//

import UIKit

class IngredientesController: UIViewController {
    
    var tamañoSeleccionado : String? = nil
    var tipoMasa : String? = nil
    var tipoQueso: String? = nil
    var ingredientes : [String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    @IBAction func onClickIngrediente(sender: AnyObject) {
        
        var image = UIImage(named: "checked")
        
        let boton = sender as! UIButton
        
        
        if(boton.imageView?.image == image) {
            
            image = UIImage(named: "unchecked")
            boton.setImage(image, forState: .Normal)
            ingredientes = ingredientes.filter{$0 != boton.currentTitle!}
            
            
        } else {
            
            boton.setImage(image, forState: .Normal)
            ingredientes.append(boton.currentTitle!)
        }

        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVista = segue.destinationViewController as! ConfirmacionController
        
        sigVista.tamañoSeleccionado = tamañoSeleccionado
        sigVista.tipoMasa = tipoMasa
        sigVista.tipoQueso = tipoQueso
        
        if(ingredientes.count > 0) {
            sigVista.ingredientes = ingredientes.joinWithSeparator(",")
            
        } else {
            sigVista.ingredientes = nil
        }

       
    }
    

}
