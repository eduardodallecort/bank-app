class Account < ApplicationRecord

    has_many :transactions

    validates :name, presence: true
    validates :dt_nasc, presence: true
    validates :cpf, presence: true
    validates :rg, presence: true
    validates :password, presence: true

end
