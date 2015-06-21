import hotel.*

class BootStrap {

    def init = { servletContext ->
        new Hotel(
                    name: "Black Market Hotel and Casino",
                    location: "Manila",
                    roomType: "Luxury-Couple",
                    description: "Plan your night at Black Market Hotel and Casino",
                    roomRate: 475.00
        ).save()

        new Hotel(
                name: "Black Market Hotel and Casino",
                location: "Manila",
                roomType: "Luxury-Couple-Sensation",
                description: "Plan your night at Black Market Hotel and Casino",
                roomRate: 875.00
        ).save()

        new Hotel(
                name: "Black Market Hotel and Casino",
                location: "Manila",
                roomType: "Luxury-Couple",
                description: "Plan your night at Black Market Hotel and Casino",
                roomRate: 475.00
        ).save()

        new Room(
                roomType: "Couple-Sensation",
                description: "Experience Triple layered foam Bed",
                roomRate: 500
        )

        new Room(
                roomType: "Couple-Sensation",
                description: "Experience Triple layered foam Bed",
                roomRate: 500
        )

    }
    def destroy = {
    }
}
