class Item < ApplicationRecord
  def index
    render json: Item.all
  end
end
