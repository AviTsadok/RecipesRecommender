import CoreML
import Foundation


class RecipePredictor {

    let model: RecipeTabularClassification
    
    private var libraryFolderURL: URL {
       return FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).first!
    }
    
    private var modelLocationURL: URL {
        return libraryFolderURL.appendingPathComponent("RecipeTabularClassification.mlmodel")
    }
    
    private var modelLocationInBundle: URL {
        return Bundle.main.url(forResource: "RecipeTabularClassification", withExtension: "mlmodel")!
    }
    
    init() throws {
        self.model = try RecipeTabularClassification(configuration: .init())
        try moveModelToLibraryIfNeeded()
    }
    
    func updateModel(withDaInWeek dayInWeek: Int64, hourInDay: Int64, uuid: UUID) {
        
        
//        guard let updateTask = try? MLUpdateTask(forModelAt: modelLocationURL, trainingData: any MLBatchProvider, completionHandler: <#T##(MLUpdateContext) -> Void#>)
    }
    
    private func moveModelToLibraryIfNeeded() throws {
        guard FileManager.default.fileExists(atPath: modelLocationURL.absoluteString) else { return }
        try FileManager.default.copyItem(at: modelLocationInBundle, to: modelLocationURL)
    }
    
    func getUUID(forDayInWeek dayInWeek: Int64, hourInDay: Int64) throws -> UUID {
        let output = try model.prediction(day_in_week: dayInWeek, time: hourInDay)
        return UUID(uuidString: output.uuid)!
    }
    
    private func getBarchProvider(withDaInWeek dayInWeek: Int64, hourInDay: Int64, uuid: UUID) throws -> MLBatchProvider {
        var featureProviders = [MLFeatureProvider]()
        
        let dayInWeekFeature = MLFeatureValue(int64: dayInWeek)
        let hourInDayFeature = MLFeatureValue(int64: hourInDay)
        
        let provider = try? MLDictionaryFeatureProvider(dictionary: <#T##[String : Any]#>)
    }
    

    
}
