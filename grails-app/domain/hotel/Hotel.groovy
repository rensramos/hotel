package hotel

class Hotel {
    String name
    Integer price
    String currency
    String location
    static hasMany
    static constraints = {
        location(unique: true)
        currency(unique: true)
    }
}
