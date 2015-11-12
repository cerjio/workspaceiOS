/* Playground - noun: a place where people can play
 * @author cerjio
 *
 */

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial;
    }
}

class Auto {
    
    var velocidad : Velocidades? = nil

    
    init(){
    
        velocidad = Velocidades(velocidadInicial: .Apagado)
        
    }
    
    func cambiarVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        
        var velocidadDescripcion : String?
        
        switch self.velocidad! {
        case .Apagado:
                self.velocidad = Velocidades.VelocidadBaja
                velocidadDescripcion = "Velocidad Baja"
            
        case .VelocidadBaja:
                self.velocidad = Velocidades.VelocidadMedia
                velocidadDescripcion = "Velocidad Media"
            
        case .VelocidadMedia:
                self.velocidad = Velocidades.VelocidadAlta
                velocidadDescripcion = "Velocidad Alta"
            
            
        case .VelocidadAlta:
            
            /* Las instrucciones son confusas, se indica que al llegar a la velocidad alta
             * se debe cambiar a velocidad media, pero en el ejemplo de salidas de consola
             * cuando se llega a la velocidad alta se cambia a apagado si es asi el codigo sería:
             *
             * self.velocidad = Velocidades.Apagado
             * velocidadDescripcion = "Apagado"
             */
            self.velocidad = Velocidades.VelocidadMedia
            velocidadDescripcion = "Velocidad Media"
            
        }
        
        return ((self.velocidad?.rawValue)!, velocidadDescripcion!)
    }
    
}

var auto = Auto()

print(auto.velocidad)

for i in 1...20 {
  
    print(auto.cambiarVelocidad())
 
}

