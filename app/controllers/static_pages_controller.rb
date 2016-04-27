class StaticPagesController < ApplicationController
  
  def contact
  	@title = "Contact"
  end

  def about
  	@title = "About"
  end

  def types_of_waste
  	@title = "Types of Waste"
  end

end