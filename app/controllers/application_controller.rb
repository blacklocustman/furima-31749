class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
  end

  private
  def tweet_params
    params.require(:item).permit(:name, :image, :text)
  end
end
