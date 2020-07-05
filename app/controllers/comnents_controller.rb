class ComnentsController < ApplicationController
  before_action :set_comnent, only: [:show, :edit, :update, :destroy]

  # GET /comnents
  # GET /comnents.json
  def index
    @comnents = Comnent.all
  end

  # GET /comnents/1
  # GET /comnents/1.json
  def show
  end

  # GET /comnents/new
  def new
    @comnent = Comnent.new
  end

  # GET /comnents/1/edit
  def edit
  end

  # POST /comnents
  # POST /comnents.json
  def create
    @comnent = Comnent.new(comnent_params)

    respond_to do |format|
      if @comnent.save
        format.html { redirect_to @comnent, notice: 'Comnent was successfully created.' }
        format.json { render :show, status: :created, location: @comnent }
      else
        format.html { render :new }
        format.json { render json: @comnent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comnents/1
  # PATCH/PUT /comnents/1.json
  def update
    respond_to do |format|
      if @comnent.update(comnent_params)
        format.html { redirect_to @comnent, notice: 'Comnent was successfully updated.' }
        format.json { render :show, status: :ok, location: @comnent }
      else
        format.html { render :edit }
        format.json { render json: @comnent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comnents/1
  # DELETE /comnents/1.json
  def destroy
    @comnent.destroy
    respond_to do |format|
      format.html { redirect_to comnents_url, notice: 'Comnent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comnent
      @comnent = Comnent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comnent_params
      params.require(:comnent).permit(:post_id, :body)
    end
end
