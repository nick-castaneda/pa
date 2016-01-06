class TranscriptsController < ApplicationController

  # Doesn't allow creation or destruction of transcripts without a
  # logged in user

  before_action :logged_in_user, only: :create
  before_action :admin_user, only: [:destroy, :edit, :update]

  def index
    @transcripts = Transcript.paginate(page: params[:page], :per_page => 6)
  end

  def show
    @transcript = Transcript.find(params[:id])
    @word_array = @transcript.content.split(' ')
    @url = "/annotations/2".html_safe
  end

  def new
    @transcript = Transcript.new(user_id: 1)
  end
  def create
    @transcript = Transcript.new(transcript_params)
    if @transcript.save
      flash[:success] = "Great job! Transcript created"
      redirect_to transcript_path(@transcript)
    else
      render :new
    end
  end


  def destroy
  end

private

  def transcript_params
    params.require(:transcript).permit(:title, :date, :content, :user_id).merge(:user_id => current_user.id)
  end

end
