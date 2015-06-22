package hotel

class IndexController {
    def hotelService
    def index() {
        def currencyName = hotelService.currencyName()
        return [currencyName: currencyName]
    }
}
