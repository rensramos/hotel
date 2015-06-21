package hotel

class Hotel {
    String name
    String location
    static hasMany = [room: Room]
    static constraints = {

    }
}
