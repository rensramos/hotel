package hotel

import grails.transaction.Transactional

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

    def getCurrency () {

    }
}
