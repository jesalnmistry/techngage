class WasteController < ApplicationController
	
	wastes = { "dry waste" => ["cardboards", "nails", "wires", "rubber", "newspaper", "cloth", "plastic bags", "aluminium foils", "cans", "wrappers", "broken utensils", "boxes", "tubes", "tires", "medical packages"],
				"wet waste" => ["bones", "kitchen waste", "meat", "fruits", "coconut peel", "eggs", "fish", "finger nails", "tea leaves", "vegetable peels", "hair"], 
				"garden waste" => ["dry leaves", "flowers"], 
				"e-waste" => ["bulb", "batteries", "toys", "computer", "mobiles", "pen drives", "televisions", "monitor", "VCRs", "telephones", "fax machines", "stereos", "tablet computer"], "hazardous waste" => ["vehicle batteries", "solvents", "waste inks", "lighters", "pesticides", "vehicle fluids", "paints", "lead", "mercury", "copper", "zinc"] 
		}

end
