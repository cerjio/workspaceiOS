//: Playground - noun: a place where people can play

import UIKit

class ColeccionDePaises {
    let paises : [String] = ["Afganistán","Albania","Alemania","Andorra","Angola","Antigua y Barbuda","Arabia Saudita","Argelia","Argentina","Armenia","Australia","Austria","Azerbaiyán","Bahamas","Bangladés","Barbados","Baréin","Bélgica","Belice","Benín","Bielorrusia","Birmania","Bolivia","Bosnia y Herzegovina","Botsuana","Brasil","Brunéi","Bulgaria","Burkina Faso","Burundi","Bután","Cabo Verde","Camboya","Camerún","Canadá","Catar","Chad","Chile","China","Chipre","Ciudad del Vaticano","Colombia","Comoras","Corea del Norte","Corea del Sur","Costa de Marfil","Costa Rica","Croacia","Cuba","Dinamarca","Dominica","Ecuador","Egipto","El Salvador","Emiratos Árabes Unidos","Eritrea","Eslovaquia","Eslovenia","España","Estados Unidos","Estonia","Etiopía","Filipinas","Finlandia","Fiyi","Francia","Gabón","Gambia","Georgia","Ghana","Granada","Grecia","Guatemala","Guyana","Guinea","Guinea ecuatorial","Guinea-Bisáu","Haití","Honduras","Hungría","India","Indonesia","Irak","Irán","Irlanda","Islandia","Islas Marshall","Islas Salomón","Israel","Italia","Jamaica","Japón","Jordania","Kazajistán","Kenia","Kirguistán","Kiribati","Kuwait","Laos","Lesoto","Letonia","Líbano","Liberia","Libia","Liechtenstein","Lituania","Luxemburgo","Madagascar","Malasia","Malaui","Maldivas","Malí","Malta","Marruecos","Mauricio","Mauritania","México","Micronesia","Moldavia","Mónaco","Mongolia","Montenegro","Mozambique","Namibia","Nauru","Nepal","Nicaragua","Níger","Nigeria","Noruega","Nueva Zelanda","Omán","Países Bajos","Pakistán","Palaos","Panamá","Papúa Nueva Guinea","Paraguay","Perú","Polonia","Portugal","Reino Unido","República Centroafricana","República Checa","República de Macedonia","República del Congo","República Democrática del Congo","República Dominicana","República Sudafricana","Ruanda","Rumanía","Rusia","Samoa","San Cristóbal y Nieves","San Marino","San Vicente y las Granadinas","Santa Lucía","Santo Tomé y Príncipe","Senegal","Serbia","Seychelles","Sierra Leona","Singapur","Siria","Somalia","Sri Lanka","Suazilandia","Sudán","Sudán del Sur","Suecia","Suiza","Surinam","Tailandia","Tanzania","Tayikistán","Timor Oriental","Togo","Tonga","Trinidad y Tobago","Túnez","Turkmenistán","Turquía","Tuvalu","Ucrania","Uganda","Uruguay","Uzbekistán","Vanuatu","Venezuela","Vietnam","Yemen","Yibuti","Zambia","Zimbabue"]
    
    func obtenPais() -> String {
        
        let posicion = Int(arc4random()) % paises.count
        
        return paises[posicion]
    }
    
}

let paises = ColeccionDePaises()
paises.obtenPais()

class ColeccionDeHamburguesas {
    let hamburguesas : [String] = ["funnel cake🍔", "suprema Nacho Burger🍔", "Pizza - Chesse burger bacon🍔", " hamburguesa de carne de cordero🍔", "Flippin' Burguers🍔", "hambuguesas hechas de ramen🍔", "Hamburgueria do Bairro🍔", "La Bill Murray🍔", "hamburguesa callejera / las de la esquina🍔", "hamburguesa y malteada / shake shack🍔", "hamburguesa exótica / cafe clock🍔", "hamburguesa saludable / unburger🍔", "Hamburguesa Frutos Rojos🍔", "Hamburguesa La Royale🍔", "Hamburguesa Patty Bun🍔", "Honest Burger🍔", "MOS Burguer🍔", "Hamburguesa Española🍔", "Hamburguesa Argentina🍔", "Hamburguesa Deportista🍔", "Hamburguesa Ranchera🍔", "Hamburguesa Roquefort🍔", "Hamburguesa Americana🍔", "Hamburguesa 4 Quesos🍔", "Hamburguesa Portobello🍔", "Hamburguesa Ibérica🍔", "Hamburguesa con Queso Azul🍔", "Hamburguesa Bowie🍔"]
    
    func obtenHamburguesa()->String {
        let posicion = Int(arc4random()) % hamburguesas.count
        
        return hamburguesas[posicion]
        
    }
}

let hamburguesas = ColeccionDeHamburguesas()
hamburguesas.obtenHamburguesa()

struct Colores {
    
    let colores = [UIColor(red: 210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1 ),
        UIColor(red: 40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1 ),
        UIColor(red: 3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1 ),
        UIColor(red: 210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1 ),
        UIColor(red: 120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1 ),
        UIColor(red: 130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1 ),
        UIColor(red: 130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1 ),
        UIColor(red: 3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1 )
    ]
    
    func regresaColorAleatorio() -> UIColor{
        
        let posicion = Int(arc4random()) % colores.count
        
        return colores[posicion]
        
    }
    
}

let colores = Colores()
colores.regresaColorAleatorio()

