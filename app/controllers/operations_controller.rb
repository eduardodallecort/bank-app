class OperationsController < ApplicationController

    def create
        @account = Account.find(params[:account_id])
        @operation = @account.operations.create(operation_params)

        @account.update(balance: @account.balance + @operation.value)
        redirect_to account_path(@account)
    end

    private
        def operation_params
            params.require(:operation).permit(:value, :date)
        end
end
