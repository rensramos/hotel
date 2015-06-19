package hotel

class SearchController {

//    def index() {}
    def results(){
        Hotel hotelResults = Hotel.findByLocationIlike("%$params.dpLocation%")
        return [searchResults: hotelResults]
    }

    def create(Long id){
        redirect(action: "create", controller: "Hotel")
    }
}
