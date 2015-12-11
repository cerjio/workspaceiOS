//
//  TipoQuesoController.swift
//  QuieroPizza
//
//  Created by cerjio on 09/12/15.
//  Copyright © 2015 cerjio. All rights reserved.
//

import UIKit

class TipoQuesoController: UIViewController {
    
    var tamañoSeleccionado : String? = nil
    var tipoMasa : String? = nil
    
    @IBOutlet weak var tipoQueso: UISegmentedControl!
    
    @IBOutlet weak var quesoImg: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onChangeValue(sender: AnyObject) {
        
        
        switch(tipoQueso.selectedSegmentIndex) {
            
        case 0:
            let image = UIImage(named: "cheese1")
            quesoImg.image = image
            break
            
        case 1:
            let image = UIImage(named: "cheese2")
            quesoImg.image = image
            break
            
        case 2:
            let image = UIImage(named: "cheese3")
            quesoImg.image = image
            break
        case 3:
            let image = UIImage(named: "nocheese")
            quesoImg.image = image
            break

            
        default:
            break
        }

    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        let sigVista = segue.destinationViewController as! IngredientesController
        sigVista.tamañoSeleccionado = tamañoSeleccionado
        sigVista.tipoMasa = tipoMasa

        
        if(tipoQueso.selectedSegmentIndex >= 0) {
           sigVista.tipoQueso = tipoQueso.titleForSegmentAtIndex(tipoQueso.selectedSegmentIndex)
        } else {
            sigVista.tipoQueso = nil
        }
        
    }


}
