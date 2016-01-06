class AnnotationsController < ApplicationController

  def new

  end
  def create

  end

  def show
    @annotation = Annotation.find(params[:id])
  end

end
