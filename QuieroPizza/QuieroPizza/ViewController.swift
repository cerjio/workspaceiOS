//
//  ViewController.swift
//  QuieroPizza
//
//  Created by cerjio on 06/12/15.
//  Copyright © 2015 cerjio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tamaño: UISegmentedControl!
    
    @IBOutlet weak var pizzaImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onChangeValue(sender: AnyObject) {
        
        switch(tamaño.selectedSegmentIndex) {
            
        case 0:
            let image = UIImage(named: "pizza")
            pizzaImg.image = image
            break
            
        case 1:
            let image = UIImage(named: "pizzaMed")
            pizzaImg.image = image
            break
            
        case 2:
            let image = UIImage(named: "pizzaGrande")
            pizzaImg.image = image
            break
            
        default:
            break
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVista = segue.destinationViewController as! TipoMasaController
        
        if(tamaño.selectedSegmentIndex >= 0) {
            sigVista.tamañoSeleccionado = tamaño.titleForSegmentAtIndex(tamaño.selectedSegmentIndex)
        } else {
            sigVista.tamañoSeleccionado = nil
        }
    }


}

