//
//  ModelsVariable.swift
//  Carfour
//
//  Created by M.Ibrahim on 16/05/2023.
//

import Foundation
let data = [
    ("Alfa Romeo",3),("Audi",4),("BMW",6),("Bugatti",1),("Chevrolet",2),("Dodge",2),("Ferrari",2),("Ford",3),("Honda",2),("Hyundai",2),("Jaguar",2),("Jeep",3),("Kia", 3),("McLaren", 2),("Mercedes",6),("Mistubishi",0),("Nissan",1),("Opel",0),("Porsche",2),("Seat",3),("SKoda",0),("Toyota",3),("Volks Wagen",2),("Volvo",0)]
let carNames = ["Alfa Romeo": ["Alfa Romeo Guilia", "Alfa Romeo Stelvio", "Alfa Romeo Tonale"],
    "Audi": ["Audi A6", "Audi A7", "Audi Q8", "Audi R8"],
    "BMW": ["BMW i8", "BMW M4", "BMW M5", "BMW M8", "BMW X6", "BMW Z4"], "Bugatti": ["Bugatti Chiron"],
    "Chevrolet": ["Chevrolet Camaro", "Chevrolet Corvette"],
    "Dodge": ["Dodge Challenger", "Dodge Charger"], "Ferrari": ["Ferrari F8 Tributo", "Ferrari 296 GTB"],
    "Ford": ["Ford Explorer", "Ford Mustang", "Ford Taurus"], "Honda": ["Honda City", "Honda Civic"],
    "Hyundai": ["Hyundai Elantra", "Hyundai Tucson"], "Jaguar": ["Jaguar F-Type", "Jaguar Xj"],
    "Jeep": ["Jeep Cherokee", "Jeep Compass", "Jeep Wrangler"],
    "Kia": ["Kia Ceed", "Kia Cerato", "Kia Sportage"], "McLaren": ["McLaren 720s", "McLaren Artura"],
    "Mercedes": ["Mercedes A200", "Mercedes AMG C63 SE", "Mercedes AMG SL 55", "Mercedes C-Class", "Mercedes E300", "Mercedes G-Class"], "Nissan": ["Nissan GTR"], "Porsche": ["Porsche 911", "Porsche Mecan"],
    "Seat": ["Seat Cupra", "Seat Ibiza", "Seat Leon"], "Toyota": ["Toyota Supra MK4", "Toyota Supra MK5", "Toyota Corolla"],
    "Volkswagen": ["Volkswagen Arteon", "Volkswagen Golf"]]
let carOrigin = ["Alfa Romeo": "Milan, Italy", "Audi": "Zwickau, Germany", "BMW": "Munich, Germany", "Bugatti": "Molshemi, France", "Chevrolet": "Detroit, United States", "Dodge": "United States", "Ferrari": "Maranello, Italy",
    "Ford": "Detroit, United Stated", "Honda": "Hamamatsu, Japan", "Hyundai": "Seoul, South Korea",
    "Jaguar": "Blackpool, United Kingdom", "Jeep": "United States", "Kia": "Yeongdeungpo-gu, South Korea",
    "McLaren": "Woking, United Kingdom", "Mercedes": "Stuttgart", "Nissan": "Japan", "Porsche": "Stuttgart, Germany",
    "Seat": "Spain", "Toyota": "Japan", "Volkswagen": "Berlin, Germany"]
let carModels = ["Alfa Romeo": [("Guilia", "AlfaRomeoGiulia1"), ("Stelvio", "AlfaRomeoStelvio3"), ("Tonale", "AlfaRomeoTonale1")],
    "Audi": [("A6", "audia6-3"), ("A7", "audia7-3"), ("Q8", "audiq8-1"), ("R8", "audir8-3")],
    "BMW": [("i8", "bmwi8-2"), ("M4", "bmwm4-1"), ("M5", "bmwm5-1"), ("M8", "bmwm8-1"), ("X6", "bmwx6-1"), ("Z4", "bmwZ4-3")],
    "Bugatti": [("Chiron", "Chiron1")], "Chevrolet": [("Camaro", "camaro2"), ("Corvette", "Corvette3")],
    "Dodge": [("Challenger", "dodgechallenger2"), ("Charger", "dodgecharger2")],
    "Ferrari": [("F8 Tributo", "F8 Tributo1"), ("296 GTB", "fer296gtb-1")],
    "Ford": [("Explorer", "fordexplorer2"), ("Mustang", "fordmustang2"), ("Taurus", "fordTaurus2")],
    "Honda": [("City", "HondaCity1"), ("Civic", "hondacivic2")],
    "Hyundai": [("Elantra", "hyundaielantra2"), ("Tucson", "hyundaitucson2")],
    "Jaguar": [("F-Type", "jaguarftype2"), ("XJ", "jaguarxj2")],
    "Jeep": [("Cherokee", "jeepcherokee2"), ("Compass", "jeepcompass2"), ("Wrangler", "jeepwrangler2")],
    "Kia": [("Ceed", "KiaCeed1"), ("Cerato", "KiaCerato2"), ("Sportage", "kiaSportage2")],
    "McLaren": [("720s", "McLaren720s2"), ("Artura", "McLarenArtura1")],
    "Mercedes": [("A200", "MerA200-2"), ("AMG C63 SE", "MerAMGC63SE-Perf1"), ("AMG SL 55", "MerAMGSL55-1"), ("C-Class", "MerC2"), ("E300", "MerE300-2"), ("G-Class", "MerGClass1")],
    "Nissan": [("GTR", "GTR3")], "Porsche": [("911", "Porsche911-1"), ("Mecan", "PorscheMacan1")],
    "Seat": [("Cupra", "Cupra2"), ("Ibiza", "Seatibiza2"), ("Leon", "SeatLeon1jpg")],
    "Toyota": [("Supra MK4", "supramk4-1"), ("Supra MK5", "supramk5-3"), ("Corolla", "ToyotaCorolla1")],
    "Volks Wagen": [("Arteaon", "VWArteon2"), ("Golf", "VWGolf1")]]
let cars =
    ["Alfa Romeo Guilia": ["AlfaRomeoGiulia1","AlfaRomeoGiulia2","AlfaRomeoGiulia3"],
     "Alfa Romeo Stelvio": ["AlfaRomeoStelvio1","AlfaRomeoStelvio2","AlfaRomeoStelvio3"],
     "Alfa Romeo Tonale": ["AlfaRomeoTonale1","AlfaRomeoTonale2","AlfaRomeoTonale3"],
    "Audi A6": ["audia6-1","audia6-2","audia6-3"],
    "Audi A7": ["audia7-1", "audia7-2", "audia7-3"],
    "Audi Q8": ["audiq8-1", "audiq8-2", "audiq8-3"],
    "Audi R8": ["audir8-1", "audir8-2", "audir8-3"],
     "BMW i8": ["bmwi8-1", "bmwi8-2"],
     "BMW M4": ["bmwm4-1", "bmwm4-2"],
     "BMW M5": ["bmwm5-1", "bmwm5-2", "bmwm5-2"],
    "BMW M8": ["bmwm8-1", "bmwm8-2", "bmwm8-3"],
     "BMW X6": ["bmwx6-1", "bmwx6-2", "bmwx6-3"],
     "BMW Z4": ["bmwZ4-1", "bmwZ4-2", "bmwZ4-3"],
     "Bugatti Chiron": ["Chioron1", "Chioron2"],
    "Chevrolet Camaro": ["camaro1", "camaro2", "camaro3"],
    "Chevrolet Corvette": ["Corvette1", "Corvette2", "Corvette3"],
    "Dodge Challenger": ["dodgechallenger1", "dodgechallenger2"],
    "Dodge Charger": ["dodgecharger1", "dodgecharger2"],
    "Ferrari F8 Tributo": ["F8 Tributo1", "F8 Tributo2"],
    "Ferrari 296 GTB": ["fer296gtb-1", "fer296gtb-2"],
    "Ford Explorer": ["fordexplorer1", "fordexplorer2"],
    "Ford Mustang": ["fordmustang1", "fordmustang2"],
    "Ford Taurus": ["fordTaurus1", "fordTaurus2"],
    "GTR": ["GTR1", "GTR2", "GTR3"],
    "Honda City": ["HondaCity1", "HondaCity2"],
    "Honda Civic": ["hondacivic1", "hondacivic2"],
    "Hyundai Elantra": ["hyundaielantra1", "hyundaielantra2"],
    "Hyundai Tucson": ["hyundaitucson1", "hyundaitucson2"],
    "Jaguar F-Type": ["jaguarftype1", "jaguarftype2"],
    "Jaguar Xj": ["jaguarxj1", "jaguarxj2"],
    "Jeep Cherokee": ["jeepcherokee1", "jeepcherokee2"],
    "Jeep Compass": ["jeepcompass1", "jeepcompass2"],
    "Jeep Wrangler": ["jeepwrangler1", "jeepwrangler2"],
    "Kia Ceed": ["KiaCeed1", "KiaCeed2"],
    "Kia Cerato": ["KiaCerato1", "KiaCerato2"],
    "Kia Sportage": ["kiaSportage1", "kiaSportage2"],
    "720s": ["McLaren720s1", "McLaren720s2"],
    "Artura": ["McLarenArtura1", "McLarenArtura2"],
    "Mercedes A200": ["MerA200-1", "MerA200-2"],
    "Mercedes AMG C63 SE": ["MerAMGC63SE-Perf1", "MerAMGC63SE-Perf2"],
    "Mercedes AMG SL 55": ["MerAMGSL55-1", "MerAMGSL55-2"],
    "Mercedes C-Class": ["MerC1", "MerC2"],
    "Mercedes E300": ["MerE300-1", "MerE300-2"],
    "Mercedes G-Class": ["MerGClass1", "MerGClass2"],
    "Porsche 911": ["Porsche911-1", "Porsche911-2"],
    "Porsche Mecan": ["PorscheMacan1", "PorscheMacan2"],
    "Seat Cupra": ["Cupra1", "Cupra2"],
    "Seat Ibiza": ["Seatibiza1", "Seatibiza2"],
    "Seat Leon": ["SeatLeon1", "SeatLeon2"],
    "Toyota Supra MK4": ["supramk4-1", "supramk4-2", "supramk4-3", "supramk4-4"],
    "Toyota Supra MK5": ["supramk5-1", "supramk5-2", "supramk5-3", "supramk5-4", "supramk5-5", "supramk5-6"],
    "Toyota Corolla": ["ToyotaCorolla1", "ToyotaCorolla2"],
    "Arteon": ["VWArteon1", "VWArteon2"],
    "Volkswagen Golf": ["VWGolf1", "VWGolf2"]]

