class GivesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_gife, only: [:show, :edit, :update, :destroy, :endd]

  def endd
    @gife.endd = true
    @gife.save

    redirect_to '/gives'
  end

  # GET /gives
  # GET /gives.json
  def index
    @gives = Give.all
    if params[:search]
      @gives = Give.search(params[:search]).order("created_at DESC")
    else
      @gives = Give.all.order('created_at DESC')
    end
  end

  # GET /gives/1
  # GET /gives/1.json
  def show
  end

  # GET /gives/new
  def new
    @gife = Give.new
  end

  # GET /gives/1/edit
  def edit
  end

  # POST /gives
  # POST /gives.json
  def create
    @gife = Give.new(gife_params)
    @gife.name = current_user.name
    @gife.user_id = current_user.id
    @gife.endd = false


    respond_to do |format|
      if @gife.save
        format.html { redirect_to @gife, notice: 'Give was successfully created.' }
        format.json { render :show, status: :created, location: @gife }
      else
        format.html { render :new }
        format.json { render json: @gife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gives/1
  # PATCH/PUT /gives/1.json
  def update
    respond_to do |format|
      if @gife.update(gife_params)
        format.html { redirect_to @gife, notice: 'Give was successfully updated.' }
        format.json { render :show, status: :ok, location: @gife }
      else
        format.html { render :edit }
        format.json { render json: @gife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gives/1
  # DELETE /gives/1.json
  def destroy
    @gife.destroy
    respond_to do |format|
      format.html { redirect_to gives_url, notice: 'Give was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gife
      @gife = Give.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gife_params
      params.require(:give).permit(:title, :content, :image)
    end


end
