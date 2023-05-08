import UIKit


struct Derece {

    var sicaklikDerece: Double

    init(fahrenheittanDereceye fahrenheit: Double) {

        sicaklikDerece = (fahrenheit - 32.0) / 1.8

    }

}

let fahrenheitVerDereceAl = Derece(fahrenheittanDereceye: 152.0)

print(fahrenheitVerDereceAl.sicaklikDerece)
