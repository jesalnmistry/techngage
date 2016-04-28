class WasteController < ApplicationController

	WASTES = { 
		"dry waste" => ["cardboards", "nails", "wires", "rubber", "newspaper", "cloth", "plastic bags", "aluminium foils", "cans", "wrappers", "broken utensils", "boxes", "tubes", "tires", "medical packages"],
		"wet waste" => ["bones", "kitchen waste", "meat", "fruits", "coconut peel", "eggs", "fish", "finger nails", "tea leaves", "vegetable peels", "hair"],
		"garden waste" => ["dry leaves", "flowers", "grass", "hedge trimmings"],
		"e-waste" => ["bulb", "batteries", "toys", "computer", "mobiles", "pen drives", "televisions", "monitor", "VCRs", "telephones", "fax machines", "stereos", "tablet computer"],
		"hazardous waste" => ["vehicle batteries", "solvents", "waste inks", "lighters", "pesticides", "vehicle fluids", "paints", "lead", "mercury", "copper", "zinc"] 
	}

	WASTE_LOGOS = { 
		"dry waste" => "dry_waste",
		"wet waste" => "wet_waste",
		"garden waste" => "garden_waste",
		"e-waste" => "e_waste",
		"hazardous waste" => "hazardous_waste"
	}

	WASTE_DESCRIPTION = {
		"dry waste" => "Dry waste includes all items that are not considered wet or soiled items. Anything that can be kept for an extended period without decomposing.",
		"wet waste" => "Wet waste includes all organic, non-dry waste. It usually include kitchen waste.",
		"garden waste" => "Green waste is biodegradable waste that can be composed of garden or park waste, such as grass or flower cuttings and hedge trimmings.",
		"e-waste" => "E-waste is any waste created by discarded electronic devices and components as well as substances involved in their manufacture or use.",
		"hazardous waste" => "Hazardous waste is waste that poses substantial or potential threats to public health or the environment."
	}

	def show
		@title = "Throw away your waste"
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
