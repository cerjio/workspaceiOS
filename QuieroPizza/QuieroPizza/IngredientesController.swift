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
            print(tamañoSeleccionado!)
        }
        
        if(tipoMasa != nil) {
            print(tipoMasa!)
        }
        
        if(tipoQueso != nil) {
            print(tipoQueso!)
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
