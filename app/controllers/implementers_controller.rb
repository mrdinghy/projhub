class ImplementersController < ApplicationController
  before_action :set_implementer, only: [:show, :edit, :update, :destroy]

  # GET /implementers
  # GET /implementers.json
  def index
    @implementers = Implementer.all
  end

  # GET /implementers/1
  # GET /implementers/1.json
  def show
    @projects  = Project.where('implementer_id = ?', @implementer.id)
  end

  # GET /implementers/new
  def new
    @implementer = Implementer.new
  end

  # GET /implementers/1/edit
  def edit
  end

  # POST /implementers
  # POST /implementers.json
  def create
    @implementer = Implementer.new(implementer_params)

    respond_to do |format|
      if @implementer.save
        format.html { redirect_to @implementer, notice: 'Implementer was successfully created.' }
        format.json { render :show, status: :created, location: @implementer }
      else
        format.html { render :new }
        format.json { render json: @implementer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /implementers/1
  # PATCH/PUT /implementers/1.json
  def update
    respond_to do |format|
      if @implementer.update(implementer_params)
        format.html { redirect_to @implementer, notice: 'Implementer was successfully updated.' }
        format.json { render :show, status: :ok, location: @implementer }
      else
        format.html { render :edit }
        format.json { render json: @implementer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /implementers/1
  # DELETE /implementers/1.json
  def destroy
    @implementer.destroy
    respond_to do |format|
      format.html { redirect_to implementers_url, notice: 'Implementer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_implementer
      @implementer = Implementer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def implementer_params
      params.require(:implementer).permit(:name, :description, :code)
    end
end
