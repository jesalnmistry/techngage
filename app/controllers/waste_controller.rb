class WasteController < ApplicationController

	WASTES = { 
		"Dry Waste" => ["magazines","coupons","posters","cards","cardboards", "nails", "wires", "rubber", "newspaper", "cloth", "plastic bags", "aluminium foils", "cans", "wrappers", "broken utensils", "boxes", "tubes", "tires", "medical packages"],
		"Wet Waste" => ["bones", "kitchen waste", "meat", "fruits", "coconut peel", "eggs", "fish", "finger nails", "tea leaves", "vegetable peels", "hair", "chewing gum", "broken glass"],
		"Garden Waste" => ["dry leaves", "flowers", "grass", "hedge trimmings", "leaves", "weed", "weeds", "seeds", "twigs"],
		"E-Waste" => ["bulb", "batteries", "toys", "computer", "mobiles", "pen drives", "televisions", "monitor", "VCRs", "telephones", "fax machines", "stereos", "tablet computer"],
		"Hazardous Waste" => ["vehicle batteries", "solvents", "waste inks", "lighters", "pesticides", "vehicle fluids", "paints", "lead", "mercury", "copper", "zinc"] 
	}

	WASTE_LOGOS = { 
		"Dry Waste" => "dry_waste",
		"Wet Waste" => "wet_waste",
		"Garden Waste" => "garden_waste",
		"E-Waste" => "e_waste",
		"Hazardous Waste" => "hazardous_waste"
	}

	WASTE_DESCRIPTION = {
		"Dry Waste" => "Dry waste includes all items that are not considered wet or soiled items. Anything that can be kept for an extended period without decomposing.",
		"Wet Waste" => "Wet waste includes all organic, non-dry waste. It usually includes kitchen waste.",
		"Garden Waste" => "Garden waste is biodegradable waste that can be composed of garden or park waste, such as grass or flower cuttings and hedge trimmings.",
		"E-Waste" => "E-waste is any waste created by discarded electronic devices and components as well as substances involved in their manufacture or use.",
		"Hazardous Waste" => "Hazardous waste is waste that poses substantial or potential threats to public health or the environment."
	}

	def show
		@title = "Search Result"
		@waste_query = params[:waste_query]
		WASTES.each do |key , value|
			value.each do |waste|
				if waste.eql?(@waste_query.downcase)
					@type_of_waste = key
				end
			end
		end
		@waste_logo = WASTE_LOGOS[@type_of_waste]
		@waste_description = WASTE_DESCRIPTION[@type_of_waste]
	end
end
