 import UIKit

// 1
 /*Задания к уроку N12 - 13
 Мини-упражнения:
 1.Реализуйте структуру Employee, описывающую работника.
  Структура должна обладать следующими характеристиками: -свойство, описывающее имя, фамилию, специальность, годовую зарплату, недельную зарплату, месячную зарплату.
  (Недельная и месячная зарплата должны быть вычисляемыми свойствами с возможностью назначения нового значения)
  - метод, возвращающий информацию о работнике (профессия-имя-фамилия-годоваязарплата),
  и метод для изменения годовойзарплаты.
  - создайте экземпляр работника, получите месячную и недельную зарплату. Назначьте новую недельную зарплату и проверьте изменилась ли годоваязарплата?
  Используйте метод для измения годовой зарплаты и вызовите метод для получения информации о работнике struct Employee
*/
// 
//    struct Employee {
//    
//    var name: String
//    var surname: String
//    var position: String
//    var yearlySalary: Int
//
//    var weeklySalary: Int {
//        get {
//          let salary = yearlySalary / 48
//            return Int(salary)
//        }
//        set {
//            yearlySalary = newValue * 48
//        }
//        }
//
//    var monthlySalary: Int {
//        get {
//            let salary = yearlySalary / 12
//        return Int(salary)
//    }
//        set {
//            yearlySalary = newValue * 12
//        }
//        }
//    
//
//    func Info() {
//        print("Name - \(self.name), Surname - \(self.surname), Position - \(self.position), Salary - \(self.yearlySalary)")
//    }
// }
//    
// 
//
// var person1 = Employee(name: "Nurgazy", surname: "First", position: "IOS Dev", yearlySalary: 12_000)
// 
// person1.yearlySalary
// person1.monthlySalary
// person1.weeklySalary
// person1.Info()
// 
// person1.weeklySalary = 500
// person1.monthlySalary
// person1.yearlySalary
// person1.Info()
// 
// var person2 = Employee(name: "Salamat", surname: "Second", position: "IOS Dev", yearlySalary: 22500)
// 
// person2.yearlySalary
// person2.monthlySalary
// person2.weeklySalary
// person2.Info()
// 
// person2.monthlySalary = 2000
// person2.yearlySalary
// person2.weeklySalary
// person2.Info()
 
// Реализуйтеструктуру TVSeries, описывающуютелевизионныйсериал. Структурадолжнаобладатьследующимихарактеристиками: -свойство, описывающееназвание, сезон, коллекциясерий (сномеромибулевымзначениемвзависимостипросмотренасерияилинетввидесловаря) истатичноесвойствотипапоказывающийномерпоследнейпросмотреннойсерии (значениепоумолчаниюноль).-сабскриптспараметромномерасерииивозвращающийтризначения(“серияпросмотрена”, “сериянепросмотрена”, “такойсериинет”) взависимостиотналичияномерасериивколлекцииибулевазначенияопросмотре.-методкоторыйбудетназначатьномерсериикакпросмотренный (еслиномерсериинесуществуетвколлекцииметоддолженнапечататьвотладкечтотакойсериинет) ипроверятьеслиномерсериисамыйпоследнийтоменятьномерсвойстватипанановоезначение.-создайтеэкземплярсериаладобавиввосемьсерийсозначениями false. Затемиспользуйтеметоддляпросмотрапервыхдвухсерий, попробуйтепросмотреть 9 серию. Проверьтесвойствотипакоторыйпоказываетномерпоследнейпросмотреннойсериионадолжнапоказатьвторуюсерию. Используйтесабскриптдляпервой, третьейидевятойсериикакиезначениявыполучили?
 

  struct TVSeries {

   static var lastMovie = 0
   var name: String
   var season: Int
   var series: [Int : Bool]


    subscript (seriesNum: Int) -> String {
    if series[seriesNum] ?? false {
       return ("Просмотрено")
    } else if series[seriesNum] ?? true {
       return ("Такой серии нет")
    } else {
       return ("Не просмотрена")
    }
  }
     mutating func setView (seriesNum: Int){
        if series[seriesNum] == true || series[seriesNum] == false {
       series[seriesNum]! != true
            TVSeries.lastMovie = seriesNum
       } else {
         print ("Такой серии нет")
       }
    }
  }

 var tvS = TVSeries(name: "Spartak", season: 1, series: [1:false, 2:false, 3:false, 4:false, 5:false, 6:false, 7:false, 8:false])
 tvS.series[1]
 tvS.series[2]
 

 tvS.series[1]
 tvS.setView(seriesNum: 1)
 tvS[1]

 tvS.setView(seriesNum: 2)
 tvS.series[2]
 
 tvS.series[9]
 tvS.setView(seriesNum: 9)
 
 tvS[1]
 tvS[2]
 tvS[3]
 tvS[4]
 tvS[5]
 tvS[6]
 tvS[7]
 tvS[8]
 tvS[9]
 
//
//
// struct TVSeries {
//   static var lastFilmNum = 0
//   var name: String
//   var season: Int
//   var series: [Int : Bool]
//   subscript (seriesNum: Int) -> String {
//     if series[seriesNum]! {
//       return "Просмотрено"
//     } else if series[seriesNum]! != true {
//       return "Не Просмотрено"
//     } else {
//       return "Такой серии нет"
//     }
//   }
//   mutating func modifySeriesNum (seriesNum: Int){
//     if series[seriesNum] == true {
//     series[seriesNum]! = true
//     } else {
//       print ("Такой серии нет")
//     }
//   }
// }
// var example = TVSeries(name: "XXX", season: 7, series: [1:false, 2:false, 3:false, 4:false, 5:false, 6:false, 7:false, 8:false])
// print (example[1])
// example.series[9]
