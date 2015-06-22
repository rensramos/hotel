package hotel

import grails.transaction.Transactional
import grails.plugins.rest.client.RestBuilder

@Transactional
class HotelService {

    def dateCount (Date checkIn, Date checkOut){
        if (checkIn && checkOut){
            use(groovy.time.TimeCategory) {
                def sumDates = (checkOut - checkIn).days
                return sumDates
            }
        }
    }

    RestBuilder restAPI = new RestBuilder()
    def currencyData = restAPI.get("http://www.apilayer.net/api/live?access_key=9a0bc1d13c635835bd18586a57e76cf4&format=1")

//    http://apilayer.net/api/live
//    ? access_key = YOUR_ACCESS_KEY
//    & source = GBP
//    & currencies = USD,AUD,CAD,PLN,MXN
//    & format = 1

    def currencyName() {
        return currencyData.json.quotes.keys().sort()

    }
//    def currencyValue(currency) {
//        return currencyData.json.rates."${dpCurrency}"
//    }

}

