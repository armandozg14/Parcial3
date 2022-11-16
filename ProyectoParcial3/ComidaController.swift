//
//  ComidaController.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 08/11/22.
//

import UIKit

class ComidaController :  UIViewController, UITableViewDelegate, UITableViewDataSource {
    var comidas: [Comida] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comidas.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaComida") as! CeldaComidaController
                    celda.lblComida.text = comidas[indexPath.row].comida
                    celda.lblPrecio.text = comidas[indexPath.row].precio
                    celda.imgImagen.image = UIImage(named: comidas[indexPath.row].imagen)
                    celda.imgImagen.layer.cornerRadius = 34
                    celda.imgImagen.clipsToBounds = true
        
                return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        comidas.append(Comida( imagen: "Bagette", comida: "Baguette ★★★★", precio: "$40"))
        comidas.append(Comida( imagen: "Burguer", comida: "Hamburguesa ★★★★★", precio: "$45"))
        comidas.append(Comida( imagen: "dogo", comida: "Hot-Dog ★★★", precio: "$30"))
        comidas.append(Comida( imagen: "hotcakes", comida: "Hot-Cakes ★★★", precio: "$25"))
        comidas.append(Comida( imagen: "Nachos", comida: "Nachos ★★★★", precio: "$30"))
        comidas.append(Comida( imagen: "pizza", comida: "Pizza ★★★★★", precio: "$20"))
        comidas.append(Comida( imagen: "spaghetti", comida: "Spaghetti ★★★★", precio: "$40"))
        
        
    }
    
}
