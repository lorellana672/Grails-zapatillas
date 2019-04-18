package com.leo.grails

import com.leo.grails.zapatillas.TiposZapatillas
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TiposZapatillasController {


    //static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def TiposZapatillasService

    def index() {
        redirect action: "list"
    }

    def create() {
        respond new TiposZapatillas(params)
    }

    def save() {
        //TiposZapatillasService.save(tiposZapatillas)
        //redirect action:"index", method:"GET"
        def tiposZapatillas = new TiposZapatillas(params)
        tiposZapatillas.save flush: true, failOnError: true
        redirect action: "index", id: tiposZapatillas.id
    }

    def list() {
        //respond TiposZapatillasService.list()
        def tiposZapatillas = TiposZapatillas.list()
        [tiposZapatillas: tiposZapatillas]
    }

    def edit() {
        def tiposZapatillas = TiposZapatillas.get(params.id)
        [tiposZapatillas: tiposZapatillas]
    }

    def update() {
        def tipoZapatillas = TiposZapatillas.get(params.id)
        tipoZapatillas.properties = params
        tipoZapatillas.save flush: true, failOnError: true
        redirect action: "index", id: params.id
    }

    def delete() {
        def tiposZapatillas = TiposZapatillas.get(params.id)
        tiposZapatillas.delete flush: true, failOnError: true
        redirect action: "index"
    }

}