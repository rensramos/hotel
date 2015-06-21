package hotel

class SearchController {
    def hotelService
    def results(){
        Hotel hotelResults = Hotel.findByLocationIlike("%$params.dpLocation%")
        def checkIn =  Date.parse("MM/dd/yyyy", params?.checkIn)
        def checkOut = Date.parse("MM/dd/yyyy", params?.checkOut)
        def daysCount = hotelService.dateCount(checkIn,checkOut)
        println(totalSum)

        return [searchResults: hotelResults, daysCount:daysCount]
    }

    def create(Long id){
        redirect(action: "create", controller: "Hotel")
    }
}
