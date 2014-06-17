//
//  Jesse Squires
//  http://www.hexedbits.com
//
//  GitHub
//  https://github.com/jessesquires/swift-sorts
//
//  Copyright (c) 2014 Jesse Squires
//

import XCTest

class SwiftSortsTests: XCTestCase {
    
    let sortedArray : Int[] = [0, 1, 4, 10, 23, 34, 34, 35, 75, 87, 98, 687, 809, 9324]
    var unsortedArray : Int[]? = nil
    
    override func setUp() {
        super.setUp()
        self.unsortedArray = [23, 87, 1, 0, 34, 687, 34, 75, 10, 9324, 809, 98, 35, 4]
    }
    
    override func tearDown() {
        self.unsortedArray = nil
        super.tearDown()
    }
    
    func arrayIsEqualToArray(firstArray: Int[], secondArray: Int[]) -> Bool {
        assert(firstArray.count == secondArray.count, "** Cannot compare arrays of different length **")
        
        for i in 0..firstArray.count {
            if firstArray[i] != secondArray[i] {
                return false
            }
        }
        
        return true
    }
    
    func testSwiftSort() {
        var unwrappedUnsortedArray : Int[] = self.unsortedArray!
        
        XCTAssertFalse(self.arrayIsEqualToArray(self.sortedArray, secondArray: unwrappedUnsortedArray), "Arrays should not be equal before sorting")
        swiftSort(unwrappedUnsortedArray)
        XCTAssertTrue(self.arrayIsEqualToArray(self.sortedArray, secondArray: unwrappedUnsortedArray), "Arrays should be equal after sorting")
    }
    
    func testQuickSort() {
        var unwrappedUnsortedArray : Int[] = self.unsortedArray!
        
        XCTAssertFalse(self.arrayIsEqualToArray(self.sortedArray, secondArray: unwrappedUnsortedArray), "Arrays should not be equal before sorting")
        quickSort(unwrappedUnsortedArray)
        XCTAssertTrue(self.arrayIsEqualToArray(self.sortedArray, secondArray: unwrappedUnsortedArray), "Arrays should be equal after sorting")
    }

    func testHeapSort() {
        var unwrappedUnsortedArray : Int[] = self.unsortedArray!
        
        XCTAssertFalse(self.arrayIsEqualToArray(self.sortedArray, secondArray: unwrappedUnsortedArray), "Arrays should not be equal before sorting")
        heapSort(unwrappedUnsortedArray)
        XCTAssertTrue(self.arrayIsEqualToArray(self.sortedArray, secondArray: unwrappedUnsortedArray), "Arrays should be equal after sorting")
    }
}
