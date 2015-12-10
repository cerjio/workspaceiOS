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
    
    @IBOutlet weak var tamañoEtiqueta: UILabel!
    @IBOutlet weak var ingredientesEtiqueta: UILabel!
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
        }
        
        if(tipoMasa != nil) {
            masaEtiqueta.text! += tipoMasa!
        }
        
        
        if(tipoQueso != nil) {
            quesoEtiqueta.text! += tipoQueso!
        }
        
        if(ingredientes != nil) {
            
            ingredientesEtiqueta.text! += ingredientes!
            ingredientesEtiqueta.sizeToFit()
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
