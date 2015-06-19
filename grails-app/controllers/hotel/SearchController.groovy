package hotel

class SearchController {

//    def index() {}
    def results(){
        Hotel hotelResults = Hotel.findByLocationIlike("%$params.dpLocation%")
//        def checkIn = params.checkIn
//        def checkOut = params.checkOut
//        def currency = params.dpCurrency
        return [searchResults: hotelResults]
    }

    def create(Long id){
        redirect(action: "create", controller: "Hotel")
    }
}
