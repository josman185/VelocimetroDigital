//: Playground - noun: a place where people can play...

import UIKit

class Auto {
    var velocidad = Velocidades(velocidadInicial: .Apagado)
    
    init(velocidad: Velocidades){
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad() -> (actual:Int , velocidadEnCadena:String) {
        var actual : Int
        var velocidadEnCadena : String
        
        switch velocidad{
            
        case .Apagado:
            actual = Velocidades.Apagado.rawValue
            velocidadEnCadena = "Apagado"
            velocidad = .VelocidadBaja
            break
            
        case .VelocidadBaja:
            actual = Velocidades.VelocidadBaja.rawValue
            velocidadEnCadena = "Velocidad Baja"
            velocidad = .VelocidadMedia
            break
            
        case .VelocidadMedia:
            actual = Velocidades.VelocidadMedia.rawValue
            velocidadEnCadena = "Velocidad Media"
            velocidad = .VelocidadAlta
            break
            
        case .VelocidadAlta:
            actual = Velocidades.VelocidadAlta.rawValue
            velocidadEnCadena = "Velocidad Alta"
            velocidad = .VelocidadMedia
            break
        }
        
        return (actual,velocidadEnCadena)
    }
}

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = .Apagado
    }
}

var auto = Auto(velocidad: .Apagado)

for i in 1...20 {
    print(auto.cambioDeVelocidad())
}

