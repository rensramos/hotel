import hotel.*

class BootStrap {

    def init = { servletContext ->
        new Hotel(
                    name: "Black Market Hotel and Casino",
                    location: "Makati City",
                    room: Room.get(2)


        ).save()

        new Hotel(
                name: "Black Market Hotel and Casino",
                location: "Pasig City",
                room: Room.get(2)
        ).save()

        new Hotel(
                name: "Zap Hotel",
                location: "Cabanatuan City",
                room: Room.get(1)
        ).save()

        new Hotel(
                name: "Sogo Hotel",
                location: "Bataan City",
                room: Room.get(3)
        ).save()

        new Room(
                roomType: "Single Forever Room",
                description: "Experience Triple layered foam Bed",
                roomRate: 550
        )

        new Room(
                roomType: "Couple Sensation Room",
                description: "Experience Triple layered foam Bed",
                roomRate: 650
        )

        new Room(
                roomType: "Quadruple Room",
                description: "Experience Triple layered foam Bed",
                roomRate: 850
        )
    }
    def destroy = {
    }
}
