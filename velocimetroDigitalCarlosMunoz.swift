// Velocímetro de Automovil Digital (MiniReto2)
//Carlos Eduardo Muñoz González

import UIKit

enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades)
    {
         self = velocidadInicial
    }
    
}

class Auto {
    
    var velocidad : Velocidades
    
    init(){
        
        self .velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String){
        
        
        
        
        if velocidad == .Apagado{
            
            velocidad = .VelocidadBaja
            return (0, "Apagado")
        }
        else if velocidad == .VelocidadBaja {
            velocidad = .VelocidadMedia
            return (20, "Velocidad baja")
        }
        else if velocidad == .VelocidadMedia {
            velocidad = .VelocidadAlta
            return (50, "Velocidad media")
        }
        else if velocidad == .VelocidadAlta{
            velocidad = .VelocidadMedia
            return (120, "Velocidad alta")
        }
        
        return (velocidad.rawValue, "\(velocidad)")
    }
    
}



var auto = Auto()

for var i in 0 ..< 20 {
    
    print(auto.cambioDeVelocidad())
}
