class Api::ExamplesController < ApplicationController
  def index
    render json: Example.all
  end
end
