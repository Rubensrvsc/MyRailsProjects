class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /accounts
  # GET /accounts.json
  def index
    @data_inicio = params[:data_inicio]
    @data_fim = params[:data_final]
    @total_mes = 0
    if @data_inicio and @data_fim
      @accounts = Account.where(user_id: current_user.id,:data_conta => @data_inicio..@data_fim)
      @total_mes = Account.where(user_id: current_user.id,:data_conta => @data_inicio..@data_fim).pluck('SUM(qtd)')[0]
    else
      @accounts = Account.where(user_id: current_user.id)
    end
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
  end

  # GET /accounts/new
  def new
    @account = Account.new
  end

  # GET /accounts/1/edit
  def edit
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @account = Account.new(account_params)
    @account.user_id = current_user.id

    respond_to do |format|
      if @account.save
        format.html { redirect_to @account, notice: 'Account was successfully created.' }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_params
      params.require(:account).permit(:qtd, :data_conta, :comentario,:accounttype_id)
    end
end
