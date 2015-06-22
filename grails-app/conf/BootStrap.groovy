import hotel.*
import hotel.auth.*

class BootStrap {

    def init = { servletContext ->

        def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def user = User.findOrSaveWhere(username: 'admin',password:'admin',firstName:'Rens',lastName:'Ramos', emailAddress: 'rensramos@yahoo.com.ph')

        if( !user.authorities.contains(adminRole)){
            UserRole.create(user,adminRole,true)
        }
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
