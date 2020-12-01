class AccounttypesController < ApplicationController
  before_action :set_accounttype, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /accounttypes
  # GET /accounttypes.json
  def index
    @accounttypes = Accounttype.all
  end

  # GET /accounttypes/1
  # GET /accounttypes/1.json
  def show
  end

  # GET /accounttypes/new
  def new
    @accounttype = Accounttype.new
  end

  # GET /accounttypes/1/edit
  def edit
  end

  # POST /accounttypes
  # POST /accounttypes.json
  def create
    @accounttype = Accounttype.new(accounttype_params)

    respond_to do |format|
      if @accounttype.save
        format.html { redirect_to @accounttype, notice: 'Accounttype was successfully created.' }
        format.json { render :show, status: :created, location: @accounttype }
      else
        format.html { render :new }
        format.json { render json: @accounttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounttypes/1
  # PATCH/PUT /accounttypes/1.json
  def update
    respond_to do |format|
      if @accounttype.update(accounttype_params)
        format.html { redirect_to @accounttype, notice: 'Accounttype was successfully updated.' }
        format.json { render :show, status: :ok, location: @accounttype }
      else
        format.html { render :edit }
        format.json { render json: @accounttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounttypes/1
  # DELETE /accounttypes/1.json
  def destroy
    @accounttype.destroy
    respond_to do |format|
      format.html { redirect_to accounttypes_url, notice: 'Accounttype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounttype
      @accounttype = Accounttype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accounttype_params
      params.require(:accounttype).permit(:tipo_conta)
    end
end
