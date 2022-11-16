//
//  PagoController.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 08/11/22.
//

import UIKit

class PagoController :  UIViewController, UITableViewDelegate, UITableViewDataSource {
    var pagos: [Pago] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pagos.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPago") as! CeldaPagoController
                    celda.lblConcepto.text = pagos[indexPath.row].concepto
                    celda.lblReferencia.text = pagos[indexPath.row].referencia
                    celda.lblFecha.text = pagos[indexPath.row].fecha
                    celda.lblImporte.text = pagos[indexPath.row].importe
                    celda.imgCheck.image = UIImage(named: pagos[indexPath.row].check)
                    
        
                return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pagos.append(Pago(concepto: "Inscripción", referencia: "1991861202207", fecha: "22-julio-2022", importe: "$10,000.00", check: "check1"))
        pagos.append(Pago(concepto: "1°​ Colegiatura", referencia: "1991862202208", fecha: "26-agosto-2022", importe: "$1,500.00", check: "check1"))
        pagos.append(Pago(concepto: "2°​ Colegiatura", referencia: "1991862202209", fecha: "15-septiembre-2022", importe: "$1,500.00", check: "check1"))
        pagos.append(Pago(concepto: "3°​ Colegiatura", referencia: "1991862202210", fecha: "14-octubre-2022", importe: "$1,500.00", check: "check1"))
        pagos.append(Pago(concepto: "4°​ Colegiatura", referencia: "1991862202211", fecha: "11-noviembre-2022", importe: "$1,500.00", check: "check2"))
        pagos.append(Pago(concepto: "5°​ Colegiatura", referencia: "1991862202212", fecha: "05-diciembre-2022", importe: "$1,500.00", check: "check2"))
       
        //comidas.append(Comida( imagen: "fotito", comida: "tacos", precio: "15"))
        //comidas.append(Comida( imagen: "fotito", comida: "mollete", precio: "17"))
        //comidas.append(Comida( imagen: "fotito", comida: "sandwich", precio: "23"))
        //comidas.append(Comida( imagen: "fotito", comida: "sandwich", precio: "23"))
        
        
    }
    
}
