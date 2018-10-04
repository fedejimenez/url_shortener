class UrlsController < ApplicationController
	# before_action :set_url_by_id, only: [:show]
  # before_action :set_url_by_url, only: [:redirect]

	def create
		@url = Url.new(url_params)
		if !Url.retrieve_short_url(params[:url][:long_url]) && @url.save 
			redirect_to urls_path
		else
 			@errors = @url.errors.full_messages
 			# @errors = "error"
			render 'new'
		end

	end

 	def index
		@urls = Url.all
	end

 	def new
		@url = Url.new
	end

 	def show
		@url = Url.find(params[:id])
	end

	def destroy
		@url = Url.find(params[:id])
    @url.destroy
		redirect_to urls_path
	end

	private

  def url_params
    params.require(:url).permit(:long_url)
  end


	# def redirect
 #    if @url
 #      redirect_to @url.long_url
 #    else
 #      not_found
 #    end
 #  end

  # def set_url_by_id
  # 	@url = Url.find(params[:id])
  # end

  # def set_url_by_url
  #   url_raw = BASE_PATH + '/' + params[:id]
  #   @url = Url.where(shortened: url_raw).first
  # end

end