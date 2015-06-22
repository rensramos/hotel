import hotel.*
import hotel.auth.*

class BootStrap {

    def init = { servletContext ->


        new Hotel(
                    name: "Black Market Hotel and Casino",
                    location: "Makati City",
                    roomType: "Single Bed",
                    description: "Experience Forever Single Bed",
                    roomRate: 750
        ).save()

        new Hotel(
                name: "Zap Hotel",
                location: "Cabanatuan City",
                roomType: "Double Bed",
                description: "Experience Double Bed Sensation",
                roomRate: 850
        ).save()

        new Hotel(
                name: "Tinder Hotel",
                location: "Pasig City",
                roomType: "Quadruple Bed",
                description: "Experience long bed ",
                roomRate: 950
        ).save()

        new Hotel(
                name: "Solaire",
                location: "Maldives City",
                roomType: "Double Bed",
                description: "Experience seashore view",
                roomRate: 1250
        ).save()


    }
    def destroy = {
    }
}
