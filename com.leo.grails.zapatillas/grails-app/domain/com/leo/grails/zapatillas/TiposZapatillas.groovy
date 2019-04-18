package com.leo.grails.zapatillas

class TiposZapatillas {

    String nombre
    Integer precio
    String descripcion
    Date dateCreated
    Date lastUpdated

    static constraints = {
        nombre(blank:false, nullable:false, size:3..80)
        precio(blank:false, nullable:false, size:1..50)
        descripcion(blank:false, nullable:true,size:1..500)
    }

}

