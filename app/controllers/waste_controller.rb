class WasteController < ApplicationController

	WASTES = { "dry waste" => ["cardboards", "nails", "wires", "rubber", "newspaper", "cloth", "plastic bags", "aluminium foils", "cans", "wrappers", "broken utensils", "boxes", "tubes", "tires", "medical packages"],
			"wet waste" => ["bones", "kitchen waste", "meat", "fruits", "coconut peel", "eggs", "fish", "finger nails", "tea leaves", "vegetable peels", "hair"],
			"garden waste" => ["dry leaves", "flowers"],
			"e-waste" => ["bulb", "batteries", "toys", "computer", "mobiles", "pen drives", "televisions", "monitor", "VCRs", "telephones", "fax machines", "stereos", "tablet computer"],
			"hazardous waste" => ["vehicle batteries", "solvents", "waste inks", "lighters", "pesticides", "vehicle fluids", "paints", "lead", "mercury", "copper", "zinc"] 
	}

	WASTE_LOGOS = { "dry waste" => "dry_waste",
				"wet waste" => "wet_waste",
				"garden waste" => "garden_waste",
				"e-waste" => "e_waste",
				"hazardous waste" => "hazardous_waste"
	}

	def show
		@waste_query = params[:waste_query]
		WASTES.each do |key , value|
			value.each do |waste|
				if waste.eql?(@waste_query.downcase)
					@type_of_waste = key
				end
			end
		end
		@waste_logo = WASTE_LOGOS[@type_of_waste]
	end
end
