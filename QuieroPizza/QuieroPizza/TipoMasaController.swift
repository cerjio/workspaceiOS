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
    
    var tamañoSeleccionado : String? = nil
    
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
         print(tamañoSeleccionado!);
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
