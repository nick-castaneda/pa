module Api
  class TranscriptsController < ApplicationController

    def index
      render json: Transcript.all
    end

    def show
      render json: Transcript.find(params[:id])
    end
  end
end
