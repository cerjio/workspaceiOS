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

    @IBOutlet weak var jamon: UIButton!
    var jamonDescripcion : String = ""
    
    
    @IBOutlet weak var pepperoni: UIButton!
    var pepperoniDescripcion : String = ""
    
    
    @IBOutlet weak var pavo: UIButton!
    var pavoDescripcion : String = ""
    
    
    @IBOutlet weak var salchicha: UIButton!
    var salchichaDescripcion : String = ""
    
    
    @IBOutlet weak var aceituna: UIButton!
    var aceitunaDescripcion : String = ""
    
    
    @IBOutlet weak var cebolla: UIButton!
    var cebollaDescripcion : String = ""
    
    
    @IBOutlet weak var pimiento: UIButton!
    var pimientoDescripcion : String = ""
    
    
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
    
    @IBAction func onClickJamon(sender: AnyObject) {

        var image = UIImage(named: "checked")
        
        if(jamon.imageView?.image == image) {

            image = UIImage(named: "unchecked")
            jamon.setImage(image, forState: .Normal)
            jamonDescripcion = ""
            
        } else {
            
            jamon.setImage(image, forState: .Normal)
            jamonDescripcion = "Jamón "
        }
        
    }
    
    @IBAction func onClickPepperoni(sender: AnyObject){
        
        var image = UIImage(named: "checked")
        
        if(pepperoni.imageView?.image == image) {
            
            image = UIImage(named: "unchecked")
            pepperoni.setImage(image, forState: .Normal)
            pepperoniDescripcion = ""
            
        } else {
            
            pepperoni.setImage(image, forState: .Normal)
            pepperoniDescripcion = "Pepperoni "
        }

    }
    
    
    @IBAction func onClickPavo(sender: AnyObject) {
        var image = UIImage(named: "checked")
        
        if(pavo.imageView?.image == image) {
            
            image = UIImage(named: "unchecked")
            pavo.setImage(image, forState: .Normal)
            pavoDescripcion = ""
            
        } else {
            
            pavo.setImage(image, forState: .Normal)
            pavoDescripcion = "Pavo "
        }

    }
    
    
    @IBAction func onClickSalchicha(sender: AnyObject){
        var image = UIImage(named: "checked")
        
        if(salchicha.imageView?.image == image) {
            
            image = UIImage(named: "unchecked")
            salchicha.setImage(image, forState: .Normal)
            salchichaDescripcion = ""
            
        } else {
            
            salchicha.setImage(image, forState: .Normal)
            salchichaDescripcion = "Salchicha "
        }

    }
    
    @IBAction func onClickAceituna(sender: AnyObject) {
        var image = UIImage(named: "checked")
        
        if(aceituna.imageView?.image == image) {
            
            image = UIImage(named: "unchecked")
            aceituna.setImage(image, forState: .Normal)
            aceitunaDescripcion = ""
            
        } else {
            
            aceituna.setImage(image, forState: .Normal)
            aceitunaDescripcion = "Aceituna "
        }

        
    }
    
    @IBAction func onClickCebolla(sender: AnyObject) {
        var image = UIImage(named: "checked")
        
        if(cebolla.imageView?.image == image) {
            
            image = UIImage(named: "unchecked")
            cebolla.setImage(image, forState: .Normal)
            cebollaDescripcion = ""
            
        } else {
            
            cebolla.setImage(image, forState: .Normal)
            cebollaDescripcion = "Cebolla "
        }
        
    }
    

    @IBAction func onClickPimiento(sender: AnyObject) {
        var image = UIImage(named: "checked")
        
        if(pimiento.imageView?.image == image) {
            
            image = UIImage(named: "unchecked")
            pimiento.setImage(image, forState: .Normal)
            pimientoDescripcion = ""
            
        } else {
            
            pimiento.setImage(image, forState: .Normal)
            pimientoDescripcion = "Pimiento "
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
