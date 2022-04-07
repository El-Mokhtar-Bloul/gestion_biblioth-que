class LivresController < ApplicationController

 def index
 	@livres = Livre.all
 end

 def show
 	@livre = Livre.find(params[:id])
 end

 def new
 	@livre = Livre.new
 	
 end

 def edit
 	 @livre = Livre.find(params[:id])

 	
 end

 def create
 	@livre = Livre.new(livres_params)

 	if @livre.save
 	    redirect_to livres_path
 	else
 	   render :new    
 end

end

def update
	 @livre = Livre.find(params[:id])
	 if @livre.update(livres_params)
	 	redirect_to livres_path
	 else
	   render :edit
	 end 	

end

def destroy
     @livre = Livre.find(params[:id])
     @livre.destroy
     redirect_to livres_path
end

 private

def livres_params
	params.require(:livre).permit(:nom, :nombre_de_page, :auteur)
end

end