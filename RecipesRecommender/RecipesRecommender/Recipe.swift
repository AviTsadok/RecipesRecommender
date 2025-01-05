import Foundation

struct Recipe: Identifiable {
    let name: String
    let instructions: String
    var id: UUID
    
    static func generateSampleRecipes() -> [Recipe] {
        
        let uuidsFromCSV: [UUID] = [
            UUID(uuidString: "03c6cbe2-c472-4602-8c43-b0b8212bc7c1")!,
            UUID(uuidString: "d774aa8a-441e-463d-b204-36c83661c777")!,
            UUID(uuidString: "04e32c77-901b-4ae0-9767-0bd3dd39a295")!,
            UUID(uuidString: "dd17dfe9-98d8-4d40-97dd-1807523cd723")!,
            UUID(uuidString: "3a0ca9a2-30ea-4e01-ba58-c8cddd4633d9")!,
            UUID(uuidString: "235ce3db-115c-4894-8de2-5bfca832a426")!,
            UUID(uuidString: "39e12459-0393-445e-a381-0256c9366185")!,
            UUID(uuidString: "4ece5274-c6d4-433a-824d-07d7c4cc24e3")!,
            UUID(uuidString: "2ff9dae3-1894-49ea-b26a-184dbfb8b864")!,
            UUID(uuidString: "6ea41904-f7d5-4ef8-9eea-5d85ff76131d")!,
            UUID(uuidString: "10bbbd6f-c1c9-462f-8c3d-8f4dc783fe13")!,
            UUID(uuidString: "8045bb0e-579e-4e75-929a-4752a0048017")!,
            UUID(uuidString: "34d70e8f-b7da-491a-954c-b1088199ba8d")!,
            UUID(uuidString: "d3b927b8-b4a3-45fe-b488-b6df889da9f7")!,
            UUID(uuidString: "418f567a-5fda-45b5-9744-343a2cd6d6b7")!,
            UUID(uuidString: "4a0518da-4834-4cad-a4ec-81b0e1f32bc3")!,
            UUID(uuidString: "1c6b6efd-79e0-4e23-8447-acde6c0f6894")!,
            UUID(uuidString: "1644dc52-42f2-478e-95ab-4fb26dc55614")!,
            UUID(uuidString: "21c00225-aa52-4b9b-8772-a2d8bf93f2ab")!,
            UUID(uuidString: "d572dfc4-b349-4eed-982b-824bcf894d20")!,
            UUID(uuidString: "8bfabf61-d1cc-4d86-85e4-4d693a842506")!,
            UUID(uuidString: "f6b769d0-9982-47cd-8d13-1cb124be1794")!,
            UUID(uuidString: "1314895d-6b89-4d5d-91f3-9da353c1c0b7")!,
            UUID(uuidString: "c9023558-c1e4-49ac-80b8-32d092ee8afc")!,
            UUID(uuidString: "49abd08b-81cd-498f-bd5b-ca66ac95d3e6")!,
            UUID(uuidString: "16763ef2-5ca2-408b-b294-0240df148418")!,
            UUID(uuidString: "71937b49-9dbb-4168-bae4-59df40f2101a")!,
            UUID(uuidString: "acbdbae3-46e0-4f9b-ac8c-8d69f5137fff")!,
            UUID(uuidString: "a80276cf-6ce0-425e-94c4-0ecb3c87eeb5")!,
            UUID(uuidString: "6b5c9ab4-362a-46a5-aa86-538e23e6cb97")!,
            UUID(uuidString: "328240ab-0c70-40a0-b414-e5e034e980d7")!,
            UUID(uuidString: "a627e66a-d9c1-483a-a94c-1707ab97756d")!,
            UUID(uuidString: "8dd2b26e-0a57-404b-9dd4-8f19ffb6912d")!,
            UUID(uuidString: "ecf94df4-090e-4efb-8508-8b2b81aedce4")!,
            UUID(uuidString: "186fc719-d1c0-4ba7-8a55-47f437f0b700")!,
            UUID(uuidString: "7c3169d5-2138-4d45-a552-af2f87a835f9")!,
            UUID(uuidString: "ad6bd085-1bdf-4fe2-9011-708efec4c829")!,
            UUID(uuidString: "7bdecf2c-3f13-4162-addc-78c60a90dfe1")!,
            UUID(uuidString: "c8c16ba6-8aa9-45f5-9ad6-97c0095d0d9a")!,
            UUID(uuidString: "b63983a0-4176-436b-a557-183ce8ce9ed1")!,
            UUID(uuidString: "086c7702-b472-45cd-b02e-d24c78afacdf")!,
            UUID(uuidString: "1e93c82f-8aa2-4a99-9482-30b5db3bec12")!,
            UUID(uuidString: "eca8c62e-478f-4095-8ff3-c9061d5f8fd2")!,
            UUID(uuidString: "8b19a22f-015e-4954-b47a-246e4e67c893")!,
            UUID(uuidString: "b57cc4a2-02a7-488c-89ec-cd82e5033c20")!,
            UUID(uuidString: "2b81a40a-280e-4363-8147-9f690b181d05")!,
            UUID(uuidString: "7ac72fdc-8c68-4af1-a92e-fa1402452be2")!,
            UUID(uuidString: "87a32ba3-fec4-491b-aa0b-2dac40f91342")!,
            UUID(uuidString: "29ba8be8-64f4-4387-a8fb-68b9de6f511b")!,
            UUID(uuidString: "0169fe66-f9a4-482c-b35e-934ad1022ab2")!,
            UUID(uuidString: "ba2d4d08-cfc8-4ffe-a972-a8ef88cf897b")!,
            UUID(uuidString: "81b67d07-a460-496f-b521-477d20ebc867")!,
            UUID(uuidString: "3270a925-18f1-436e-870f-e677101d11ac")!,
            UUID(uuidString: "ceeeb934-5186-4a65-9edc-f33073b3fbc9")!,
            UUID(uuidString: "e3a5973b-0d38-4770-bc1d-4d6ea474d7e4")!,
            UUID(uuidString: "a8d163b3-3bc1-4e7f-b32c-2d9d07139eff")!,
            UUID(uuidString: "e0caa5ea-c059-450e-abd8-9b554b65f5f2")!,
            UUID(uuidString: "af8dbb79-00b1-4047-a0ca-f6d136ae5ae0")!,
            UUID(uuidString: "c2478e33-d5a5-4d41-9456-650d31f28852")!,
            UUID(uuidString: "f3a357f9-c28c-42df-85d0-328ec9576254")!
        ]
        
        let sampleNames = [
            "Spaghetti Bolognese", "Chicken Curry", "Beef Stew", "Vegetable Stir Fry",
            "Fish Tacos", "Mushroom Risotto", "Pancakes", "Caesar Salad",
            "BBQ Ribs", "Pumpkin Soup", "Chocolate Cake", "Tuna Sandwich",
            "Lamb Chops", "Eggplant Parmesan", "Grilled Cheese", "Stuffed Peppers",
            "Tomato Soup", "Chicken Alfredo", "Pad Thai", "Sushi Rolls"
        ]
        
        let sampleInstructions = [
            "Cook pasta until al dente, then mix with sauce.",
            "Marinate chicken, cook with spices, and serve with rice.",
            "Simmer beef with vegetables until tender.",
            "Stir-fry vegetables with soy sauce and garlic.",
            "Prepare fish, assemble tacos with toppings.",
            "Cook rice with broth, add mushrooms and cheese.",
            "Mix batter, cook on a hot griddle, and serve with syrup.",
            "Toss lettuce, croutons, and Caesar dressing.",
            "Slow-cook ribs with BBQ sauce until tender.",
            "Simmer pumpkin with spices, blend into a soup.",
            "Bake chocolate cake and frost with ganache.",
            "Assemble tuna with mayo and bread.",
            "Grill lamb chops with herbs.",
            "Layer eggplant with cheese and tomato sauce, then bake.",
            "Grill bread and melt cheese between slices.",
            "Stuff peppers with rice, meat, and spices, then bake.",
            "Simmer tomatoes with herbs, blend into a soup.",
            "Cook pasta and mix with Alfredo sauce.",
            "Stir-fry noodles with peanuts, chicken, and sauce.",
            "Roll sushi with rice, fish, and seaweed."
        ]
        
        var recipes = [Recipe]()
        for (index, uuid) in uuidsFromCSV.enumerated() {
            let name = sampleNames[index % sampleNames.count]
            let instructions = sampleInstructions[index % sampleInstructions.count]
            let recipe = Recipe(name: name, instructions: instructions, id: uuid)
            recipes.append(recipe)
        }
        return recipes
    }
}

