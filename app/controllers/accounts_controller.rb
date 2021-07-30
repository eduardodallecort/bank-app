class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new 
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    
    if @account.save
      @account.update(balance: 0.0)
      redirect_to @account
    else
      render :new
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])

    if @account.update(account_params)
      redirect_to @account
    else
      render :edit
    end
  end

  def updateValue(idAccount, value)
    @account = Account.find(idAccount)

    if @account.update(balance: @account.balance + value)
      redirect_to root_path
    end

  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy

    redirect_to root_path
  end

  private
    def account_params
      params.require(:account).permit(:name, :dt_nasc, :cpf, :rg, :password)
    end

end
