import com.leo.grails.zapatillas.*

class BootStrap {

    def init = { servletContext ->
        TiposZapatillas tiposZapatillas = new TiposZapatillas(nombre:'naic', precio:'200', descripcion: 'deja tu naic vro')
        TiposZapatillas otraZapa = new TiposZapatillas(nombre: 'adidas', precio: '50000', descripcion: 're comodas prro')
        if (!tiposZapatillas.save()){
            log.error "Could not save tiposZapatillas!!"
            log.error "${tiposZapatillas.errors}"
        }
        if (!otraZapa.save()){
            log.error "Could not save otraZapa!!"
        }

    }

    def destroy = {
    }

}