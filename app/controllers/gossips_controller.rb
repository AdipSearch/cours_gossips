class GossipsController < ApplicationController
  def new
  	@gossips = Gossip.all
  end

  def index
    @gossips = Gossip.all
    
  end

  def create
  	
		@gossip = current_moussaillon.gossips.new(gossip_params)
		#@gossip.moussaillon = @moussaillon
		@gossip.save

		redirect_to root_path
  	
  end

  def show
  end

  def edit
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path
  end
end

private
	def gossip_params
		params.require(:gossip).permit(:title, :content)
		
	end
