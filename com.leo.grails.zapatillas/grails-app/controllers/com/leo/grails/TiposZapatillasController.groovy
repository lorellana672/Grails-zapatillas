package com.leo.grails

import com.leo.grails.zapatillas.TiposZapatillas
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TiposZapatillasController {



    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def index() {
        redirect action: "list"
    }

    def show() {
        def tiposZapatillas = TiposZapatillas.get(params.id)
        [tiposZapatillas: tiposZapatillas]
    }

    def create() {
        respond new TiposZapatillas(params)
    }

    @Transactional
    def save() {
        def tiposZapatillasInstance = new TiposZapatillas(params)
        tiposZapatillasInstance.save flush: true, failOnError: true
        redirect action: "index", id: tiposZapatillasInstance.id
    }

    def list = {
        def tiposZapatillas = TiposZapatillas.list()
        [tiposZapatillas: tiposZapatillas]
    }

    def edit() {
            def tiposZapatillas = TiposZapatillas.get(params.id)
            [tiposZapatillas: tiposZapatillas]
    }

    @Transactional
    def update() {
        def tiposZapatillas = TiposZapatillas.get(params.id)
        tiposZapatillas.properties = params
        tiposZapatillas.save flush: true, failOnError: true
        redirect action: "index", id: params.id
    }


    @Transactional
    def delete() {

        def tiposZapatillas = TiposZapatillas.get(params.id)
        tiposZapatillas.delete flush: true, failOnError: true
        redirect action: "index"
    }

}