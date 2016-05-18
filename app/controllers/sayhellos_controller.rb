class SayhellosController < ApplicationController
  before_action :set_sayhello, only: [:show, :edit, :update, :destroy]

  # GET /sayhellos
  # GET /sayhellos.json
  def index
    @sayhellos = Sayhello.all
  end

  # GET /sayhellos/1
  # GET /sayhellos/1.json
  def show
  end

  # GET /sayhellos/new
  def new
    @sayhello = Sayhello.new
  end

  # GET /sayhellos/1/edit
  def edit
  end

  # POST /sayhellos
  # POST /sayhellos.json
  def create
    @sayhello = Sayhello.new(sayhello_params)

    respond_to do |format|
      if @sayhello.save
        format.html { redirect_to @sayhello, notice: 'Sayhello was successfully created.' }
        format.json { render :show, status: :created, location: @sayhello }
      else
        format.html { render :new }
        format.json { render json: @sayhello.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sayhellos/1
  # PATCH/PUT /sayhellos/1.json
  def update
    respond_to do |format|
      if @sayhello.update(sayhello_params)
        format.html { redirect_to @sayhello, notice: 'Sayhello was successfully updated.' }
        format.json { render :show, status: :ok, location: @sayhello }
      else
        format.html { render :edit }
        format.json { render json: @sayhello.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sayhellos/1
  # DELETE /sayhellos/1.json
  def destroy
    @sayhello.destroy
    respond_to do |format|
      format.html { redirect_to sayhellos_url, notice: 'Sayhello was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sayhello
      @sayhello = Sayhello.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sayhello_params
      params.require(:sayhello).permit(:body)
    end
end
