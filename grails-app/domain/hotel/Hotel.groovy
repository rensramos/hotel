package hotel

class Hotel {
    String name
    String location
    String roomType
    String description
    BigDecimal roomRate
    static hasMany = [room: Room]
    static constraints = {

    }
}
