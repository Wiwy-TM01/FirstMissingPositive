
// First Missing Positive

let numsA: [Int] = []
let numsB: [Int] = [0,2,2,1,1]
let numsC: [Int] = [-1, 0, 1, 2, 3, 5, 10]
let numsD: [Int] = [0, 1, 2, 3, 3, 4, 5]

func firstMissingPositive(_ nums: [Int]) -> Int {
    
    var counter = 0
    
    // Array to match to
    var sequence = [Int]()
    
    // Remove duplicate numbers
    let uniques = Set<Int>(nums)
    let result = Array<Int>(uniques)
    
    // Filter out non-positive / zero objects & sort numerically
    let positiveInts = (result.filter {
        let int = $0
        return int > 0
        }).sorted { $0 < $1 }
    
    // Populate comparrison array
    for sequenceNum in 1...1000 {
        sequence.append(sequenceNum)
    }
    
    // Find missing object and return
    for a in positiveInts {
        
        if a != sequence[counter] {
            return sequence[counter]
        } else if a == positiveInts.last {
            return a + 1
        }
        
        counter += 1
    }
    
    // For empty arrays
    return 1
}

print(firstMissingPositive(numsA)) // 1
print(firstMissingPositive(numsB)) // 3
print(firstMissingPositive(numsC)) // 4
print(firstMissingPositive(numsD)) // 6
