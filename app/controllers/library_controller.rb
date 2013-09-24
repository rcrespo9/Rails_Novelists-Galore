class LibraryController < ApplicationController

# Create

	def index
	  @novelists = Novelist.all
	end
	

	def create
		@novelist = Novelist.create(params[:novelist])
		redirect_to "/"
	end


# Read


	def novelist
		@id = params[:id]
		@novelist = Novelist.find(@id)
	end


# Update
    def edit
	  	@id = params[:id]
		@novelist = Novelist.find(@id)
	end
	 
   def update
  	   @id = params[:id]
       @novelist = Novelist.find(@id)
  	   @novelist.update_attributes(params[:novelist]) 
         redirect_to "/"
   end



# Delete

    def destroy
      @id = params[:id]
	  @novelist = Novelist.find(@id)
	  @novelist.destroy
      redirect_to "/"
    end
end
