package com.leo.grails

import com.leo.grails.zapatillas.TiposZapatillas
import grails.transaction.Transactional

@Transactional
class TiposZapatillasService {

    def get(id) {
        TiposZapatillas.get(id)
    }

    def save(tiposZapatillas) {
        tiposZapatillas.save()
    }

    def delete(id) {
        TiposZapatillas.get(id).delete()
    }
}
