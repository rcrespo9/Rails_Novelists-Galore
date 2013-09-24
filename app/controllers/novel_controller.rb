class NovelController < ApplicationController

	def new
		@novelist_id = params[:id]
	end

	def create
		novelist_id = params[:id]

		novelist = Novelist.find(novelist_id)
		novel = Novel.create(params[:novel])
		novelist.novels << novel

		redirect_to "/library/#{novelist_id}"
	end

	def edit
		@novelist_id = params[:novelist_id]
		novel_id = params[:id]

		novelist = Novelist.find(@novelist_id)
		@novel = novelist.novels.find(novel_id)
	end


	def update
		novelist_id = params[:novelist_id]
		novel_id = params[:id]

		novelist = Novelist.find(novelist_id)
		novelist.novels.find(novel_id).update_attributes(params[:novel])

		redirect_to "/library/#{novelist_id}"
	end

	def destroy
		novelist_id = params[:novelist_id]
		novel_id = params[:id]	

		novelist = Novelist.find(novelist_id)
		novelist.novels.find(novel_id).destroy

		redirect_to "/library/#{novelist_id}"
	end
end