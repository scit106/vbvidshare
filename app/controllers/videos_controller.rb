class VideosController < ApplicationController

	def index
		@videos = Video.all
	end

	def new
		@video = Video.new
	end

	def create
		@video = Video.new
		@video.save
		redirect_to video_path(@video)
	end

	def show
		@video = Video.find(params[:id])
	end

	def edit
		@video = Video.find(params[:id])
	end

	def update
		@video = Video.find(params[:id])
		@video.update_attributes
		redirect_to video_path(@video)
	end

	def destroy
		@video = Video.find(params[:id])
		@video.destroy
		redirect_to videos_path
	end

end
