import hotel.Hotel
class BootStrap {

    def init = { servletContext ->
        new Hotel(name: "Black Market Hotel and Casino", price: 8000, currency:"EURO", location: "Makati City").save()
        new Hotel(name: "B-side Hotel", price: 7000, currency:"EURO", location: "Pasig City").save()
        new Hotel(name: "Zap Hotel and Casino", price: 5000, currency:"EURO", location: "Bataan City").save()
        new Hotel(name: "Solaire Hotel and Casino", price: 15000, currency:"YEN", location: "Cabanatuan City").save()
        new Hotel(name: "Makati Peninsula Hotel", price: 3000, currency:"USD", location: "Makati City").save()
        new Hotel(name: "White Market Hotel and Casino", price: 11000, currency:"USD", location: "Cabanatuan City").save()
    }
    def destroy = {
    }
}
