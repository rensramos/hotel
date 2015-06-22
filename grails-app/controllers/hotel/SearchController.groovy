package hotel

class SearchController {
    def hotelService

    def index(){
        def currencyName = hotelService.currencyName()
        return [currencyName: currencyName]

    }

    def results(){
        Hotel hotelResults = Hotel.findByLocationIlike("%$params.dpLocation%")
        def checkIn =  Date.parse("MM/dd/yyyy", params?.checkIn)
        def checkOut = Date.parse("MM/dd/yyyy", params?.checkOut)
        def daysCount = hotelService.dateCount(checkIn,checkOut)
        def currencyValue = hotelService.currencyValue(params)
        def totalCurrency = currencyValue * hotelResults.roomRate
        def totalPriceDue = totalCurrency * daysCount
        println(totalPriceDue)
        return [searchResults: hotelResults, daysCount:daysCount]
    }

    def create(Long id){
        redirect(action: "create", controller: "Hotel")
    }
}
