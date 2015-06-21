package hotel

class SearchController {

//    def index() {}
    def results(){
        Hotel hotelResults = Hotel.findByLocationIlike("%$params.dpLocation%")
        def checkIn = params.checkIn
        def checkOut = params.checkOut
        def currency = params.dpCurrency
        def totalDay = checkIn + checkOut
            println(totalDay)
//        println(checkIn)
//        println(checkOut)
//        println(currency)

        return [searchResults: hotelResults, checkIn:checkIn, checkOut:checkOut, currency:currency]
    }

    def create(Long id){
        redirect(action: "create", controller: "Hotel")
    }
}
