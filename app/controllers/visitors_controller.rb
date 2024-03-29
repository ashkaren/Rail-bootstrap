class VisitorsController < ApplicationController
  def new
	@visitor = Visitor.new
  end
	def create
		@visitor = Visitor.new(secure_params)
		if @visitor.save
			flash[:notice] = "Chose #{@visitor.favorite}."
			redirect_to :root
		else
			redirect_to :root
		end
	end
	def index
		@visitors = Visitor.all		
	end
	private
	def secure_params
		params.require(:visitor).permit(:favorite, :comment)
	end
	
end
