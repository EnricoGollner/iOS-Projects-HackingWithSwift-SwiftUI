import UIKit
import Foundation

/*
let int = 2
let double = 2.2
let string = "Nice"

let multiLine = "A phrase with a \"quote\" in a string"  // Para que a palavra "quote" fique com as aspas sem que finalize as aspas da string
var multiLign = """
A multi-line string
with some
text to test
"""

 let name = "Enrico"
 name.count
 
 name.uppercased()
 name.hasPrefix("A day")
 let fileName = "france.jpg"
 fileName.hasSufix(".jpg")
 
 var string = "Em inglês \"a\" é para consoantes e \"an\" para vogais"  // backslash para usar palavras com aspas/citações dentro de strings
*/

 
/* Type annotations
let number: Int = 7
let pi: Double = 7.77
let name: String = "Swift"
let isTop: Bool = true  // or false
let no: Bool = false

let x = 10
let stringConv = String(x)

let y = "10"
let intConv = Int(y)
*/

/*
    Booleans:
let arch = "foto.jpg"
arch.hasSuffix(".jpg")
let isMultiple = 120.isMultiple(of: 3)
 
var gameOver = true
gameOver.toggle()  // false
!gameOver  // true
*/

/* Operadores lógicos: (mesmos do JavaScript)
let comp = 10 > 2
let x = 10
let y = 20
let res = 10 != 20  // Diferente
*/



/* Operadores de incremento:
var z = 10
z += 1
z -= 0
 */

/* Condicionais e ternário

let isHungry = true
let isThirsty = true

if isHungry {
    print("Estou com fome!")
} else if isThirsty{
    print("Estou com sede!")
} else{
    print("Estou de boa!")
}

// Quando encontra uma condição verdadeira não executa o resto do bloco de código

var product: String
let company = "Apple"
// Operador Ternário:  expressao ? true : false
product = company == "Apple" ? "iPhone" : "Android"
*/


/*Tuplas
let coords: (Double, Double) = (23.4, 54.22)
coords.1

let coords = (lat: 23.2, long: 54.22)
coords.lat
coords.long

// DESTRUCTOR
let camera = (x: 10, y: 20, z: 21)
let (x, y, _) = camera  // O underline é para não criar a variável z
print(x)
print(y)

let user = (name: "Enrico", age: 18)
user.name
user.age
*/

/* ARRAYS E MODIFICADORES DE ARRAYS
 
let userNames: [String] = ["Thiago", "Jorge", "Enrico"]
var userNames: [String] = []
userNames.append("Enrico")
 
// Making a new empty array of Strings:
var teams [String] = [String]()
var cities: [String] = []
var clues = [String]()
 

userNames += ["Steve", "Elon", "Bill"]  // Adicionando dados de outro array

 var list = Array<Int>()  // Empty array that holds specifically Integers.
 // Angle Brackets (< and >) says that the var list must hold Integers
 // Parenthesis exists here because it's possible to customize the way we create the array: example: give me an integer arrays but i want to have a thousand example integers to start me off each of them with value 0
 list.append(10)
 list.append(80)
 list.append(85)
 print(list[5])
 
 
 var albums = Array<String>()  // It must hold Strings
 albums.append("Folklore")
 albums.append("Red")
 
// Slice (Fatiar)
let threeOfIt = userNames[1...2]  // Não cria um array novo, apenas imprime o anterior na variável, com os objetos do array sendo identificados pelo mesmo indíce que seriam no anterior, logo, não teria índice 0 no caso.
threeOfIt[1]
// RESUMO: Tem as mesmas referências que tinha antes
// A não ser que transformemos em um novo Array com a função interna Array() :
let firstThree = Array(userNames[0...2])
firstThree[0]

// Adicionar elementos no array:
userNames.append("new register")

// Remover todos os elementos no array, o tornando vazio:
// userNames.removeAll()

// Funções de condições:
userNames.contains("Maria")

userNames.isEmpty  // Verifica se está vazio

userNames.count  // Verifica tamanho da lista (como o length)

// acessar o primeiro elemento da lista:
userNames.first

if let first = userNames.first {
    print(first)
}


// Inserir no indíce específico:
userNames.insert("Mark", at: 0)

// Remover no índice específico:
let removed = userNames.remove(at: 0)  // Retorna elemento que foi removido
userNames
// ---------
let removedFirst = userNames.removeFirst()
let removedLast = userNames.removeLast()

// Trocar por slice (fatia):
userNames[0...1] = ["Novo 1", "Novo 2", "Novo 3"]

// Trocar por índice:
userNames.swapAt(0, 1)  // Inverte
*/


/*Estrutura de repetição com WHILE: (PRIMEIRO verifica a condição e depois executa)
var i = 10
while i < 10 {  // Checou e não executou, diferente do repeat
    print(i)
    i+=1
}

print("Nova contagem")
// REPEAT (Executa PRIMEIRO e verifica depois) também chamado de "do while"
i = 10
repeat {
    print(i)
    i += 1
} while (i < 10)  // Executa pelo menos uma vez antes de verificar, portanto, no caso, exibe o 10 antes de parar a execução.
*/


/* Estrutura de repetição com FOR
let range = 0...5  // 0 a 5  - chamado de inclusive
let r = 0..<5  // 0 a 4  - chamado de exclusive

var sum = 0
let count = 10

for i in 1...count{
    sum += i
}
print(sum)
 
Ignorar o index(índice)/contador   e ainda colocando uma condição para que só comece a repetir quando o count for maior que 50:
for _ in 1...count where count > 50{
    print("Oi")
}
*/


/* Operador módulo: %  (resto da divisão)
print("Somente números pares:")
for i in 0...count where i % 2 == 0{
    print("O índice é o \(i)")
}

for i in 0..<5 {
    print("Index é \(i)")
}
*/


/* AULA 11 (ITERANDO EM COLEÇÕES DE DADOS)
let dollars = [5.1, 5.2, 4.9, 5.32, 5.43, 5.11]
let days = ["01/02", "02/02", "03/02", "04/02", "05/02", "06/02"]

// São 6 valores mas a contagem se inicia do 0, então o range tem que ser menor que dollars.count que é 6:
for i in 0..<dollars.count where dollars[i] < 5.0{
    print("Dolar: \(dollars[i]) no dia: \(days[i])")
}

 // Outro jeito:
for day in days{
    print(day)
}

AULA 12:

let dollars = [5.1, 5.2, 4.9, 5.32, 5.43, 5.11]
let days = ["01/02", "02/02", "03/02", "04/02", "05/02", "06/02"]

for i in 0..<dollars.count{
    if days[i] == "03/02"{
        break  // Aí sai do loop
    }
    print("Dolar: \(dollars[i]) no dia: \(days[i])")
}

for i in 0..<dollars.count{
    if days[i] == "03/02"{
        continue  // Pula o dia específicado na condição
    }
    print("Dolar: \(dollars[i]) no dia: \(days[i])")
}
*/


/* Dictionaries:

let employee = [
    "name": "Taylor",
    "job": "Singer",
    "location": "Nashville"
]
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])


let hasGradueted = [
    "Eric": false,
    "Enrico": true,
    "Augusto": true
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()  // An empty dictionary
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "The joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"  // It will overwrite the value stored previously in that "Batman" key

heights.count
heights.isEmpty


var vocalists = [String: String]()
vocalists["Beatles"] = "Everyone"
vocalists["Rolling stones"] = "Mick"
vocalists["None"] = "Enrico"
print(vocalists["None", default: "Unknown"])

vocalists.removeValue(forKey: "None")
print(vocalists["None", default: "Unknown"])
*/

/* Set

let actors: Set<String> = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L. Jackson"
])
print(actors)

var someActors = Set<String>()
someActors.insert("Denzel Washington")
someActors.insert("Tom Cruise")
someActors.insert("Nicolas Cage")
someActors.insert("Samuel L. Jackson")
print(someActors.sorted())


    Set advantages:
    1. Don't allow duplicates/ don't store duplicates.
    2. Really faster in locate. Set store the data in a highly optimized order that makes it very fast to locate items.
*/

/* Enums
 
 É como os literal types (Para não ter erro na seleção por exemplo, só permite ser escolhido as opções válidas, evitando por exemplo um espaço no final por conta do usuário):
 
enum Weekday{
    case monday, tuesday, wednesday, thursday, friday
}  // Tem que ser escolhido apenas um desses

var day = Weekday.monday
day = .tuesday  // It knows from now that it was made to be a Weekday
day = .thursday

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark


 Swift allows us to create a constant and attributes a value after:
let username: String
// lots of more coding
username = "@twostraws"
print(username)
*/

/*    Conditionals and Logical operators  - 100 days of Swift
let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName{
    print("It's \(ourName) vs \(friendName)")
}
if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var numbers: [Int] = [1, 2, 3]
numbers.append(4)

if numbers.count > 3{
    numbers.remove(at: 0)
}
print(numbers)


var userName = ""
if userName == ""{  // In swift, it's faster than userName.count == 0, because swift would count one by one. We can use as condition: userName.isEmpty
    userName = "Anonymous"
}

print("Welcome \(userName)!")

enum Sizes: Comparable{
    case small, medium, large
}
let first = Sizes.small
let second = Sizes.large
print(first < second)  // true  -Because small comes before large in the enum case list
*/

/* How to check multiple conditions:

let age = 16

if age < 17 {
    print("You're too young to vote!")
} else if age == 17{
    print("Next year's time to vote!")
} else{
    print("You can vote!")
}

let temp = 25
if temp > 22 && temp < 30{
    print("It's a nice day")
}

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game!")
}


enum TransportOption{
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter{
    print("Let's fly!")
} else if transport == .bicycle{
    print("There's a bike path.")
} else if transport == .car {
    print("Let's get the road!")
} else {  // It will only run if the other conditions failed
    print("I'm going to hire a scooter now")
}
*/

/* Switch

enum Weather{
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It should be a nice day!")
case .rain:
    print("Pack an umbrella")
case .wind:
    print("Better get something warm")
case .snow:
    print("School's cancelled")
case .unknown:
    print("Our forecast generator's broken")
}

let place = "Metropolis"

switch place{
case "Wakanda":
    print("You're Black Panther!")
case "Gotham":
    print("You're Batman!")
default:  // It will only run if the others are false/wrong.
    print("Who are you?")
}

let day = 5
print("My true love gave to me...")

switch day{
case 5:
    print("5 golden rings")
    fallthrough // continuous to print
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtles doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

let age = 18
let canVote = age >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? "It's before noon" : "It's afternoon!")

let names = ["Jane", "Kyle", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"

enum Theme {
    case light, dark
}

 // Ternary operator
 
let theme = Theme.dark
let background = (theme == .dark) ? "Black" : "White"  // We can use parenthesis to make it clearly to see where's the condition.
*/

/*  LOOPS (For)
for number in [2, 3, 5]{
    print("\(number) is a prime number")
}

let score = 100
for count in 10..<13 {
    print("I'm counting to \(count)")
}

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for os in platforms{
    print("Swift works great on \(os)")
}

// Tabuada de 1 a 10:
for i in 0...10 {
    print("The \(i) times table")
    
    for j in 0...10{
        print("    \(i) x \(j) is \(i * j)")
    }
    
    print()
}

var lyric = "Haters gonna"

for _ in 1...5{
    lyric += " hate"
}
print(lyric)

var lyric2 = "I'm just gonna"
for _ in 1...5{
    lyric2 += " shake"
}
print(lyric2)
*/


/* While LOOP (Very useful when you don't know how many times a loop is going to go around)

var countdown = 10

while countdown > 0{
    print("\(countdown)...")
    countdown -= 1
}
print("Blast off!")  // "Decolar"

// Functionality .random exists both int and double
let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
print("Critical hit!")

while roll != 2{
    break  // Will stop to carry on
    roll = Int.random(in: 1...20)
}
*/

// How to skip loop items with break and continue

/* continue will ignore:
let filenames: [String] = ["me.jpg", "work.txt", "sophie.jpg"]
for filename in filenames {
    if filename.hasSuffix(".txt"){
        continue  // Ignores ".txt" file and cary on
    }
    print("Found picture: \(filename)")
}
 */

/*  Break and continue
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000{
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
        
        if multiples.count == 10{
            break
        }
    }
}
print(multiples)

let scores = [1, 8, 7, 4, 0, 2, 3]
var count = 0

for score in scores{
    if score == 0 {
        break
    }
    count += 1
}

print("You had \(count) scores before you got to 0.")
*/

/* CHECKPOINT 1
let celsius: Double = 31
let farenheit: Double = ((celsius * 9) / 5) + 32
print("\(celsius)°C to farenheit = \(farenheit)°F")
*/

/* CHECKPOINT 2
let list: [String] = ["Joker", "Parasite", "A Star is Born", "Joker"]
let uniq: Set<String> = Set(list)
print("There's \(list.count) elements in the list but only \(uniq.count) of them are unique.")
*/


/* CHECKPOINT 3
for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("FizzBuzz")
    } else if i.isMultiple(of: 3){
        print("Fizz")
    } else if i.isMultiple(of: 5){
        print("Buzz")
    } else{
        print(i)
    }
}
*/

/* Functions DAY 7

let roll = Int.random(in: 1...20)

func printTimesTables(number: Int){  // times in english is "multiply"
    for i in 1...10{
        print("\(number) x \(i) = \(number * i)")
    }
}
printTimesTables(number: 8)  // Swift needs us to rewrite what the parameters are called

func printTimesEndAt(number: Int, end: Int){  // Here number and end are parameters
    for i in 1...end{
        print("\(number) x \(i) = \(number * i)")
    }
}

printTimesEndAt(number: 5, end: 10)  // When the func are bein' called, it's arguments that we pass as parameters

let root = sqrt(49)

func rollDice(end: Int) -> Int{  // It must send back(return) an integer
    return Int.random(in: 1...end)
}
let result = rollDice(end: 6)



// Problem: Do two strings contain the same letters, regardless of their order?

func areLettersIdentical(first: String, sec: String) -> Bool{
    // Ways to solv in one line:
    // first.sorted() == sec.sorted() ? true : false
    // return first.sorted() == sec.sorted()
    first.sorted() == sec.sorted()  // It must return a value (but it only works when the function has 1 single line of code and it must return a value)
}
areLettersIdentical(first: "lgoA", sec: "Algo")

// Pythagoras: a2 = b2 + c2

func pythagoras(b: Double, c: Double) -> Double{
    sqrt(pow(b, 2) + pow(c, 2))
}
let a = pythagoras(b: 3, c: 4)
print(a)


// return empty can exit the func:
func sayHello(){
    return
}
 */

/* Return multiple values from functions

func getUser() -> [String: String]{
    ["firstName": "Taylor",
     "lastName": "Swift"
    ]
}
let user = getUser()
print("Name: \(user["firstName", default: "?"]) \(user["lastName", default: "?"])")


func getUser2() -> (firstName: String, lastName: String){  // Returns a tuple
    (firstName: "Taylor", lastName: "Swift")
}
let user2 = getUser2()
print("Name: \(user2.firstName) \(user2.lastName)")


func getUser3() -> (firstName: String, lastName: String){
    ("Taylor", "Swift")  // Swift knows the order with tuples
}
 
let user3 = getUser3()
print("Name: \(user3.firstName) \(user3.lastName)")

// We could do like:
let (firstName, lastName) = getUser3()  // Destruct
// Caso fosse apenas o nome: let (firstName, _) = getUser3()
print("Name: \(firstName) \(lastName)")

// We can use the same as the 3 but with indexs:
func getUser4() -> (String, String){
    ("Taylor", "Swift")
}
let user4 = getUser4()
print("Name: \(user4.0) \(user4.1)")  // There'll be no problem 'cause swift knows it must have 2 values, so definitely they'll be there
*/


/* Tests by myself:
func getUser(c: String, f: String) -> (String, String){
    (c, f)
}

let user = getUser(c:"Craig", f:"Federighi")
print("His name's \(user.0) \(user.1)")

func getUser(name: String, last: String) -> (firstName: String, lastName: String){
    (firstName: name, lastName: last)
}
let (c, f) = getUser(name: "Craig", last: "Federighi")
print("His name's \(c) \(f)")
*/

/* How to customize parameters labels

func isUppercase(_ string: String) -> Bool {  // underscore here says there's no external parameter name here, allowing us to don't need to write that one when we call the func.
    string == string.uppercased()
}
let string = "HELLO, WORLD"
isUppercase(string)

func printTimesTable(for number: Int){  // Other option's to write a second external name in the parameter so we have both internal and external. Internal being parameter(number) and external being arguments(for).
    for i in 1...10{
        print("\(number) x \(i) = \(number * i)")
    }
}
printTimesTable(for: 5)
*/

/* How to provide default values for parameters
func printTimesTable(for number: Int, end: Int = 10){
    for i in 1...end{
        print("\(number) x \(i) = \(number * i)")
    }
}
printTimesTable(for: 5, end: 12)
printTimesTable(for: 7)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
characters.count
characters.removeAll(keepingCapacity: true) // Keeps the array able to hold 4 items, without being grown and grown...
characters.count
*/


/* How to handle errors in functions:

// 1 step: Defining the kinds of problems that can occur inside our function:
enum PasswordError: Error{
    case short, obvious
}

// 2 step: to write a function that will trigger one or more of those errors
// In our case, we're goin'to write a function that checks the strength of a password:
 
func checkPassword(_ password: String) throws -> String{  // throws means that if there's an error, terminate and don't keep executing, get out
    if password.count < 5 { throw PasswordError.short}
    if password == "12345" { throw PasswordError.obvious}
    
    if password.count < 8{
        return "ok"
    } else if password.count < 10{
        return "Good"
    } else{
        return "Excelent"
    }
}
// If a function is able to throw errors, we must mark it with "throw" before the return type.
// If the func is marked with the "throw" keyword, not must but it can return errors.

let string = "1234"
 
do{
    let result = try checkPassword(string)
    print("Password rating: \(result)")
    
} catch{
    print("There was an error: \(error.localizedDescription)")
}
*/

/*
let result = try! checkPassword(string)  // safe to throw with no errors or it will return a fatal error
print("Password rating: \(result)")
*/

/* We can use especified/dedicated catches:
do{
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short{
    print("Please use a longer password.")
} catch PasswordError.obvious{
    print("Please use a less obvious password.")
} catch{
    print("There was an error. \(error.localizedDescription)")  // .localizedDescription is the description of what went wrong. What particular we want to look.
}
*/

/*  An example:
 
enum BookErrors: Error{
    case tooFewPages, tooMannyPages
}

func writeBook(title: String, pages: Int) throws{
    switch pages{
    case 0...50:
        throw BookErrors.tooFewPages
    case 51...400:
        print("That's good!")
    default:
        throw BookErrors.tooMannyPages
    }
    
}
do{
    try writeBook(title: "Good One", pages: 200)
} catch{
    print("There's an error: \(error)")
}
*/
/*
func getUser2() -> (first: String, last: String) {
    ("Craig", "Federighi")
}

let user = getUser2()
print("The man is \(user.0) \(user.1)")

func getUser(c: String, f: String) -> (frst: String, sec: String){
    (c, f)
}
let res = getUser(c: "Craig", f: "Federighi")
print("The man is \(res.frst) \(res.sec)")
*/

// Checkpoint 4:
/*
    Write a function that accepts an integer from 1 through 10_000 and returns
    the integer square root of that number. (Can't user sqrt())


enum errors: Error{
    case outOfBound, noRoot
}

func sqr(_ number: Int) throws -> Int{
    if number >= 1 && number <= 10_000{
        var answer: Int = 0
        for i in 1...(number/2){
            if i*i == number {
                answer = i
            }
        }
        
        if answer == 0{  // If you can't find the square root (that must be only integers here) throw "no root"
            throw errors.noRoot
        } else{
            return answer
        }
        
    } else{
        throw errors.outOfBound
    }
}

do{
    let res = try sqr(25)
    print(res)
} catch errors.outOfBound{
    print("Out of bounds")
} catch errors.noRoot{
    print("no root")
} catch{
    print("Theres an error: \(error)")
}
 */
/*
func greetUser(){
    print("Oh, Hi there!")
}
greetUser()
let greetCoppy = greetUser  // When we're coping a func into a var or const, we can't use parentheses. If we put on the parentheses, it will only runs and holds the func return
greetCoppy()
*/

/* How to create and use closures

let sayHello = {  // Closures: we're putting a function in a constant
    print("Oh, hi Man!")
}
sayHello()
*/

/*
func getUserData(id: Int) -> String{
    if id == 1989{
        return "Taylor Swift"
    } else{
        return "Anonymous"
    }
}
let data: (Int) -> String = getUserData  // Copying and typing the func to be used in that const
let user = data(1989)
print(user)
 
 let measureSize = { (inches: Int) -> String in
     switch inches{
     case 0...26:
         return "XS"
     case 27...30:
         return "S"
     case 31...34:
         return "M"
     case 35...38:
         return "L"
     default:
         return "XL"
     }
 }
 measureSize(20)
 // WE DON'T USE PARAMETER NAMES WHEN CALLING A CLOSURE (WE CAN SEE ABOVE THAT WE DIDN'T USED THE PARAMETER NAME "inches" BEFORE PASSING THE ARGUMENT 20)

*/

/* Passing it to a closure:
let getUserData = { (id: Int) -> String in
    if id == 1989{
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}
let userFromClosure = getUserData(1989)
print(userFromClosure)
*/
 
/*
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sorted = team.sorted()
print(sorted)

func captainFirstSorted(name1: String, name2: String) -> Bool{
    if name1 == "Suzanne"{
        return true  // Suzanne should come before anybody else
    } else if name2 == "Suzanne"{
        return false  // saying: Name one should not come before name two, name two should come before name1 as we're trying to put "Suzzane at first"
    }
    
    return name1 < name2  // Otherwise, it does the regular sort
}
// When you call sorted you can pass in a function to create a custom sort order how do you want to do sort as long as that thing accepts two strings comming in and returns a boolean, .sorted can use it.

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)
*/


/*
let closure = { (name: String) -> String in
    "Hi, \(name)"
    
}
closure("Enrico")

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

// Making "Suzanne" comes first than others even when the array is sorted:

// .sorted(by:) "by:" allows us to pass a function that let's control the sort and that function must 2 parameters (in our case, two strings) and return true if the first string should come before the second string


 let sortedCustomized = team.sorted(by: { (name1: String, name2: String) -> Bool in
     if name1 == "Suzanne"{
         return true
     } else if name2 == "Suzanne"{
         return false
     }
     return name1 < name2
 })
 print(sortedCustomized)
 
 Calling sorted will work with any kind of func being passed in with one important rule:
    That function must accept 2 strings(if the string array) as parameters and return a Bool if the first string should come before the second string
    The func must behave like that.
 So we can resume the func above:
 let sorted = team.sorted(by: { name1, name2 in
     if name1 == "Suzanne"{
         return true
     }
     else if name2 == "Suzanne"{
         return false
     }
     return name1 < name2
 })
 print(sorted)
*/

/* We can go one step further: when one func (this case sorted) accepts another func as it's parameter like sorted does, swfit gives us a special syntax type, called "trailling closure syntax" what it means is:
 This "by" chuck as well as the closing parenthesis goes away we can remove that entirely. Instead, we just go ahead and start the closure:  (It's called "trailing closures")
 
let sorted = team.sorted { name1, name2 in
    if name1 == "Suzanne"{
        return true
    } else if name2 == "Suzanne"{
        return false
    }
    return name1 < name2
}
print(sorted)

/* There's one last way we can make closures less cluterred:
 Swift can automatically provide names using us so-called "shorthand syntax"
 With this we don't write name 1, name 2 in"
 Instead, we get automatic specially named variables counting from 0 ($0, $1, $2...):
*/

let sortedShort = team.sorted {
    if $0 == "Suzanne"{  // First element: $0
        return true
    } else if $1 == "Suzanne"{  // Second element: $1
        return false
    }
    return $0 < $1
}
print(sortedShort)
// That's less clear as we can see. We use it more in simpler situations:

let reverseTeam = team.sorted {
    return $0 > $1  // Reversing the "team array
}
print(reverseTeam)

let array = ["Luna", "Bebel do grau", "Abobora", "Cacau"]
let tatauPrimeiro = array.sorted { name1, name2 in
    if name1 == "Cacau"{
        return true
    } else if name2 == "Cacau"{
        return false
    }
 
    return name1 < name2
}
print(tatauPrimeiro)

let reversedArray = array.sorted { $0 > $1 }  // shorthand syntax simplified
print(reversedArray)

// There are no fixed rules about when to use shorthand syntax
*/

// More examples of how powerful closures are:

// on array we have a filter func that lets us run some code on every item of the array then send back a new array containing the items that passed our test

/* Challange: Find all the team players whose name begins with capital:

let list = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let tOnly = list.filter { $0.hasPrefix("T") }  // Returns all the people who the name starts with "T"
print(tOnly)

// There's the "map" function too, a func that let us transform every item in the array:
let upperList = list.map { $0.uppercased() }
print(upperList)
*/

/* Write func that accepts func as parameters:

func greetUser(){
    print("Oh, hey there!")
}
greetUser()

let greetCopy: () -> Void = greetUser
greetCopy()

*/

/*func makeArray(size: Int, using generator: ()->Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size{
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}
// Theres 2 ways for calling this func:

let rolls = makeArray(size: 20) {
    Int.random(in: 1...20)
}
print(rolls)
*/

/*
func makeArray(size: Int, using generator: ()->Int) -> [Int]{
    var numbers = [Int]()
    for _ in 1...20{
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}
// First one: creating a dedicated func first and then passing it as an argument for the "using" parameter
func generateNumber() -> Int{
    Int.random(in: 1...20)
}
let rolls = makeArray(size: 50, using: generateNumber)


// Second: Using a trailing closure with the func that generates the Integer directly:
let rollsClosure = makeArray(size: 50){ //() in      It works the same way without () in
    Int.random(in: 1...20)
} // This closure is the argument for the generator func passed as parameter.

// We can make function accept multiple function parameters if we want to in wich case you can specify multiple trailing closures if they are the last parameters:
// The syntax here is very common in SwiftUi even

func doImportantWork(first: ()->Void, second: ()->Void, third: ()->Void){
    print("About to start 1° work")
    first()
    print("About to start 2° work")
    second()
    print("About to start 3° work")
    third()
    print
}

doImportantWork {
    print("This is the first one")
} second: {
    print("This is the second work")
} third: {
    print("This is the third one")
}
*/

/* Checkpoint 5:
    With the input luckyNumbers:
 .filter out any numbers that are even
 .sort the array in ascending order
 .Map them to strings in the format "7 ia a lucky number"
 
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

 -- One chain to do it:
luckyNumbers.filter{!$0.isMultiple(of: 2)}.sorted().map{print("\($0) is a lucky number.")}

 -- More than one:
let filterEven = luckyNumbers.filter { $0.isMultiple(of: 2) }
print(filterEven)

let ascending = luckyNumbers.sorted()
print(ascending)

let tellingWhatItIs = luckyNumbers.map { "\($0) is a lucky number" }

for i in tellingWhatItIs{
    print(i)
}
*/
/*
struct Album{
    let artist: String
    let title: String
    let year: Int
    
    func printSummarry(){
        print("\(title) (\(year)) \(artist)")
    }
}
let red = Album(artist: "Taylor", title: "Red", year: 2016)
let theScotts = Album(artist: "Travis Scott", title: "The Scotts", year: 2020)

print(red.artist)
print(theScotts.year)

red.printSummarry()
theScotts.printSummarry()
 */
// So we can seee that both consts above are built from the same Album struct we defined but once we create them, they are their own unique value.
// They're unique and individual wich is exactly what we want

//struct Employee{
//    let name: String
//    var vacationRemaining: Int
//
//    mutating func takeVacation(days: Int){
//        if vacationRemaining > days {
//            // vacationRemaining -= days   won't work if we dont mark the func as "mutating" because if the struct's being handled in a constant, it's properties will be too and we can't change constants. It prevines.
//            // We call functions to show but those func shouldn't be allowed to try and change the struct's data because we made it const.
//            // If we want to make a changing data func, we got to say it putting "mutating" before "func" keyword
//            vacationRemaining -= days
//            print("I'm going on vacation")
//            print("Days remaining: \(vacationRemaining)")
//        } else{
//            print("Oops! There aren't enough days remaining.")
//        }
//    }
//}
//
//
//var archer = Employee(name: "Jack Archer", vacationRemaining: 10)  // Quantos dias de férias ele tem
//
//archer.takeVacation(days: 1)  // Quantos dias faltam
//// After marking the func as a "mutating" telling that it changes the data somehow, it wouldn't work with a const, because "multating" forces swift to say "I refuse to build your code if it's a const. It needs to be a variable"
//print(archer.vacationRemaining)  // Dias de férias que ainda tem


// Variables and consts inside the struct are called "Propeties"
// When we have a func inside the struct, they're called "Methods"
// When we create a const or variable (archer) from our own struct we call that "instance"

// When we make an instance of a struct (Employee(name: "Jack Archer", vacationRemaining: 10)), we call "Initializer" because it provides the initial value for all the properties inside the struct

/*
struct Employee{
    let name: String
    let lastName: String
    var vacancyRemaining: Int
    
    mutating func takeVacation(days: Int){
        if vacancyRemaining > days{
            vacancyRemaining -= days
            print("I'm goin on vacation")
            print("Days remaining: \(vacancyRemaining)")
        } else{
            print("Oops! There's no more days.")
        }
    }
}

var appleSoft = Employee(name: "Craig", lastName: "Fettucine",vacancyRemaining: 20)

print(appleSoft.name)
print(appleSoft.vacancyRemaining)

appleSoft.takeVacation(days: 2)
*/

/* How to compute property values dynamically

struct Employee {
    let name: String
    var vacataion: Int
}
var archer = Employee(name: "Arthur Archer", vacataion: 14)
archer.vacataion -= 4
print(archer.vacataion)
archer.vacataion -= 5
print(archer.vacataion)
 
// Above we lost how many days that was originally allocated.
*/

/* To don't lost the value, we could use a computed property:
struct Employee{
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {  // Calculated dynamically
        vacationAllocated - vacationTaken
    }
}

var archer = Employee(name: "Archer")
archer.vacationTaken += 5
print(archer.vacationRemaining)
archer.vacationTaken += 1
archer.vacationRemaining  // When we call it, it makes the calcule dynamically.
*/

//
//enum PasswordErrors: Error{
//    case short, obvious
//}
//
//func checkStrength(_ password: String) throws -> String{
//    if password == "1234" { throw PasswordErrors.obvious}
//    if password.count < 8 { throw PasswordErrors.short }
//
//
//    if password.count == 8{
//        return "Okay!"
//    } else if password.count >= 9{
//        return "Good!"
//    } else{
//        return "Excelent!"
//    }
//}
//
//let pass: String = "1234"
//
//do{
//    let result = try checkStrength(pass)
//    print("Your password is \(result)")
//} catch PasswordErrors.obvious{
//    print("Senha muito óbvia")
//} catch PasswordErrors.short{
//    print("Senha muito curta")
//} catch{
//    print("There's an error")
//}
/*
enum PasswordErrors: Error{
    case short, obvious
}

func checkStrength(_ password: String) throws -> String{
    if password == "1234"{ throw PasswordErrors.obvious }
    if password.count < 8 { throw PasswordErrors.short }
    
    if password.count < 10{
        return "Okay!"
    } else if password.count < 14{
        return "Good!"
    } else{
        return "Excellent!"
    }
}
let pass: String = "123456789135155"

do{
    let res = try checkStrength(pass)
    print("Password strength: \(res)")
} catch PasswordErrors.obvious{
    print("Password's obvious.")
} catch PasswordErrors.short{
    print("Password's too short.")
} catch{
    print("There's an error: \(error)")
}

let res = try! checkStrength(pass)
print(res)
*/

/* Calculator challange:

enum Operations: String{
    case Plus, Sub, Multiply, Divide
}
func calc(_ x: Int, _ y: Int, operation: Operations) throws -> Int{
    switch operation{
    case .Plus:
        return x + y
    case .Sub:
        return x - y
    case .Multiply:
        return x * y
    case .Divide:
        return x / y
    }
}
let op = Operations.Multiply

do{
    let res: Int = try calc(2, 4, operation: op)
    print(res)
} catch {
    print("There's an error: \(error)")
}

let res = try! calc(7, 3, operation: Operations.Multiply)
print(res)


enum PassErrors: Error{
    case short, obvious
}

func checkStrength(_ pass: String) throws -> String{
    if pass == "1234"{ throw PassErrors.obvious }
    if pass.count < 8{ throw PassErrors.short }
    
    if pass.count < 10{
        return "Okay!"
    } else if pass.count < 12{
        return "Good!"
    } else{
        return "Excellent!"
    }
}

let pass = "123352611613563"

do{
    let ressPass = try checkStrength(pass)
    print("Password's strength: \(ressPass)")
} catch PassErrors.obvious{
    print("That's obvious!")
} catch PassErrors.short{
    print("That's short!")
}
*/
// Structs have 2 kinds of properties: 1°- Stored property 2° - Computed property: That recalculates the value of the property everytime it's accessed. This means this computed properties are, basically, a blend of stored properties and methods. In that, they are accessed like stored properties but they work like functions, they run some code:

//struct Employee{
//    let name: String
//    var vacationAllocated: Int = 14
//    var vacationTaken: Int = 0
//
//    var vacationRemaining: Int {  // Computed propertie - Calculated dynamically
//        get{
//            vacationAllocated - vacationTaken
//        }
//        set{  // If we set vacation remaining for an employee we want their allocation to go up or low, more or less
//            vacationAllocated = vacationTaken + newValue  // newValue's automatically provided to us by swift inside the setter. Here's the new value that's being provided what do you want to do with it. It's the value setted when we handle a value in vacationRemmaining
//        }
//    }
//}
//
//var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
//archer.vacationTaken += 4
//archer.vacationRemaining = 5  // The newValue now's 5
//print(archer.vacationAllocated)
//
// vacationRemaining is a computed propertie, so we couldn't write to it though, because we didn't told swift how to do that before: using get and set as it's being used now.

/*
struct Employee{
    let name: String
    var vacationAllocated: Int
    var vacationTaken: Int = 0
    
    var vacationRemaining: Int {
        get{
            vacationAllocated - vacationTaken
        }
        set{
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer = Employee(name:"Sterling Archer", vacationAllocated: 10)
archer.vacationTaken += 3
print(archer.vacationRemaining)
archer.vacationRemaining = 5  // It's being used in the computed propertie as the "newValue"
print(archer.vacationAllocated)

struct SwordFighter{
    var name: String
    var introdution: String{
        return "My name is \(name)"
    }
}
let inigo = SwordFighter(name: "Inigo Montoya")
print(inigo.introdution)

struct Investor{
    var age: Int
    var investmentPlan: String{
        if age < 30{
            return "Shares"
        } else if age < 60{
            return "Equites"
        } else{
            return "Bonds"
        }
    }
}

let inv = Investor(age: 38)
print(inv.investmentPlan)
*/

// How to take action when a property changes:

// Swift let us create property observers

/* Why it's useful:
 struct Game{
 var score = 0
 }
 
 var game = Game()
 game.score += 10
 print("Score's now \(game.score)")
 game.score -= 3
 print("Score's now \(game.score)")
 game.score += 1
 // There's a bug because we can forget to say it as we didn't after the last operation
 // We want to print the score whenever it changes. We need a property observers:
*/


//struct Game {
//    var score = 0 {
//        didSet{  // Property observer that's being called everytime we changes score value
//            print("Score is now \(score)")
//        }
//    }
//}
//
//var game = Game()
//game.score += 10
//game.score -= 3
//game.score += 1
//
//struct App{
//    var contacts = [String]() {
//        willSet{  // When a score is about to change
//            print("Current value is \(contacts)")
//            print("New value will be \(newValue)")  // newValue is the new value being stored in contacts
//        }
//
//        didSet{
//            print("There are now \(contacts.count) contacts")
//            print("Old value was: \(oldValue)")  // swift provides that constant "oldValue" inside didSet, to read what the score was previously
//        }
//    }
//}
//
//var app = App()
//app.contacts.append("He")
//app.contacts.append("She")


// Be careful: there's problem of performances if we put too much work inside property observers like savesFiles...

/*
struct Wine{
    var age: Int
    var isVintage: Bool
    var price: Int{
        if isVintage{
            return age + 20
        } else{
            return age + 5
        }
    }
}
var malbec = Wine(age: 2, isVintage: true)
print(malbec.price)


struct Keyboard{
    var isMechanical: Bool = false  // Default value
    var noiseLevel: Int{
        if isMechanical{
            return 11
        } else{
            return 3
        }
    }
}
let redragon = Keyboard(isMechanical: true)
print(redragon.noiseLevel)

struct Investor{
    var age: Int
    var investmentPlan: String{
        if age < 30{
            return "Shares"
        } else if age < 60{
            return "Equities"
        } else{
            return "Bonds"
        }
    }
}
let someInvestor = Investor(age: 18)
print(someInvestor.investmentPlan)

struct Toy {
    var color: String
    var isForGirls: Bool {
        if color == "Pink"{
            return true
        } else{
            return true
        }
    }
}
let anything = Toy(color: "Blue")
print(anything.isForGirls)

struct Game{
    var score: Int = 0 {
        didSet{  // Whenever we change, we print
            print("Score was \(oldValue)")
            print("Score is now \(score)")
        }
    }
}
var game = Game()
print("-----------")
game.score += 2
print("-----------")
game.score += 5
print("-----------")

struct App{
    var contacts = [String](){
        willSet{  // Being changed
            print("Current value is \(contacts)")
            print("New value will be \(newValue)")
        }
        didSet{  // Already changed
            print("------------------------")
            print("There are now \(contacts.count)")
            print("The old value was \(oldValue)")
            print("========================")
        }
    }
}
var app = App()
app.contacts.append("Jobs")
app.contacts.append("Cook")
app.contacts.append("Federighi")

struct BankAccount{
    var name: String
    var isMillionaire = false
    var balance: Int{
        didSet{
            if balance > 1_000_000{
                isMillionaire = true
            } else{
                isMillionaire = false
            }
        }
    }
}
var cook = BankAccount(name: "Tim Cook", balance: 0)
print(cook.isMillionaire)
cook.balance += 1_500_000
print(cook.isMillionaire)
print("--------")

struct MyApp{
    let name: String
    var isOnSale: Bool{
        didSet{
            if isOnSale{
                print("You can buy my app now!")
            } else{
                print("Maybe later you can buy my app!")
            }
        }
    }
}
var user = MyApp(name: "Craig", isOnSale: true)
user.isOnSale = true

print("----------------")

struct Person{
    var clothes: String{
        didSet{
            print("I'm changing my \(clothes) now")
        }
    }
}
var person = Person(clothes: "T")
person.clothes = "T-shirt"

// You can't attach a property observer to a constant, because it will never change
print("====================")
*/

// How to create custom initializers:

/* First an example of a memberwise initializer:
 struct Player{
    let name: String
    let number: Int
 }
 let player = Player(name: "SamuraiX", number: 18)
 */

/* Customizable initializers:
struct Player{
    let name: String
    let number: Int
    
    init(name: String, x: Int) {  // It looks like func but swift treats initializers specially
        self.name = name  // self is used to clarify we mean assign the name parameter to self's name property
        self.number = x
        // we mean the name property that belongs to my current player instance set that to be the parameter name
    }  // They always return the type of data they belong to
}
 // It can be customizable as we want it to be but it must give values to all the properties
*/
//
//struct Player{
//    let name: String
//    let number: Int
//
//    init(name: String){
//        self.name = name
//        number = Int.random(in: 1...20)
//    }
//}
//let player = Player(name: "SamuraiX")
//print(player.number)
//
////struct Country {
////    var name: String
////    var usesImperialMeasurements: Bool
////
////    init(countryName: String){
////        name = countryName
////        let imperialCountries = ["Liberia", "Myanmar", "USA"]
////        if imperialCountries.contains(name){
////            usesImperialMeasurements = true
////        } else{
////            usesImperialMeasurements = false
////        }
////    }
////}
//
//struct Country{
//    var name: String
//    var usesImperialMeasurements: Bool
//
//    init(countryName: String){
//        name = countryName
//        let imperialCountries = ["Líberia", "Myanmar","USA"]
//        if imperialCountries.contains(name){
//            usesImperialMeasurements = true
//        } else{
//            usesImperialMeasurements = false
//        }
//    }
//}
//
//let country = Country(countryName: "USA")
//print(country.usesImperialMeasurements)
//
////struct Message {
////    var from: String
////    var to: String
////    var content: String
////
////    init(){
////        from = "Unknown"
////        to = "Unknown"
////        content = "Yo"
////    }
////}
////let message = Message()
//
//struct Cabinet{
//    let height: Double
//    let width: Double
//    let area: Double
//    init(itemHeight: Double, itemWidth: Double){
//        height = itemHeight
//        width = itemWidth
//        area = height * width
//    }
//}
//let cabinet = Cabinet(itemHeight: 2.2, itemWidth: 1.2)
//print(cabinet.height)
//print(cabinet.width)
//print(cabinet.area)
//
//
//let drawers = Cabinet(itemHeight: 2.0, itemWidth: 3.5)
//print(drawers.height)
//print(drawers.width)
//print(drawers.area)
//
//let ages = [20, 38, 30, 45]
//let allAdults: Bool = ages.allSatisfy { $0 >= 18 }
//print(allAdults)
//
//print("-----")
//let numbers = [1, 2, 3, 4, 5, 6, 7]
//for number in numbers where number.isMultiple(of: 2){
//    print(number)
//}
//
//struct Message{
//    var from: String
//    var to: String
//    var content: String
//    init(){
//        from = "Unknown"
//        to = "Unknown"
//        content = "Yo"
//    }
//}
//let message = Message()
//print(message.content)
//
//struct Cottage{
//    var rooms: Int
//    var rating = 5
//    init(rooms: Int){
//        self.rooms = rooms
//    }
//}
//
//let bailbrookHouse = Cottage(rooms: 4)
//print(bailbrookHouse.rooms)
//print(bailbrookHouse.rating)
//
//struct Album{
//    let title: String
//    let artist: String
//    let year: Int
//
//    func printSummary(){
//        print("\(title) \(year) by \(artist)")
//    }
//}
//
//let album = Album(title: "Red", artist: "Taylor Swift", year: 2016)
//album.printSummary()
//
//
////struct EmployeeRem{
////    let name: String
////    var vacationRemaining: Int
////
////    mutating func takeVacation(days: Int){
////        if vacationRemaining > days{
////            vacationRemaining -= days
////            print("-------")
////            print("I'm going on vacation")
////            print("Days remainin: \(vacationRemaining)")
////        } else{
////            print("Oops!")
////        }
////    }
////}
////var empl = EmployeeRem(name: "Archer", vacationRemaining: 2)
////print(empl.name)
////empl.takeVacation(days: 1)
//
//struct EmployeRem{
//    let name: String
//    var vacationAllocated: Int = 14
//    var vacationTaken: Int = 0
//    var vacationRemaining: Int{
//        get{  // O que é pego quando chamamos
//            vacationAllocated - vacationTaken
//        }
//        set{  // O que é armazenado quando atribuímos um valor ao chamarmos essa property
//            vacationAllocated = vacationTaken + newValue  // O alocado até o momento + o newValue
//        }
//    }
//}
//var empl = EmployeRem(name: "Enrico")
//print(empl.vacationRemaining)
//empl.vacationTaken += 4
//print(empl.vacationRemaining)
//empl.vacationRemaining = 5
//print(empl.vacationAllocated)
//
//struct GameRem{
//    var score = 0 {
//        didSet{
//            print("Score is now \(score)")
//        }
//    }
//}
//var gameRem = GameRem()
//print(gameRem.score)
//gameRem.score += 2
//
//struct AppRem{  // Property observer:
//    var contacts = [String](){
//        willSet{  // Still setting
//            print("Current value: \(contacts)")
//            print("New value is \(newValue)")
//        }
//        didSet{  // Setted
//            print("There are now \(contacts.count) contacts")
//            print("Old value is \(oldValue)")
//        }
//    }
//}
//
//var appRem = AppRem()
//appRem.contacts.append("Jake")
//appRem.contacts.append("Hope")
//appRem.contacts.append("Fettucini")
//
//struct Dog{
//    var age: Int {
//        didSet{
//            let dogYears = age * 7
//            print("I'm now \(dogYears) in dog years.")
//        }
//    }
//}
//var dog = Dog(age: 18)
//dog.age = 18


//struct BankAcount{
//    private(set) var funds = 0
//
//    mutating func deposit(amount: Int){
//        funds += amount
//    }
//
//    mutating func withdraw(amount: Int) -> Bool{
//        if funds >= amount{
//            funds -= amount
//            return true
//        } else{
//            return false
//        }
//    }
//}
//
//var acount = BankAcount()
//
//acount.deposit(amount: 200)
//
//let succes = acount.withdraw(amount: 100)
//
//if succes{
//    print("Withdrew money successfully!\nNow my funds are: £\(acount.funds),00")  // \n break the line as in other languages.
//} else{
//    print("Failed to get the money.\nFunds: £\(acount.funds),00")
//}

// acount.funds -= 1000  // It shouldn't be allowed, then we use private

/*

 private -> Don't let anything outside the struct use this
 
 fileprivate -> Don't let anything outside the current file use this
 
 public -> Let anyone, anywhere use this.
 
 private(set) -> it means: "let anyone read this property externally or internally but only let my internals methods write it
 
 
 tip: If you have a private access control value property inside your struct, there's a good chance you have to create your own initializer":
*/

/* Wrong way:
 
 struct FacebookUser{
    private var privatePosts: [String]  // private access controll value property
    public var publicPosts: [String]
 }
 let user = FacebookUser()
 
 If you have a private access control value property inside your struct, there's a good chance you have to create your own initializer.
 // This has a private property, so Swift is unable to generate its memberwise initializer for us.
*/

/*
struct FacebookUser{
    private var privatePosts: [String]
    public var publicPosts: [String]
    
    init(publicPosts: [String]){
        self.publicPosts = publicPosts
        privatePosts = ["Oh my my my"]
    }
}
let user = FacebookUser(publicPosts: ["Yeah, I hate BTS"])

struct Person{
    private var socialSecurityNumber: String
    init(ssn: String){
        socialSecurityNumber = ssn
    }
}
let arnold = Person(ssn: "555-55-555")

struct Contributor{
    private var name = "Anonymous"
}
let paul = Contributor()
print(paul)

struct SecretAgent {
    private var actualName: String
    public var codeName: Int
    init(name: String, codeName: Int){
        self.actualName = name
        self.codeName = codeName
    }
}

let bond = SecretAgent(name: "James Bond", codeName: 007)
print(bond.codeName)

struct Doctor{
    var name: String
    var location: String
    private var currentPatient = "No one"
    
    init(name: String, location: String, currentPatient: String){
        self.name = name
        self.location = location
        self.currentPatient = currentPatient
    }
}

struct AppleOffice{
    private var passCode: String
    var adress: String
    var employees: [String]
    init(adress: String, employees: [String]){
        self.adress = adress
        self.employees = employees
        self.passCode = "GatesCopiedTimeToDeleteSystem32"
    }
}
let appleOfice = AppleOffice(adress: "Apple Park", employees: ["Enrico Gollner"])
print(appleOfice.adress)
print(appleOfice.employees)

struct School{
    var staffNames: [String]
    private var studentNames: [String]
    init(staff: String...){
        self.staffNames = staff
        self.studentNames = [String]()
    }
}
let royalHigh = School(staff: "Mrs. Hughes")
print(royalHigh.staffNames)

struct App{
    var name: String
    private var sales = 0
    
    init(name: String){
        self.name = name
    }
}
let spotify = App(name: "Spotify")
print(spotify.name)

struct Bank{
    private(set) var fund = 0
    
    mutating func deposit(amount: Int){
        fund += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool{
        if fund >= amount{
            fund -= amount
            return true
        } else{
            return false
        }
    }
}

var person = Bank()

person.deposit(amount: 200)
print(person.fund)

let success = person.withdraw(amount: 100)

if succes{
    print("Withdrew my money!\nNow I have £\(person.fund)")
} else{
    print("Can't withdraw. Not enough!")
}
*/

// static properties and methods:

/*
    With the static properties and methods we can access them directly on the struct
    This is because they're both static they don't exist uniquely in every school insance but exist only once across all school instances, they're all shared.
*/

/*
struct School{
    static var studentCount = 0
    
    static func add(student: String){
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

// We see that we didn't use "mutating", because we only have to have mutating as a keyword times when the struct might be a constant or a variable. There's no instance here, only struct itself

static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

print(AppData.version)


// static property used to example for the struct:
struct Employee{
    let usernme: String
    let password: String
    
    static let example = Employee(usernme: "cfederighi", password: "h4airf0rceOne")
}
print(Employee.example)

struct BankAcount{
    private(set) var funds: Double = 0.00
    
    mutating func deposit(amount: Double){
        funds += amount
    }
    
    mutating func withdraw(amount: Double) -> Bool{
        if funds >= amount{
            funds -= amount
            return true
        } else{
            return false
        }
    }
}
var craigsAccount = BankAcount()

craigsAccount.deposit(amount: 200.00)

let success = craigsAccount.withdraw(amount: 100.00)
if success{
    print("Yeah, I withdrew money successfuly.\nNow I have £\(craigsAccount.funds)")
} else{
    print("I haven't enough money to withdraw")
}
*/

/*
 
struct School{
    static var studentCount = 0
    
    let list = ["Cook", "Jonathan"]
    
    static func add(student: String){
        print("\(student) joined the shool.")
        studentCount += 1
    }
}
School.add(student: "Ryan")  // We can access the func and propety even not using any instance, just the strcut itself.
print(School.studentCount)

var school = School()
// school.add(student: "Craig")  -> Error: Static member 'add' cannot be used on instance of type 'School'

// School.list -> We can't access regular stuff from static stuff

// to organize common data that might be used in various places:
struct AppData{
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://wwww.hackingwithswift.com"
}
print(AppData.version)


// To example:  (in this case, example Employee's initializer)
struct Employee{
    let username: String
    let password: String
    
    static let example = Employee(username: "CFederighi", password: "h4irf0rceOne")
}
print(Employee.example)


// Examples from the test:
struct NewsStory{
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    
    var headline: String
    
    init(headline: String, isBreaking: Bool){
        self.headline = headline
        if isBreaking{
            NewsStory.breakingNewsCount += 1
        } else{
            NewsStory.regularNewsCount += 1
        }
    }
}

struct Marathon{
    static let distance = 42
    var name: String
    var location: String
}

struct Cat{
    static var allCats = [String]()
    
    static func add(cat: String){
        Cat.allCats.append(cat)
    }
    static func chorus(){
        for _ in allCats{
            print("Meow")
        }
    }
}
Cat.add(cat: "Hyata")
Cat.chorus()


 struct Person {
     static var population = 0
     var name: String
     init(personName: String) {
         name = personName
         population += 1
     }
 }
 
 // Referencing a static property inside a regular method isn't allowed.
 // Right way:
 */
//struct Person{
//    static var population = 0
//
//    var name: String
//    init(personName: String){
//        name = personName
//        Person.population += 1
//    }
//}
//var person = Person(personName: "Craig")
//print(Person.population)
//
//struct Order{
//    static let orderFormat = "xxx-xxxx"
//    var orderNumber: String
//}
//
//struct Raffle{
//    static var ticketsUsed = 0
//    var name: String
//    var tickets: Int
//    init(name: String, tickets: Int){
//        self.name = name
//        self.tickets  = tickets
//        Raffle.ticketsUsed += tickets
//    }
//}
//
//struct LegoBrick{
//    static var numberMade = 0
//    var shape: String
//    var color: String
//    init(shape: String, color: String){
//        self.shape = shape
//        self.color = color
//        LegoBrick.numberMade += 1
//    }
//}

/* Checkpoint 6
 Create a struct to store information about a car. Include:
    . It's model
    . Number of seats
    . Current gear (marcha)
Add a method to change gears up or down  // 1 method or 2

 Have a think about variables and access control
 
 . Don't allow invalid gears - 1...10 seems a fair maximum range
*/

/* First solution:
struct Car{
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int = 0
    
    mutating func changeGear(speed: Int){
        if speed <= 20{
            currentGear = 1
        } else if speed <= 40{
            currentGear = 2
        } else if speed <= 50{  // Entre 40 e 50
            currentGear = 3
        } else if speed <= 60{
            currentGear = 4
        } else{
            currentGear = 5
        }
    }
}
var tesla = Car(model: "Tesla", numberOfSeats: 5, currentGear: 2)
tesla.changeGear(speed: 21)
print(tesla.currentGear)
*/

/* Second solution to Checkpoint 6
struct Car{
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int = 1{
        didSet{
            print("Gear changed to \(currentGear)° gear")
        }
    }
    
    mutating func gearUp(){
        if currentGear <= 10{
            currentGear += 1
        }
    }
    
    mutating func gearDown(){
        if currentGear > 0{
            currentGear -= 1
        } else{
            print("There's no where more low")
        }
    }
    
    // Just to test the knowledge, let's create custom initializer
    init(model: String, seats: Int){
        self.model = model
        numberOfSeats = seats
    }
}
var bmw = Car(model: "m3", seats: 5)
bmw.gearUp()
bmw.gearUp()
bmw.gearDown()
bmw.gearUp()
*/


/* Class
class Game{
    var score = 0{
        didSet{
            print("Score is now: \(score)")
        }
    }
}

var level1 = Game()
level1.score += 1
let level2 = level1  // Coping
level2.score += 1

class TIE{
    var name: String
    var speed: Int
    init(name: String, speed: Int){
        self.name = name
        self.speed = speed
    }
}
let fighter = TIE(name: "TIE fighter", speed: 50)

class VideoGame {
    var hero: String
    var enemy: String
    init(heroName: String, enemyName: String){
        self.hero = heroName
        self.enemy = enemyName
    }
}
let monkeyIsland = VideoGame(heroName: "Guybrush", enemyName: "Le chuck")

class ThemePark{
    var entryPrice: Int
    var rides: [String]
    
    init(rides: [String]){
        self.rides = rides
        self.entryPrice = rides.count * 2  // £2 per ride
    }
}

class Podcast {
    var hosts: [String]
    init(hosts: [String]){  // Classes must have a custom initializer.
        self.hosts = hosts
    }
}
*/

// How to make one class inherit from another:

//class Employee{
//    let hours: Int
//
//    init(hours: Int){
//        self.hours = hours
//    }
//
//    func printSummary(){
//        print("I work \(hours) hours a day.")
//    }
//}
//
//// We can now make 2 classes that inherit from employee
//final class Developer: Employee{
//    func work(){
//        print("I'm writing code for \(hours) hours")
//    }
//
//    override func printSummary() {  // "override" is used when we want to change a method it got from it's parent. - serve para que passemos esse como mais importante do que o método criado no parent class.
//        print("I'm a developer who will sometimes \(hours) hours a day, but other times will spend hours arguing about whether code should be indented using tabs or spaces.")
//    }
//}
//
//final class Manager: Employee{  // Wiht the "final" keyword we say no other classes can inherit from this one
//    func work(){
//        print("I'm going to meetings for \(hours) hours")
//    }
//}
//
//// class Jack: Manager{} wouldn't build because Manager's a final Class.
//
//let robert = Developer(hours: 8)
//let joseph = Manager(hours: 10)
//robert.work()
//joseph.work()
//
//let novall = Developer(hours: 8)
//novall.printSummary()

// Swift's really smart about how overrides work. If your parent class has a work method and it returns nothing but your child's class has a work method that returns a Bool it worked or not plus maybe a string to designate where the work's being done, that doesn't require an override method.

// If you know for sure your class should not support inheritance, you could mark it as final. This means the class itself can inherit from other things but nothing can inherit from it.


/* How to add initializers for classes:  // More complicated than structs

// If a child class has any custom initializers it must always call the parents initializers after it's finished setting up it's own properties, if it has any.

class Vehicle{
    let isEletric: Bool
    
    init(isEletric: Bool){
        self.isEletric = isEletric
    }
}

class Car: Vehicle{
    let isConvertible: Bool
    
    init(isEletric: Bool, isConvertible: Bool){
        self.isConvertible = isConvertible
        super.init(isEletric: isEletric)
    }
}
// "super" is another one of those values that swift automatically provides to us just like self". It allows us to call up to methods we inherited from a parent class such as, in this case, it's initializer. Used not just in initializers, but with methods too.

let teslaX = Car(isEletric: true, isConvertible: false)


// If a child class does not have any of it's own initializer, it doesn't need custom initializing, it will automatically inherit the initializers of it's parent class:

final class Car2: Vehicle{
    let isConvertible = false
}
let supra = Car2(isEletric: false)  // Here we need only provides the value for it's parent class
*/

//class Vehicle{
//    var wheels: Int
//    init(wheels: Int){
//        self.wheels = wheels
//    }
//}
//
//class Truck: Vehicle{
//    var goodsCapacity: Int
//    init(wheels: Int, goodsCapacity: Int){
//        self.goodsCapacity = goodsCapacity
//        super.init(wheels: wheels)  // We're assigning the argument to the variable inherited from the parent class
//    }
//}
//
//
//class Dog{
//    var breed: String
//    var isPedigree: Bool
//    init(breed: String, isPedigree: Bool){
//        self.breed = breed
//        self.isPedigree = isPedigree
//    }
//}
//class Poodle: Dog{
//    var name: String
//    init(name: String){
//        self.name = name
//        super.init(breed: "Poodle", isPedigree: true)
//    }
//}
//let poodle = Poodle(name: "Scott")
//print(poodle.breed)
//print(poodle.isPedigree)
//
//
//class Instrument{
//    var name: String
//    init(name: String){
//        self.name = name
//    }
//}
//class Piano: Instrument{
//    var isEletric: Bool
//    init(isEletric: Bool){
//        self.isEletric = isEletric
//        super.init(name: "Piano")
//    }
//}
//
//
//class Shape {
//    var sides: Int
//    init(sides: Int){
//        self.sides = sides
//    }
//}
//class Rectangle: Shape{
//    var color: String
//    init(color: String){
//        self.color = color
//        super.init(sides: 4)
//    }
//}


/*
class Vehicle{
    var wheels: Int
    init(wheels: Int){
        self.wheels = wheels
    }
}

class Truck: Vehicle{
    var goodsCapacity: Int
    init(wheels: Int, goodsCapacity: Int) {
        self.goodsCapacity = goodsCapacity
        super.init(wheels: 4)
    }
}

class Student{
    var name: String
    init(name: String){
        self.name = name
    }
    
    func internShip(){
        print("You must")
    }
}
class UniversityStudent: Student{
    var annualFees: Int
    init(name: String, annualFees: Int){
        self.annualFees = annualFees
        super.init(name: name)
    }
}
let stu = UniversityStudent(name: "Mark", annualFees: 0)
stu.name

class Dog{
    var breed: String
    var isPedigree: Bool
    init(breed: String, isPedigree: Bool){
        self.breed = breed
        self.isPedigree = isPedigree
    }
}
class Poodle: Dog{
    var name: String
    init(name: String){
        self.name = name
        super.init(breed: "Poodle", isPedigree: true)
    }
}
let luna = Poodle(name: "luna")
print(luna.breed)


class Employee{
    var hours: Int{
        didSet{
            print("Now it's \(hours) a day.")
        }
    }
    init(hours: Int){
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) a day.")
    }
    
}
final class Dev: Employee{
    var developingHours: Int
    init(hours: Int, developingHours: Int){
        self.developingHours = developingHours
        super.init(hours: hours)
    }
    override func printSummary() {
        print("Sometimes I work more than just \(hours) a day, working \(developingHours) and complaining about somethings.")
    }
}
let mark = Dev(hours: 8, developingHours: 10)
mark.hours
mark.printSummary()
mark.hours += 1

// In struct we couldn't change the properties of a constant instance, even if they're variables:
struct Staff{
    var hoursWorked: Int{
        didSet{
            print("Now is \(hoursWorked) a day.")
        }
    }
}
var craig = Staff(hoursWorked: 8)
craig.hoursWorked += 2



class Instrument{
    var name: String
    init(name: String){
        self.name = name
    }
}
class Piano: Instrument{
    var isEletric: Bool
    init(isEletric: Bool){
        self.isEletric = isEletric
        super.init(name: "Piano")
    }
}

class Shape{
    var sides: Int
    init(sides: Int){
        self.sides = sides
    }
}
class Rectangle: Shape{
    var color: String
    init(color: String){
        self.color = color
        super.init(sides: 4)
    }
}


class Veiculo{
    let isElectric: Bool
    init(isELectric: Bool){
        self.isElectric = isELectric
    }
}

class Carro: Veiculo{
    let isConvertible = false
}
let teslaX = Carro(isELectric: true)
print(teslaX.isConvertible)
*/


/* How to copy classses:

// In swift, all copies of a class instance always point to the same piece of data.
// This means changing one, will automatically change all the others too.
// This happens because in swift, classes are called reference types, they don't hold their own value but instead refer to some other shared pot of data:
class User{
    var username = "Anonymous"
}
var user1 = User()  // Instance
var user2 = user1  // Copy of the instance
user2.username = "Taylor"  // if we change one, the other one will change too
print(user1.username)
print(user2.username)
// It's what allows us to share common data in lots of parts of our program.
// In comparison struct's do not share their data amoungst their copies. It won't change the original, only the copy.
*/

/* Now if we want to make a unique copy of the class instance (sometimes called "deep copy"):
You gotta be able to handle a new instance and then copy across the properties by hand.*/
//class UserCopying{
//    var username = "Anonymous"
//
//    func copy() -> User{
//        let user = User()  // creates a new instance to when we atribute a new value in a copy, don't change the original one.
//        user.username = username
//        return user
//    }
//}
//var userCo1 = UserCopying()
//var userCo2 = userCo1.copy()
//userCo2.username = "Taylor"
//print(userCo1.username)
//print(userCo2.username)

/* Examples to train:

class Starship{
    var maxWarp = 9.0
}
var voyager = Starship()
voyager.maxWarp = 8.0

var enterprise = voyager
enterprise.maxWarp = 9.6

print(voyager.maxWarp)
print(enterprise.maxWarp)

class Hospital{
    var onCallStaff = [String]()
}

var londonCentral = Hospital()
var londonWest = londonCentral
londonCentral.onCallStaff.append("Dr Harlan")
londonWest.onCallStaff.append("Dr Haskins")

print(londonCentral.onCallStaff.count)
print(londonWest.onCallStaff.count)


class Author{
    var name = "Anonymous"
}
var dickens = Author()
dickens.name = "Charles Dickens"
var austen = dickens
austen.name = "Jane Austen"
print(dickens.name)
print(austen.name)

// It's not copying:
class Queen{
    var isMotherOfDragons = false
}
var elizabeth = Queen()
var daenerys = Queen()

daenerys.isMotherOfDragons = true

print(elizabeth.isMotherOfDragons)
print(daenerys.isMotherOfDragons)

class UserCopying{
    var username = "Anonymous"
    
    func copy() -> UserCopying{
        let user = UserCopying()  // creates a new instance to when we atribute a new value in a copy, don't change the original one.
        user.username = username
        return user
    }
}
var userCo1 = UserCopying()
var userCo2 = userCo1.copy()

*/

// How to create a deinitializer for a class:

/*
    Deinitializers:
 1. You dont use "func" with deinitializers.
 2. Deinitializers can never take parameters or return data. (They aren't even written with parenthesees) (For example: is made inside a function that is now finishing).
 3. Deinitializers run when the last copy of a class instance is destroyed. (It'll be automatically caled)
 4. We never call deinitializers directly. (The system calls them for us as needed)
 5. Structs don't have deinitializers. (Because structs don't have copy, structs are always unique)
*/

/*
class User{
    let id: Int
    init(id: Int){  // Create
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit{  // Destroyed  -- No parentheses
        print("User \(id): I'm dead!")
    }
}

// Loop for example
/* If we create a user inside the loop, it'll be destroyed when the loop ends, when that iteration finished and that's the next iteration:
for i in 1...3{
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}
*/

// Remember: the deinitializer happens only when the last remaining reference to that class instance is destroyed.

// In the code below, we can see that it's only being dead when the loop's finished.
var users = [User]()
for i in 1...3{
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}
print("Loop is finished!")
users.removeAll()
print("Array is clear!")

// So they stay alive because they are being stored in the array, even though the constant they're made into, is destroyed as the loop iteration finishes, another reference was alive inside the array, and only when the arrays also cleared, they finally are destroyed.
*/

 
/* How to work with variables inside classes:

class User{
    var name = "Paul"
}

let user = User()
user.name = "Taylor"
print(user.name)

*/

/*

class User{
    var name = "Paul"
}
var user = User()  // If we made it as constant we can't change the actual whole instance of our user
user.name = "Taylor"
// Now we'll change the actual whole instance of our user:
user = User()
print(user.name)


/* Four possible situations here:
 1. Constant class with constant property: Signposts that always point to the same user, who always has the same name (fixed);
 
 2. Constant class with variable property: Signpost that always point to the same user, but their name can change;
 
 3. Variable class with constant property: Signpost that can point to different users, but their names never change;
 
 4. Variable class with variable property: Signpost that can point to differtent users, and those users can also change their names.
*/

// Now this is different from structs because constant structs cannot have their properties changed even if you make the properties inside variable.

struct Person{
    var name = "Mark"
}
var person = Person()
person.name = "Craig"
print(person.name)

let personConst = Person()
// personConst.name = "Craig" It wouldn't be allowed as it's a struct.

/*
 Variable classes can have variable properties changed
 Constant classes can have variable properties changed
 Variable structs can have variable properties changed
 Constant structs cannot have variable properties changed
*/

class Pizza{
    private(set) var toppings = [String]()  // private(set) can't be changed outside of the func but it can be readed.
    func add(topping: String){
        toppings.append(topping)
    }
}
var pizza = Pizza()
pizza.add(topping: "Calabresa")
pizza.add(topping: "Cheese")
print(pizza.toppings)


class School{
    var students = 200
    func expel(student: String, for reason: String){
        print("\(student) has been expelled for \(reason).")
        students -= 1
    }
}

let school = School()
school.expel(student: "Jason", for: "Knowing as much as the professor")

class SewingMachine{
    var itemsMade = 0{
        didSet{
            print("Items made now is \(itemsMade)")
        }
    }
    func makeBag(count: Int){
        itemsMade += count
    }
}
var machine = SewingMachine()
machine.makeBag(count: 2)

struct Park{
    var numberOfFlowers: Int{
        didSet{
            print("Number of flowers planted is now: \(numberOfFlowers)")
        }
    }
    mutating func plantFlowers(qt: Int){
        numberOfFlowers += qt
    }
}
var park = Park(numberOfFlowers: 2)
park.plantFlowers(qt: 2)

struct Piano{
    var untunedKeys = 3
    mutating func tune(){
        if untunedKeys > 0{
            untunedKeys -= 1
        }
    }
}

/*
struct Kindergarten {
    var numberOfScreamingKids = 30
    mutating func handOutIceCream() {
        numberOfScreamingKids = 0
    }
}
let kindergarten = Kindergarten()
kindergarten.handOutIceCream()
 
 // This attempts to call a mutating function in a constant instance of a struct. It's not allowed.
*/

class Light{
    var onState = false
    func toggle(){
        if onState{
            onState = false
            print("Desligado")
        } else{
            onState = true
            print("Ligado")
        }
        print("Click")
    }
}
let light = Light()
light.toggle()
light.toggle()


struct Code{
    var numberOfBugs = 100{
        didSet{
            print("Number of bugs is now: \(numberOfBugs)")
        }
    }
    mutating func fixBug(){
        numberOfBugs -= 100
    }
}
var code = Code()
code.fixBug()


struct Barbecue{
    var charcoalBricks = 20{
        willSet{  // Property observer
            print("While we adding the number of charcoal bricks is: \(charcoalBricks)")
        }
        didSet{  // Property observer
            print("Number of charcoal bricks is now: \(charcoalBricks)")
        }
    }
    mutating func addBricks(_ number: Int){
        charcoalBricks += number
    }
}
var barbecue = Barbecue()
barbecue.addBricks(4)
*/


/* Checkpoint 7

class Animal{
    var legs: Int
    init(legs: Int){
        self.legs = legs
    }
}

class Dog: Animal{
    init(){
        super.init(legs: 4)
    }
    func speak(){
        print("AuAu")
    }
}

class Corgi: Dog{
    override func speak(){
        print("Corgis auau")
    }
}

class Poodle: Dog{
    override func speak(){
        print("Poodle's Auau")
    }
}

let poodle = Poodle()
print(poodle.legs)
poodle.speak()

class Cat: Animal{
    var isTame: Bool
    init(isTame: Bool){
        self.isTame = isTame
        super.init(legs: 4)
    }
    func speak(){
        print("Miaau")
    }
}
class Persian: Cat{
    init(){
        super.init(isTame: true)
    }
    override func speak() {
        print("Persian's miaau")
    }
}

class Lion: Cat{
    init(){
        super.init(isTame: false)
    }
    override func speak() {
        print("Lion's urraawr")
    }
}

class Bird: Animal{
    init(){
        super.init(legs: 2)
    }
    func speak(){
        print("Psipsipsipsi")
    }
}

class BemTeVi: Bird{
    override func speak(){
        print("Bem-te-viiii")
    }
}

let lion = Lion()
print(lion.legs)
print(lion.isTame)
lion.speak()

let bemTeVi = BemTeVi()
print(bemTeVi.legs)
bemTeVi.speak()
*/


/* Protocols

/* Let's simulate a user commuting between their home and their office:
func commute(distance: Int, using vehicle: Car){
    // Lot's of code
}
*/

// We don't actually care what the underlying trip is done with, what we care about is much broader(mais amplo) how long will it take for the user to commute(deslocar) using car vs bus vs a traing and how to perform the actual act of traveling, thi is where protocols come in:

// They let us define a series of properties and methods we want to use, they don't implement them, just say these must exist, there's no code behind them, just a requirement:

protocol Vehicle{  // This is a new type, just like string, blue... So we use capital letter and camel case
    // Inside the protocol, we list all the methods and any properties we want for this protocol to exist in other types. So when someone wants to work with this, they've got to use these method names here.
    var name: String { get }  // It must be readeble
    var currentPassengers: Int { get set }  // It MUST be readed and writed inside func that conforms to vehicle protocol
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
    // No func bodies allowed.  Just the name, parameters and what it'll return
    // It can also say it throws errors r it might mutate, whatever we want.
}

protocol CanbBeEletric{
    
}

// Now we can design types that work with that protocol. This means making new structs, classes enums and more, that implement the requirements for this protocol wich the process we call adopting the protocol or conforming to the protocol. Now the protocol doesn't jave to specify the full range of functionality inside our custom types, just the bare minimum it must have these two methods, it might have five other ones, wich is fine, example:

struct Car: Vehicle, CanbBeEletric{  // We tell swift this car struct conforms the vehicle just like we make subclasses. And we can conform it with many protocols, just by listing them, one by one, separete by a comma(vírgula)
    let name = "car"
    var currentPassengers: Int = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)Km")
    }
    
    func openSunroof(){  // That's new, it's not in protocol but that's okay. You can still add more things beyond(além) the basic conformances.
        print("It's a nice day!")
    }
}
// All the methods we have in vehicle must exist inside car. We must have them to conform to it


struct Bicycle: Vehicle{
    let name = "Bicycle"
    var currentPassengers: Int = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    func travel(distance: Int) {
        print("I'm cycling \(distance)Km")
    }
}

func commute(distance: Int, using vehicle: Vehicle){  // Passing Vehicle as argument we can use any type that conforms to the protocol Vehicle
    if vehicle.estimateTime(for: distance) > 100{
        print("That's too slow. I'll try a different vehicle")
    } else{
        vehicle.travel(distance: distance)  // Passing the parameter distance as argument to the travel func
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int){
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)Km")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 100, using: bike)

// So we can say we don't actually care about the vehicle used, we care about the estimate time

getTravelEstimates(using: [car, bike], distance: 150)

// Examples of protocols:
protocol Climbable{
    var height: Double { get }
    var gradient: Int { get }
}

protocol Mailable{
    var width: Double { get set }
    var height: Double {get set}
}

protocol Learnable{
    var difficulty: Int { get }
}

 It's not possible to create set-only properties in Swift:
 protocol Buildable{
     var numberOfBricks: Int { set }
     var materials: [String] { set }
 }
*/
/*
 How to use opaque return types:
 
func getRandomNumber() -> some Equatable{  // Opaque return types let us hide information in our code but not from the swift compiler (swift understand behind the scenes that it'll send back an equatable value that happens to be an Integer)
    Double.random(in: 1...6)  // the opaque return type allows us to change (we start generating an Integer, now we changed to a Bool, it's flexible)
}

func getRandomBool() -> some Equatable{  // Opaque return types let us hide information in our code but not from the swift compiler(the compiler know what type it will return)
    Bool.random()
}

// This both above (Int and Bool) conform to a common swift protocol called "equatable" wich means these things can be compared for quality: "is three equal to three?" "is 5 == 9?"
// And the equatable protocol is what allows us to use equals equals to compare two instances of the same type:
print(getRandomNumber() == getRandomNumber())
print(getRandomBool() == getRandomBool())

// We can return protocols from funcs

// Return protocols is useful because it let us hide infos

// Opaque return types let us hide information in our code but not from the swift compiler (some equatable)
// Now, returning an opaque return type like this means we still get to focus on the functionality we want

// But the real power thing is that swift always knows the actual type of data going back. He understands what it really is.

// A real example of why this is so heavily used in Swift UI:
/* Swift UI needs to know exactly what kind of layout you want to have in your code. What you want to show in the screen. So it's our job to write code to describe it.
    
    We write all the code describing what needs to be shown in the screen and when swift ui asks for our layout, that description, the whole code, becomes the return type for our layout, it returns the exactly layout, and we need to describe every detail, that wouldn't work that well if we needed to pass it as a type too. It would be bluntly a mile long, and worse, everytime we change our layout, our code, we would have to change the return type to match. This is where opaque return type comes to rescue:
*/
// Swift has a protocol called View:
protocol View {}  // View is brilliant: It's used for some kind of thing we want to appear on the screen (buttons, images, text, shapes... all views) and so when it comes to describing what our layout returns, we say: "some kind of view": "some view", we want to keep our options open to change but swift internally can understand it. Swift knows exaclty what it's being returned, even though we haven't had to specify ourselves and therefore swift will use that to create the correct layout for us.
 */

/* How to create and use extensions: */

// Extensions let us add functionality to any type including ones we made and apple's own types too. To demonstrate this I want to show you a new method on string called ".trimmingCharacters(in: )", this thing removes certain characters from the start and end of a string, things like alphanumerics or decimals only or white space is the most common (like trim() in javaScript).
// It also remove new lines which is commonly the return key or the enter key:

/*
var quote = " The truth is rarely pure and never simple  "
print(quote)
let quoteTrimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)  // .whitespacesAndNewlines actually comes from apple's foundation API wich we get via "cocoa" as does trimmingCharecters(in: )
print(quoteTrimmed)


// Having to call .trimmingCharacters(in: .whitespacesAndNewlines) everytime we want to just trim a string is a bit wordy(prolixo) and so, we can write a extension to make it shorter:

extension String{  // To create a extension: the keyword and the type name which one we're extending (this [case] on strings)
    // What we have inside this extension is part of our extension, gets added to the string type
    func trimmed() -> String{
        self.trimmingCharacters(in: .whitespacesAndNewlines)  // self. will automatically refers to the current string instance, whatever you called this trimmed method on. This is possible because we are already in our string extension. All these things apply to strings.
    }
}
*/
 
/* Using extension rather than something like:
func trim(_ string: String) -> String{
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}
 has several benefits, some of them:
 
 . Code completion (The funcs inside the extension appears in sugestions of the IDEA to compleate after the ".")
 
 . Code organization (extensions are naturally grouped by the type of data they apply to)
 
 . Internal access (Because your extension methods are a full part of the original type as if they were added there in the first place, they get full access to the types internal data, taht means they can use properties and methods with otherwise restrictive access control settings)
 
 . This kinds of extensions make it easier to modify values in place, to change your value directly rather turn a new value:
*/

/*
var quote2 = "   Some phrase  "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String{
    mutating func trim(){  // It's mutating because it applies result of trimmed back to self
        self = self.trimmed()
    }
    
    var lines: [String] {  // Computed property
        self.components(separatedBy: .newlines)  // Returns an array with the lines separeted when it's a new line
    }
}

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)  // How many lines of text were in that

struct Book{
    let title: String
    let pageCount: Int
    let readingHours: Int
}

// Ading a costum initializer in a extension of Book, Swift won't disable the member-wise initializer:
extension Book{
    init(title: String, pageCount: Int){
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

/*
  Book.init(title: <#T##String#>, pageCount: <#T##Int#>)
  Book.init(title: <#T##String#>, pageCount: <#T##Int#>, readingHours: <#T##Int#>)
*/

// Examples of extensions:

extension Double {
    var isNegative: Bool {
        return self < 0
    }
}

extension Int{
    var isEven: Bool{
        return self % 2 == 0
    }
}

var int: Int = 2
print(int.isEven)

extension String {
    mutating func append(_ other: String){  // Has mutating because it's changing the property
        self += other
    }
}

extension Int{
    func times(_ action: () -> Void){
        for _ in 0..<self{
            action()
        }
    }
}

var prin: ()->Void = { print(int) }
int.times(prin)

// Computed property might return a value.

extension Int{
    var isAnswerToLife: Bool {
        let target = 2
        return self == target
    }
}

extension Bool{
    func toggled() -> Bool{
        if self == true{
            return false
        } else{
            return true
        }
    }
}
var isTrue: Bool = false
print(isTrue.toggled())

extension Int{
    func cubed() -> Int{
        return self * self * self
    }
}
int.cubed()

extension Int{
    func clamped(min: Int, max: Int) -> Int {
        if (self > max){
            return max
        } else if (self < min){
            return min
        }
        return self
    }
}

extension String{
    var isLong: Bool{
        return count > 25
    }
}
let phrase = "Hakuna matata"
phrase.isLong

extension String{
    func withPrefix(_ prefix: String) -> String{
        if self.hasPrefix(prefix){ return self }
        return "\(prefix)\(self)"
    }
}

extension String{
    func isUppercased() -> Bool{
        return self == self.uppercased()
    }
}
*/


/* How to create and use protocol extensions:

// Using aptly named(devidamente chamado) protocol extensions we can extend the whole protocol to add real method implementations and any type conforming to that protocol will gain those method implementations. It also works for computer properties too.

extension Collection{  // Array, set dictionary and more all conform to a built in protocol called "Collection" so if we create a extension to Collection rather than to Arrays, we can use it in all types of collections.
    var isNotEmpty: Bool {
        isEmpty == false  // It's the same as we write "self.isEmpty == false"
    }
}


let guests = ["Mario"]

if guests.isNotEmpty{
    print("Guest count: \(guests.count)")
}


// Apple call it Protocol Oriented Programming (POP): We can list some required methods in a protocol but them add default implementations of those in a protocol extension. All conforming types will then fain access to those default implementations or they can provide their own overrides if they need too.

protocol Person{
    var name: String { get }  // Only readeble, not writable
    func sayHello()
}

// We can define a default implementation of sayHelo()
extension Person{
    func sayHello(){
        print("Hi, I'm \(name)")  // We know that there'll be a name because it must have to conform to the protocol Person
    }
}
// And now conforming types can add their own sayHello() method if they want to. They don't have to, they can always rely on the default implementation provided inside our protocol extension:

struct Employee: Person{
    let name: String
    // Now even though it's required by the protocol, it's not required inside here, because there's a default one in our protocol extension and we can use it:
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()


// Examples of Protocol extensions:
protocol DogTrainer{
    func train(dog: String)
}
extension DogTrainer{
    func train(dog: String){
        print("We'll make \(dog) behave in no time!")
    }
}
struct Trainer: DogTrainer{  // This struct has to conform to the protocol DogTrainer
    // we don't need to provide any value here, we can use the default one created in the extension
}

let bob = Trainer()
bob.train(dog: "Diggle")


protocol Chef{
    func getRecipes() -> [String]
}
extension Chef{
    func getRecipes() -> [String]{
        return ["Squid", "Mushroom"]
    }
}
struct RestaurantEmployee: Chef{
}

let Fogaca = RestaurantEmployee()
for i in Fogaca.getRecipes(){
    print("Getting \(i)")
}


protocol SmartPhone{
    func makeCall(to: String)
}
extension SmartPhone{
    func makeCall(to name: String){
        print("Dialling \(name)...")
    }
}
struct iPhone: SmartPhone{
    func sendMessage(name: String, text: String){
        print("Sending message to \(name)")
    }
}
let tommy = iPhone()
tommy.makeCall(to: "Mark")
tommy.sendMessage(name: "Mark", text: "Oh, hi mark!")


protocol Politician{
    var isDirty: Bool {get set}
    func takeBribe()
}
extension Politician{
    func takeBribe(){
        if isDirty{
            print("Thanks!")
        } else{
            print("Someone call the pollice!")
        }
    }
}
struct President: Politician{
    var isDirty: Bool
    // We'll use the default takeBribe created in the protocol extension
}
                        
let lula: Politician = President(isDirty: false)
lula.takeBribe()


protocol Movie{
    var avaliableLanguages: [String] {get set}
    func watch(in language: String)
}
extension Movie{
    func watch(in language: String){
        if avaliableLanguages.contains(language){
            print("Now playing in \(language).")
        } else{
            print("Unrecognized language.")
        }
    }
}
struct Film: Movie{
    var avaliableLanguages:  [String]
    // again using the default
}
let creed = Film(avaliableLanguages: ["English", "Portuguese"])
creed.watch(in: "English")
*/


/* Checkpoint 8:
    
    . Make a protocol that describes a building;
    . Your protocol should require the following:
        . A property storing how many rooms it has
        . A property storing the cost as an integer
        . A property storing the name of the estate agent selling the building
        . Then, add a method for printing the sales summary of the building.
    . Then, create 2 structs: House and Office, that conform to it

protocol Building{
    var rooms: Int {get}
    var cost: Int {get}
    var agentSaler: String {get}
    func salesSummary()
}
extension Building{
    func salesSummary(){
        print("The building that has \(rooms) rooms and costs £\(cost),00 was saled by \(agentSaler)")
    }
}

struct House: Building{
    var rooms: Int
    var cost: Int
    var agentSaler: String
}

struct Office: Building{
    var rooms: Int
    var cost: Int
    var agentSaler: String
}

let sale = House(rooms: 2, cost: 200_000, agentSaler: "Dwight.")
sale.salesSummary()
*/

/*
 
 protocol Building{
     var rooms: Int {get}
     var cost: Int {get}
     var saler: String {get}
     func salesSummary()
 }
 extension Building{
     func salesSummary(){
         print("The building that has \(rooms) rooms and costs £\(cost),00 was saled by \(saler)")
     }
 }

 struct House: Building{
     var rooms: Int
     var cost: Int
     var saler: String
 }

 struct Office: Building{
     var rooms: Int
     var cost: Int
     var saler: String
 }

 let saled = House(rooms: 2, cost: 200_000, saler: "Digble the man")
 saled.salesSummary()

 */





/*
 How to handle missing data with optionals:

// Optionals: This thing migh have a value or it might not.

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
let peachOpposite = opposites["Peach"]

/*
    It would return nil: The solution for this is called "Optionals":
    Wich means data that might be present but might not be present.
    Optionals are represented by "?" and any kind of data can be optional:
    Strings, Ints, Bool, enums, classes, arrays, structs... It's all potentially optional.
 
    Swift likes our code to be predictable, wich means it won't let us use data that might not be there.
    In the case of optionals, we have to unwrap the optional in order to use it:
    Swift gives us 2 primary ways of unwrapping optionals but the one you see the most looks like this:
*/
if let marioOpposite = opposites["Mario"]{
    print("Mario's opposite is \(marioOpposite)")
}

// This "if let" syntax is very common in swift. It combines a condition(the "if" part) with creating a constant(the "let" part) and together it does 3 things:
/* 1 - It's going to read the optional value from the dictionary
 The value might be or might not be there.
 If the optional has a value inside it, it'll be unwrapped. That means the string inside the optional is taken out and placed into the constant (marioOpposite - this case)
 That's now set to a real string and then swift considers our condition here to have succeded, we were abble to unwrap the optional and so, the conditional body's run.
 And the conditions body will only be run if the optional had a value inside.
 If you want to have an else block if there is no value inside, go for it.
*/

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else{
    print("The optional was empty.")
}

/*
 var weatherForecast: String = "sunny"
 if let forecast = weatherForecast {
     print("The forecast is \(forecast).")
 } else {
     print("No forecast available.")
 }
 
 Oops – that's not correct. This attempts to use if let to unwrap weatherForecast, which is not optional.
*/
var weatherForecast: String? = "sunny"
if let unwrappedName = weatherForecast{
    print("The forecast is \(unwrappedName)")
} else{
    print("No forecast avaliable")
}

/*
 In the same way optionals mean data might be there, might not be there, also means that all the non-optionals, regular strings, integers, booleans and so forth mean data MUST be there.
*/
var num1 = 1_000_000 // MUST be there (non-optional)
var num2 = 0  // MUST be there (non-optional)
var num3: Int? = nil  // MIGHT or MIGHT NOT (pode ou não pode) be there
// nill is simply nothing.

var str1 = "Hello"  // MUST be there (non-optional)
var str2 = ""  // MUST be there (non-optional) only has no characters
var str3: String? = nil  // MIGHT be or MIGHT NOT be there

var arr1 = [0]  // MUST be (non-optional)
var arr2 = [Int]()  // MUST be (non-optional)
var arr3: [Int]? = nil  // Optional  -- nil means there's nothing in there at all


/*
    "Swift didn't introduce optionals.
    It introduce non-optionals."
            @ZevEisenberg
*/

func square(_ number: Int) -> Int{
    return number * number
}

var number: Int? = nil

// When unwrapping optionals, it's verry common to unwrap them into a constant with the same name as the optional: (this is a technique called shadowing and it's mainly used as optional unwrapped like this one bellow)

if let number = number {  // We're only temporarily creating the constant that unwrap's the value. That constant's only avaliable inside the conditions braces(chaves) that's it's scope, it's context where it's made.
    print(square(number))
} else{
    print("There's no number.")
}

// Examples of unwrapping optionals:

let song: String? = "Shake it off!"
if let unwrappedSong = song {
    print("The name has \(unwrappedSong.count) letters.")
}

let tableHeight: Double? = 100
if let tableHeight = tableHeight{
    if tableHeight > 85.0{
        print("The table is too high.")
    }
}

// Test of unwrapp:
let album = "Red"
let albums = ["Reputation", "Red", "1989", "Red"]
if let position = albums.firstIndex(of: album){
    print("Found \(album) at position \(position).")
} else{
    print("Didn't found.")
 }

var students = ["Ben", "Ivy", "Jordell", "Maxime"]
if let name = students.firstIndex(of: "Maxime"){
    students[name] = "Max"  // Changing the name
}
print(students)

var winner: String? = nil
winner = "Daley Thompson"
if let winner = winner{
    print("And the winner is... \(winner)!")
}
/*
 var bestScore: Int? = nil
 bestScore = 101
 if bestScore > 100 {
     print("You got a high score!")
 } else {
     print("Better luck next time.")
 }
 
 // This attempts to compare an optional Int against 100, which is not possible.
*/
*/

for i in 3...1{
    print(i)
}

var favoriteMovie: String? = nil
if let favoriteMovie = favoriteMovie {
    print("My favorite movie is \(favoriteMovie).")
} else{
    print("I don't have a favorite movie.")
}

let menuItems: [String]? = ["Pizza", "Pasta"]
if let items = menuItems{
    print("There are \(items.count) items.")
}

let album = "Red"
let albums = ["Reputation", "Red", "1989"]
if let position = albums.firstIndex(of: album){  // The first index where "Red" founded.
    print("Found \(album) at position \(position)")
}

print("---------------")
var bestScore: Int? = nil
bestScore = 101
if let bestScore = bestScore{
    if bestScore > 100{
        print("You got a high score!")
    }
} else {
    print("Better luck next time.")
}

var laFerrari: String? = nil
laFerrari = "Yeah!"
if let laFerrari = laFerrari{
    print("To jamba juice! \(laFerrari)")
}
print("----------------")



/* How to unwrap optionals with guard
func printSquare(of number: Int?){
    guard let number = number else{
        print("Missing input")
        return  // We must exit the func if it's check's failed.
    }
    
    print("\(number) x \(number) is \(number * number)")  // This is now the unwrapped integer, we got from the guard. It stays in the scope even after the guard finishes.
}
printSquare(of: 2)

/* Comparing:
 
 if let unwrapped = myVar{
    // Run if myVar has a value inside (so it's unwrapped)
 }
 
 guard let unwrapped = myVar else{
    // Run if myVar doesn't have a value inside
 }
 
 // guard provide the ability to check whether our program state is what we expect and if isn't, the the else will do the work.
 
 guard does 2 things to help us:
 
 . If you use guard to check up a function's input, swift will always require you to use return (exit the function) if a guard check fails.
 You must exit the function if your check is failed (using an empty "return" keyword)
 . If the optional you're unwrapping has a value, you can use it afther the guard code finishes.
 
 
 guard let is designed to exit the current function, loop, or condition if the check fails, so any values you unwrap using it will stay around after the check.
 
 
 1. It lets us focus on the “happy path” – the behavior of our function when everything has gone to plan, which is to print the meaning of life.
 2. "guard requires that we exit the current scope when it’s used, which in this case means we must return from the function if it fails. This is not optional: Swift won’t compile our code without the return.
 
 // Examples:
func uppercase(string: String?) -> String?{
    guard let string = string else{
        return nil
    }
    return string.uppercased()
}
if let result = uppercase(string: "Hello"){
    print(result)
}

func checkIfPassed(by score: Int?){
    guard let score = score else{
        print("Try again later")
        return
    }
    if score > 85{
        print("Nice. You passed!")
    } else{
        print("Better luck in the next time!")
    }
}
checkIfPassed(by: 87)

func isLongEnough(_ string: String?) -> Bool{
    guard let string = string else{ return false }
    if string.count >= 8 {
        return true
    } else{
        return false
    }
}

if isLongEnough("Mario Odyssey"){
    print("Let's play that!")
}

 // We can't use "guard let" to unwrap what is non-optional
 func add3(to number: Int) -> Int {
     guard let number = number else {
         return 3
     }
     return number + 3
 }
 let added = add3(to: 5)
 print(added)
*/
func add3(to number: Int?) -> Int{
    guard let number = number else{
        return 3
    }
    return number + 3
}
let added = add3(to: 4)
print(added)


func validate(password: String?) -> Bool{
    guard let password = password else{
        return false
    }
    if password == "fr0sties"{
        print("Authenticated successfully!")
        return true
    }
    return false
}
validate(password: "fr0sties")


// This code acts as if username returns an optional string; it does not:
 
 func username(for id: Int?) -> String {
     guard let id = id else {
         return nil
     }
     if id == 1989 {
         return "Taylor Swift"
     } else {
         return nil
     }
 }
 if let user = username(for: 1989) {
     print("Hello, \(user)!")
 }


func plantTree(_ type: String?){
    guard let type = type else{
        return
    }
    print("Planting a \(type)")
}
plantTree("Willow")

 
// It’s common to see guard used one or more times at the start of methods, because it’s used to verify some conditions are correct up front. This makes our code easier to read than if we tried to check a condition then run some code, then check another condition and run some different code.

So, use "if let" if you just want to unwrap some optionals,
 but prefer "guard let" if you’re specifically checking that conditions are correct before continuing.
*/


/*
func judging(movie: String?){
    guard let movie = movie else{
        print("Don't have favorite movie.")
        return
    }
    
    switch movie{
    case "The Batman":
        print("Something in the way... Hummmm hummm...")
    case "007":
        print("Tuunraaam")
    case "Mission Impossible":
        print("tan tan tantan tan tan tantan tan")
    default:
        print("nice")
    }
}
judging(movie: nil)


// There's a third way of unwrapping optionals: It's called "nil coalescing" operator:

// How to unwrap optionals with nil coalescing: (It will unwrap the optional but if it was empty, if it was nil, it will provide a default value instead)

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"  // "N/A" will be the default value (same type, of course)
// "new" will be a real string, non-optional.
print(new)

// But we could do this: (because we can do it with dictionaries, but "nil coalescing" works with any optionals, from every type)
let newByDic = captains["Serenity", default: "N/A"]
print(newByDic)

// For example, the .randomElement() method on arrays returns one random item from the array, but it does so by returning it on optional because you might be calling randomElement() on empty array and so we can use "nil coalescing" to provide a default:

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

// Or perhaps you've got a struct with an optional property inside and you want to provide a sensible default when it's missing:

struct Book{
    let title: String
    let author: String?
}
let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

// It's even useful if you create an integer from a string because you might get back nil:
let str = ""
let conv = Int(str) ?? 0
print(conv)

// Examples:
let lightSaber: String? = "Green"
let color = lightSaber ?? "Blue"

var conferenceName: String? = "WWDC"
var conference: String? = conferenceName ?? nil

/* WRONG:
 let userID: Int? = 556
 let id = userID ?? "Unknown"
*/
let userID: Int? = 556
let id = userID ?? 0

let distanceRan: Double? = 0.5
let distance: Double? = distanceRan ?? 0

var userOptedIn: Bool? = nil
var optedIn = userOptedIn ?? false

var selectedYear: Int? = nil
let actualYear = selectedYear ?? 2004

// To remind:
extension String{
    var sepByLines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var lyric: String = """
Oh yeah
I'll tell you something
I think you'll understand
When I say that something,
I want to hold your hand
"""

print(lyric.sepByLines.count)

extension String{
    var trimmed: String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
let quote = "  something "
print(quote.trimmed)

let might: Bool? = nil
let yes = might ?? true
print(yes)

struct Book{
    let book: String
    let author: String?
}

let book = Book(book: "Percy Jackson", author: nil)
let authorFromBook = book.author ?? "Anonymous"
print(authorFromBook)
*/
 
/*  How to handle multiple optionals using chaining

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"  // Optionals chaining (It might be an array of nil)
print("Next in line: \(chosen)")

 Challenge: (code example)
 We have an optional instance of a Book struct
 The book might have ab author, or might be anonymous
 If it has an author, attempt to read the first letter
 If the first letter is there, uppercase it
*/


/*

struct Book{
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"

/* Examples: */

let names: [String]? = ["Taylor", "Paul", "Adele"]
let lengthOfLast: Int? = names?.last?.count
print(lengthOfLast ?? "nil here")

let credentials = ["twostraws", "fr0sties"]
let lowercaseUsername = credentials.first?.lowercased()  // .first is an optional because accessing the first property returns an optional

let songs: [String]? = [String]()
let finalSong = songs?.first?.uppercased()


func albumReleased(in year: Int) -> String?{
    switch year{
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    case 2017: return "Reputation"
    default: return nil
    }
}
let albumT = albumReleased(in: 2006)?.uppercased()

let shoppingList = ["eggs", "tomatoes", "grapes"]
let firstItem = shoppingList.first?.uppercased()


func loadForecast(for dayNumber: Int) -> String? {
    print("Forecast unavailable")
    return nil
}
let forecast = loadForecast(for: 3)?.uppercased()

let capitals: [String: String] = ["Scotland": "Edinburgh", "Netherlands": "Amsterdam"]
let NetherlandsCapital: String? = capitals["Netherlands"]?.uppercased()
print(NetherlandsCapital ?? "No value here (nil)")

let racers = ["Hamilton", "Verstappen", "Vettel"]
let winnerWasVE = racers.first?.hasPrefix("Ve")

let surNames = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
let surnameLetter = surNames["Vincent"]?.first?.uppercased()
print(surnameLetter ?? "There's no vincent in the array or it's not the first one")

print("----------------")
*/

/*
    How to handle function failure with optionals:
 
 // If all we care about is wether the func succeded or failed, we can use an optional "try" (try?)
 and this will go ahead and run the func and if it works, it will come back to us as an optional, but if at any point, the func does throw an error, it'll comeback as nil, this means we don't get to know what error was thrown inside.
 If you want to know what error was thrown, don't use "try?"


enum UserError: Error{
    case badId, networkFailed
}

func getUser(id: Int) throws -> String{
    throw UserError.networkFailed
}

// Now we're going to call that without "do and catch", we'll use "try?", an optional try:

if let user = try? getUser(id: 23){
    print("User: \(user)")
}// All we care about is "did it work or not?" "come back or not?" - Now if you want to, you can combine try? with nil coalescing ("??"): (we''ll need to add some extra parentheses before the nil coalescing)
let user = (try? getUser(id: 23)) ?? "Anonymous"  // providing a default value in case it fails or throws any errors and send back nil, wich will then go to nil coalescing and become "anonymous".
print(user)


enum UserError: Error{
    case badID, networkFailed
}

func getUser(id: Int) throws -> String{
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23){  // try? transforms the result in an optional.
    print("User: \(user)")
}
let user = (try? getUser(id: 23)) ?? "Anonymous"  // It attempt to call getUser with the id used as argument but if it fails or throws any errors and send back nil, then it will go to nil coalescing and become "anonymous".
print(user)
*/
 
/*
 "try?" is mainly used in 3 places:
 
 1. in combination with guard let to exit the current function, the current scope, if the optional try call returns a nill (so attempt to get this function if it fails, bailout);
 2. As seen below, in combination with nil coalescing, to attempt something or provide a default value on failure;
 3. When calling any throwing function without a return value, when you just don't care if it worked or not.
*/


/*
    Summary: Optionals (Day 14)
 
    - Optionals allows us to represent the absence of data. (nil or something);
    - Everything that isn't optional ("non-optional") definitely has a value inside;
    - Unwrapping looks inside the optional: if there's a value it's sent back;
    - "if let" runs code if the optional has a value;
    - "guard let" runs code if the optional doesn't have a value. (with "guard let" we must always exit the current scope using the current function afterwards if the check fails);
    - ??(nil coalescing) unwrapps and returns an optional's value, or a default value instead;
    - Optional chaining reads an optional inside another optional;
    - "try?" can convert throwing functions so they return an optional (if a function can throw errors, we can convert that into an optional using "try?",
    this will say: we either get back the regular return value from the function or a "nil" if the func threw any errors)
 But if we want to know what those errors were and handle them uniquely, we can't use question mark, we can use a regular do try catch block instead.
*/

/*
    Checkpoint 9 (Day 14):
    
    . Write a func that accepts an optional array of integers, and returns one of those integers ramdomly;
    . If the array is missing or empty, return a new random number in the range of 1 through 100;
    . Write this function in a single line of code
    
func challange(array: [Int]?)->Int{array?.randomElement() ?? Int.random(in: 1...100)}
challange(array: nil)
challange(array: [2, 4, 7])
 */

/* Day 15 - Reviewing the fundamentals

func printTimesTable(number: Int){
    for i in 1...10{
        print("\(number) * \(i) = \(number * i)")
    }
}
printTimesTable(number: 2)

func isUppercase(_ string: String) -> Bool{
    string == string.uppercased()
}
print(isUppercase("PAUL"))


enum PasswordError: Error{
    case short, obvious
}

func checkPassword(_ password: String) throws -> String{
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    
    if password.count < 10{
        return "Okay"
    } else{
        return "Good"
    }
}

do{
    let checking = try checkPassword("123456143566")
    print(checking)
} catch PasswordError.short{
    print("Too short!")
} catch PasswordError.obvious{
    print("Too obvious!")
} catch{
    print("There's an error")
}

struct Bank{
    private(set) var funds = 0  // We can read but we can't write.
    
    mutating func deposit(amount: Int){
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount{
            funds -= amount
            print("Withdrewing...")
            return true
        } else{
            print("Not enough funds.")
            return false
        }
    }
}

var account = Bank()
account.deposit(amount: 100_000)

let names = ["Arrya", "Brandon"]
let chosen = names.randomElement()?.uppercased()
print("Next in line: \(chosen ?? "No one")")


enum UserError: Error{
    case badID, networdFailed
}

func getUser(id: Int) throws -> String{
    throw UserError.networdFailed
}

if let user = try? getUser(id: 23){  // Converts the error into "nil" value
    print("User: \(user)")
}
 
let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)
*/

/*
    Checkpoint 9 (Day 14): (remembering)
    
    . Write a func that accepts an optional array of integers, and returns one of those integers ramdomly;
    . If the array is missing or empty, return a new random number in the range of 1 through 100;
    . Write this function in a single line of code
 */

/*
func challenge(array: [Int]?) -> Int{ array?.randomElement() ?? Int.random(in: 1...100) }

let test = challenge(array: nil)


let people: [String]? = ["Paul", "Craig"]
let chosenOne = people?.randomElement() ?? "No one"


// Reminding closures:

let sayHello = { (_ name: String) in
    print("Hi, \(name)")
}
sayHello("Enrico")

let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter( {(name: String) -> Bool in
    name.hasPrefix("T")
})

let array = ["Luna", "Bebel do grau", "Abobora", "Cacau", "Craig"]

let cacauFirst = array.sorted {
    if $0 == "Cacau"{
        return true
    } else if $1 == "Cacau"{
        return false
    }
    
    return $0 < $1
}
print(array)
print(cacauFirst)

let arrayReversed = array.sorted { $0 > $1 }
print(arrayReversed)


let team2 = ["Gloria", "Suzanne", "Tiffany", "Tasha"]
let onlyTShort = team.filter { $0.hasPrefix("T")}
print(onlyTShort)

let arrayC = array.filter { $0.hasPrefix("C") }
print(arrayC)


let team = ["Gloria", "Gigman", "Craig"]

let arrayC = team.filter {
    $0.hasPrefix("C")
}
print(arrayC)
 */



