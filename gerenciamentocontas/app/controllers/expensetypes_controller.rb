class ExpensetypesController < ApplicationController
  before_action :set_expensetype, only: [:show, :edit, :update, :destroy]

  # GET /expensetypes
  # GET /expensetypes.json
  def index
    @expensetypes = Expensetype.all
  end

  # GET /expensetypes/1
  # GET /expensetypes/1.json
  def show
  end

  # GET /expensetypes/new
  def new
    @expensetype = Expensetype.new
  end

  # GET /expensetypes/1/edit
  def edit
  end

  # POST /expensetypes
  # POST /expensetypes.json
  def create
    @expensetype = Expensetype.new(expensetype_params)

    respond_to do |format|
      if @expensetype.save
        format.html { redirect_to @expensetype, notice: 'Expensetype was successfully created.' }
        format.json { render :show, status: :created, location: @expensetype }
      else
        format.html { render :new }
        format.json { render json: @expensetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expensetypes/1
  # PATCH/PUT /expensetypes/1.json
  def update
    respond_to do |format|
      if @expensetype.update(expensetype_params)
        format.html { redirect_to @expensetype, notice: 'Expensetype was successfully updated.' }
        format.json { render :show, status: :ok, location: @expensetype }
      else
        format.html { render :edit }
        format.json { render json: @expensetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expensetypes/1
  # DELETE /expensetypes/1.json
  def destroy
    @expensetype.destroy
    respond_to do |format|
      format.html { redirect_to expensetypes_url, notice: 'Expensetype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expensetype
      @expensetype = Expensetype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expensetype_params
      params.require(:expensetype).permit(:tipo_receita)
    end
end
