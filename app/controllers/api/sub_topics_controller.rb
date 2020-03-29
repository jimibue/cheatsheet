class Api::SubTopicsController < ApplicationController
  def show
    render json: SubTopic.getAllExamples(params[:id]).to_json
  end
end
