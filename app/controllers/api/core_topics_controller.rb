class Api::CoreTopicsController < ApplicationController
  def index
    #  render json: CoreTopic.getItem()
    render json: CoreTopic.defaultCheatSheetsWithExamples.to_json
  end

  def get_nav_items
    render json: CoreTopic.getNavItems.to_json
  end

  def show
    render json: CoreTopic.getItem(params[:id])
  end
end
