package com.leo.grails.guestbook

class Feedback {
    String title
    String feedback
    Date dateCreated
    Date lastUpdated

    // relationsship to the other classes
    User user
    static hasMany=[comments:Comment]

    // contrains are defined as static
    static constraints = {
        title(blank:false, nullable: false, size:3..80)
        feedback(blank:false, nullable:false,size:3..500)
        user(nullable:false)
    }

}