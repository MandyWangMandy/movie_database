class LikemoviesController < ApplicationController
  before_action :set_likemovie, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /likemovies
  # GET /likemovies.json
  def index
    @likemovies = Likemovie.all
  end

  # GET /likemovies/1
  # GET /likemovies/1.json
  def show
  end

  # GET /likemovies/new
  def new
    @likemovie = current_user.likemovies.build
  end

  # GET /likemovies/1/edit
  def edit
  end

  # POST /likemovies
  # POST /likemovies.json
  def create
    @likemovie = current_user.likemovies.build(likemovie_params)

    respond_to do |format|
      if @likemovie.save
        format.html { redirect_to @likemovie, notice: 'Likemovie was successfully created.' }
        format.json { render :show, status: :created, location: @likemovie }
      else
        format.html { render :new }
        format.json { render json: @likemovie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /likemovies/1
  # PATCH/PUT /likemovies/1.json
  def update
    respond_to do |format|
      if @likemovie.update(likemovie_params)
        format.html { redirect_to @likemovie, notice: 'Likemovie was successfully updated.' }
        format.json { render :show, status: :ok, location: @likemovie }
      else
        format.html { render :edit }
        format.json { render json: @likemovie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /likemovies/1
  # DELETE /likemovies/1.json
  def destroy
    @likemovie.destroy
    respond_to do |format|
      format.html { redirect_to likemovies_url, notice: 'Likemovie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_likemovie
      @likemovie = Likemovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def likemovie_params
      params.require(:likemovie).permit(:title, :synopsis, :movie_length, :director, :rating)
    end
end
