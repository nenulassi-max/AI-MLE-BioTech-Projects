import SwiftUI


struct ContentView: View{
    @State private var sequence: String = ""
    @State private var showresult: Bool = false
    @State private var showlength: Bool = false
    @State private var showreverse: Bool = false
    @State private var showcount: Bool = false
    @State private var showslice: Bool = false
    
    var body: some View{
        VStack{
            TextField("Enter the DNA Sequence:", text: $sequence)
                .padding()
            
            HStack{
   
                Button("Nucleuotides A/T/G/C Counts"){
                    showresult = false
                     showlength = false
                     showreverse = false
                     showcount = true
                    showslice = false
                    
                }
                .foregroundColor(Color.purple)
                
                Button("View sequence"){
                   showresult = true
                    showlength = false
                    showreverse = false
                    showcount = false
                    showslice = false
                }
                .foregroundColor(Color.blue)
                .cornerRadius(10)
                
                Button("Slicing"){
                    showslice = true
                    showresult = false
                     showlength = false
                     showreverse = false
                     showcount = false
                }
                .foregroundColor(Color.mint)
                
                Button("Reversed DNA"){
                    showreverse = true
                    showlength = false
                    showresult = false
                    showcount = false
                    showslice = false
                }
                .foregroundColor(Color.green)
                
                Button("DNA Length"){
                    showlength = true
                    showresult = false
                    showreverse = false
                    showcount = false
                    showslice = false
                }
                .foregroundColor(Color.yellow)
                
                Button("Show All"){
                    showlength = true
                    showresult = true
                    showreverse = true
                    showcount = true
                    showslice = true
                    
                }
                .foregroundColor(Color.orange)
                .cornerRadius(10)
                
                Button("Clear"){
                    sequence = ""
                    showresult = false
                    showlength = false
                    showreverse = false
                    showcount = false
                    showslice = false
                    
                }
                .foregroundColor(Color.red)
                .cornerRadius(10)
                
            }
            
            if showresult{
                Text(sequence.isEmpty ? "No DNA Sequence Entered": "DNA Sequence: \(sequence)")
            }
            
            if showlength{
                let sequence1 = sequence
               let sequence_length =  sequence1.count
               Text("The length of your DNA strand is: \(sequence_length)")
                
            }
            
            if showreverse{
                let sequence2 = sequence
                let sequence_reversed = String(sequence2.reversed())
                Text("Your DNA strand reversed is: \(sequence_reversed)")
            }
            
            if showcount{
                let countlower = sequence.lowercased()
                
                let countA = countlower.count{ $0 == "a"}
                let countT = countlower.count{ $0 == "t"}
                let countC = countlower.count{ $0 == "c"}
                let countG = countlower.count{ $0 == "g"}
                
                Text("A: \(countA)")
                Text("T: \(countT)")
                Text("C: \(countC)")
                Text("G: \(countG)")
            }
            
            if showslice{
                let sequence3 = sequence
                let start = sequence3.prefix(3)
                let end = sequence3.suffix(3)
                let mid = sequence3.count/2
                let startindex = sequence3.index(sequence3.startIndex, offsetBy: mid - 1 )
                let endindex = sequence3.index(startindex, offsetBy: 2)
                let middle = sequence3[startindex...endindex]
                let seven = sequence3.index(sequence3.startIndex, offsetBy: 6)
                let eleven = sequence3.index(seven, offsetBy: 4)
                let seveneleven = sequence3[seven...eleven]
                
                Text("7th base to 11th base: \(seveneleven)")
                Text("Beginning 3: \(start)")
                Text("Middle 3: \(middle)")
                Text("End 3: \(end)")
            }
        }
        }
    }

#Preview{
    ContentView()
}
