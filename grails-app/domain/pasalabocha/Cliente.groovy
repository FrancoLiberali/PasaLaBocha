package pasalabocha

import pasalabocha.login.User
import grails.gorm.transactions.Transactional

class Cliente extends User{
    String nombre
    String apellido
    String email
    String apodo
    Confiabilidad confiabilidad

    static embedded = ['confiabilidad']

    static hasMany = [reservas: Reserva, reservasPermanentes: ReservaPermanente]

    static constraints = {
      nombre nullable: false, blank: false
      apellido nullable: false, blank: false
      email email: true
      apodo nullable: true, blank: true
    }

    boolean safisfaceNivelDeConfiabilidad(int nivelNecesario) {
        return confiabilidad.satisface(nivelNecesario)
    }

    String toString(){
     "${username}: ${nombre} ${apellido}"
    }
}
