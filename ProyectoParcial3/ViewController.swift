//
//  ViewController.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 04/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    
    @IBOutlet weak var tvMateria: UITableView!
    //var checked = false
    
    @IBOutlet weak var txtNombreAlumno: UILabel!
    
    @IBOutlet weak var lblMatricula: UILabel!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblParentesco: UILabel!
    @IBOutlet weak var lblTel1: UILabel!
    @IBOutlet weak var lblTel2: UILabel!
    
    @IBOutlet weak var imgFoto: UIImageView!
    var materias : [Materia] = []
    var alumno : Alumno? = Alumno(nombre: "Armando Zamora",foto:"PERSONA", matricula: "199186", nombreContacto: "Claudia Gámez Bermudez", parentesco: "(Madre)", tel1: "6441610829", tel2: "6441990090")
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMateria") as! CeldaMateriaController
                    celda.lblMateria.text = materias[indexPath.row].materia
                    celda.lblHorario.text = materias[indexPath.row].horario
                    celda.imgImagen.image = UIImage(named: materias[indexPath.row].imagen)
                    celda.imgImagen.layer.cornerRadius = 44
                    celda.imgImagen.clipsToBounds = true
        
        
                return celda
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtNombreAlumno.text = alumno?.nombre
                imgFoto.layer.cornerRadius = 55
                imgFoto.image = UIImage(named: alumno!.foto)
                lblMatricula.text = alumno?.matricula
                lblNombre.text = alumno?.nombreContacto
                lblParentesco.text = alumno?.parentesco
                lblTel1.text = alumno?.tel1
                lblTel2.text = alumno?.tel2
        
        materias.append(Materia(materia:"Fotografía I",maestro: "Heberto", horario: "8:00 - 10:00", imagen: "camara", faltas: "0", check: "check2", rate1: "enojado2", rate2: "triste2", rate3: "maso2", rate4: "feli2", rate5: "feliz2", evaluacion: 0))
        materias.append(Materia(materia:"Biología",maestro: "Paulina", horario: "9:00 - 11:00", imagen: "biologia", faltas: "0", check: "check2",  rate1: "enojado2", rate2: "triste2", rate3: "maso2", rate4: "feli2", rate5: "feliz2",evaluacion: 0 ))
        materias.append(Materia(materia:"Diseño Gráfico II",maestro: "Azalea", horario: "11:00 - 12:00", imagen: "diseño", faltas: "3", check: "check2",  rate1: "enojado2", rate2: "triste2", rate3: "maso2", rate4: "feli2", rate5: "feliz2", evaluacion: 0))
        materias.append(Materia(materia:"Español",maestro: "Odalys", horario: "12:00 - 14:00", imagen: "español", faltas: "1", check: "check2",  rate1: "enojado2", rate2: "triste2", rate3: "maso2", rate4: "feli2", rate5: "feliz2", evaluacion: 0))
        materias.append(Materia(materia:"Química",maestro: "Marcela", horario: "2:00 - 4:00", imagen: "QUIMICA", faltas: "0", check: "check2",  rate1: "enojado2", rate2: "triste2", rate3: "maso2", rate4: "feli2", rate5: "feliz2", evaluacion: 0))
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "actualizarContacto" {
                let destino = segue.destination as! ContactoController
                destino.alumno = alumno
                
                destino.callBackActualizar = actualizarContacto
            }
        if segue.identifier == "actualizarMateria" {
           let destino = segue.destination as! DetallesMateria
            destino.materia=materias[tvMateria.indexPathForSelectedRow!.row]
            destino.callBackActualizarAsistencia = actualizarAsistencia
        }
        }
    
    func actualizarContacto (alumno: Alumno) {
            
            lblNombre.text = alumno.nombreContacto
            lblParentesco.text = alumno.parentesco
            lblTel1.text = alumno.tel1
            lblTel2.text = alumno.tel2
        }
    func actualizarAsistencia (materia: Materia) {
        tvMateria.reloadData()
            
        }
        
        


}

