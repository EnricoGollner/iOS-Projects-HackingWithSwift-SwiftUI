//
//  ContentView.swift
//  iCalories
//
//  Created by Enrico Sousa Gollner on 13/01/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var foods: FetchedResults<Food>
    
    @State private var showAddFoodView = false
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                Text("\(Int(totalCaloriesToday())) Kcal (Today)")
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                
                List{
                    ForEach(foods) { food in
                        NavigationLink(destination: EditFoodView(food: food)){
                            HStack{
                                VStack(alignment: .leading, spacing: 6){
                                    Text(food.name!)
                                        .bold()
                                    
                                    Text("\(Int(food.calories))") + Text(" calories").foregroundColor(.red)
                                }
                                
                                Spacer()
                                
                                Text(calcTimeSince(date: food.date!))
                                    .foregroundColor(.gray)
                                    .italic()
                                    
                            }
                        }
                    }
                    .onDelete(perform: deleteFood)
                }
                .listStyle(.plain)
                
            }
            .navigationTitle("iCalories")
            .sheet(isPresented: $showAddFoodView){
                AddFoodView()
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        showAddFoodView = true
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                }
            }
        }
    }
    
    private func deleteFood(at offsets: IndexSet){
        withAnimation{
            offsets.map{ foods[$0]  }.forEach(moc.delete)
            
            DataController().save(context: moc)
        }
    }
    
    private func totalCaloriesToday() -> Double{
        var caloriesToday: Double = 0
        for item in foods{
            if Calendar.current.isDateInToday(item.date!){
                caloriesToday += item.calories
            }
        }
        return caloriesToday
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
