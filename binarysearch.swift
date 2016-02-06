func AwesomeFilter(width: Int, height: Int) -> Int {
    
    var time = 10 //init i, store in memory
    
    for (var i = 0; i < width; i++) {
        
        time += 10 // init j each iteration of  loop, store in memory
        time += 3 // math operation i < width
        time += 1 // access memory of i
        time += 10 // write to memory
        time += 3 //math operation
        
        for (var j = 0; j < height; j++) {
            
            time += 3 // math operation i < width
            time += 1 // access memory of i
            time += 10 // write to memory
            time += 3 //math operation
            time += 201 // 200 picosecond function, plus 1 psecond of memory access
        }
        
    }
    
    
    return time
    
}

print(AwesomeFilter(1000, height: 2000))