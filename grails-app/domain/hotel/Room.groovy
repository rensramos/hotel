package hotel

class Room {
    String roomType
    String description
    BigDecimal roomRate

    static belongsTo = [hotel: Hotel]
    static constraints = {
    }
}
