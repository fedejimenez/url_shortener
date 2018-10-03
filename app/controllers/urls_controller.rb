class UrlsController < ApplicationController
  before_action :set_url_by_id, only: [:show]
  before_action :set_url_by_url, only: [:redirect]

  def index
  	# @url = Url.new.find(params[:id])
  	@url = Url.new
  end

  def show
    respond_to do |format|
      format.html
      format.pdf { render pdf: 'contents' }
    end
  end

  def redirect
    if @url
      redirect_to @url.original
    else
      not_found
    end
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(shortened_url_params)
    user = current_user
    @url.user_id = user.id
    @url.shorten!
    new_id = @url.id

    ShorteningNotifier.shortened(user, @url).deliver

    respond_to do |format|
      if @url.save
        format.js
        format.html { redirect_to action: :show, id: new_id, notice: 'Yeah!' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def set_url_by_id
    @url = Url.find(params[:id])
  end

  def set_url_by_url
    shortened_url_raw = BASE_PATH + '/' + params[:id]
    @url = Url.where(shortened: shortened_url_raw).first
  end

  def shortened_url_params
    params.require(:url).permit(:original)
  end
end
