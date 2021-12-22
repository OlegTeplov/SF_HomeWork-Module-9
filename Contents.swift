import UIKit

//Итоговый проект модуля 9 (Условия и циклы)
// Все технические характеристики автомобиля вписываются в документацию -  по этому считаю их константой
let automobile = "Tesla" //автомобиль Тесла
let weight = 2108 //масса автомобиля в кг.
let length = 4976 //длина автомобиля в мм.
let width = 1963 //ширина автомобиля(с учетом боковых зеркал) в мм.
let Height = 1435 //высота автомобиля в мм.
let Wheelbase = 2959 //колесная база в мм.
let GroundClearance = 154.9 //клиренс в мм.
let TrunkVolume = 900 //объем багажника в л.

//Хранение функционала автомобиля
var isAutopilot:Bool = false // система работы автопилота
var musicPlayer:Bool = true //управлеение музыкой или вкл. или нет
var sunroof:Int = 50 //степень открытия люка в процентах 0 - закрыт, 100 - открыт
var blowerFan:Int = 0//скорость работы вентилятора обдува (обороты в минуту)
var driverComfort:Int = 24 //температура подачи воздуха на водителя в градусах С
var driverSeatHeatting:Int = 0//степень обогрева водительского сидения в условных единицах
var batteryLevel:Int = 50//уровень заряда батареи в процентах
var isGPS:Bool = false //показывает включен ли GPS
//система обработки ошибок
enum AutoError: Error {
    case isLost // заблудился
    case lowBattery // низкая батарея
    case brokeAutoDrive // проблемы с управлением машины
    case rain // пошел дождь
}
 
var isLost: Bool = false
var lowBattery: Bool = false
var brokeAutoDrive: Bool = false
var rain: Bool = true

do {
    if isLost {
        throw AutoError.isLost
    }
 
    if lowBattery {
        throw AutoError.lowBattery
    }
 
    if brokeAutoDrive {
        throw AutoError.brokeAutoDrive
        
    }
    if rain {
            throw AutoError.rain
    }
    
    
} catch AutoError.isLost {
    print("Вы заблудились! Включаю GPS")
    isGPS = true //вкл GPS
    
} catch AutoError.lowBattery {
    print("Батарея садится! Ближайшая станция подзарядки через 1 км 500 м")
    musicPlayer = false
    isGPS  = true
    
} catch AutoError.brokeAutoDrive {
    print("Режим автопилота отключен. Переход в режим ручного управления!")
    isAutopilot = true

} catch AutoError.rain {
    print("Закройте люк!")
    sunroof = 0
    }
    
if batteryLevel <= 10 {
    lowBattery = true
    print("Мощность автомобиля снижена, направляйтесь к близжайшей зарядной станции")
}

if batteryLevel <= 10 {
    lowBattery = true
    print("Мощность автомобиля снижена, направляйтесь к близжайшему пункту зарядки")
}

if isAutopilot{
    print("Автопилот включен! Это может быть опасно! Следите за движением автомобиля!")
}

if musicPlayer{
    print("Громкая музыка может негативно вляить на ваш слух!")
}

if sunroof == 0{
    print("Не высовывайте руки во время закрытия люка!")
}
// Вроде все правильно)
