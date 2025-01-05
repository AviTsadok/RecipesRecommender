//
//  RecipesRecommenderTests.swift
//  RecipesRecommenderTests
//
//  Created by Avi Tsadok on 04/01/2025.
//

import Testing
@testable import RecipesRecommender

struct RecipesRecommenderTests {

    @Test func testPrediction() async throws {
        let dayinweek: Int64 = 1
        let timeinday: Int64 = 8
        let predicator = try RecipePredictor()
        
        let reciptID = try predicator.getUUID(forDayInWeek: dayinweek, hourInDay: timeinday)
        let receipt = RecipesHandler.shared.getReceipt(BytID: reciptID)
        print("A")
    }

}
