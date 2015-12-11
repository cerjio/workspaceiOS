//
//  TipoMasaController.swift
//  QuieroPizza
//
//  Created by cerjio on 08/12/15.
//  Copyright © 2015 cerjio. All rights reserved.
//

import UIKit

class TipoMasaController: UIViewController {

    @IBOutlet weak var tipoMasa: UISegmentedControl!
    @IBOutlet weak var tipoMasaImg: UIImageView!
    
    var tamañoSeleccionado : String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onChangeValue(sender: AnyObject) {
        
        
        switch(tipoMasa.selectedSegmentIndex) {
            
        case 0:
            let image = UIImage(named: "thin")
            tipoMasaImg.image = image
            break
            
        case 1:
            let image = UIImage(named: "crunchy")
            tipoMasaImg.image = image
            break
            
        case 2:
            let image = UIImage(named: "wide")
            tipoMasaImg.image = image
            break
            
        default:
            break
        }

        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVista = segue.destinationViewController as! TipoQuesoController
        sigVista.tamañoSeleccionado = tamañoSeleccionado
        
        if(tipoMasa.selectedSegmentIndex >= 0) {
            sigVista.tipoMasa = tipoMasa.titleForSegmentAtIndex(tipoMasa.selectedSegmentIndex)
            
        } else {
            
            sigVista.tipoMasa = nil
        }
        
        

        
    }
    

}
