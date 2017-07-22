//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String: String] = ["Joe": "Peanut Butter and Chocolate",
                                                       "Tim": "Natural Vanilla",
                                                       "Sophie": "Mexican Chocolate",
                                                       "Deniz": "Natural Vanilla",
                                                       "Tom": "Mexican Chocolate",
                                                       "Jim": "Natural Vanilla",
                                                       "Susan": "Cookies 'N' Cream"]
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        
        var names: [String] = []
        
        for (name, favFlavor) in favoriteFlavorsOfIceCream {
            
            if favFlavor == flavor {
                names.append(name)
            }
            
        }
        
        return names
        
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        
        var count = 0
        
        for (_, favFlavor) in favoriteFlavorsOfIceCream {
            
            if favFlavor == flavor {
                count += 1
            }
            
        }
        
        return count
        
    }
    
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        
        let flavor = favoriteFlavorsOfIceCream[person]
        
        if let flavor = flavor {
            return flavor
        }
        else {
            return nil
        }
        
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        
        for human in favoriteFlavorsOfIceCream.keys {
            
            //Person exists
            if person == human {
                
                //Replace value
                favoriteFlavorsOfIceCream[person] = flavor
                
                return true
                
            }
            
        }
        
        return false
        
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        
        let old = favoriteFlavorsOfIceCream.removeValue(forKey: person)
        
        if old != nil {
            return true
        }
        else {
            return false
        }
        
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        
        return favoriteFlavorsOfIceCream.count
        
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        
        for (human, _) in favoriteFlavorsOfIceCream {
            
            //Person exists, do not update
            if human == person {
                return false
            }
            
        }
        
        //Safe to add
        favoriteFlavorsOfIceCream[person] = flavor
        return true
        
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        
        var list = ""
       
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for name in allNames {
            
            let flavor = favoriteFlavorsOfIceCream[name]
            
            if let flavor = flavor {
                
                if allNames.last == name {
                    list += "\(name) likes \(flavor)"
                }
                else {
                    list += "\(name) likes \(flavor)\n"
                }
                
            }
            
        }
        
        return list
        
    }
    
    
    
    
    
    
    

}
