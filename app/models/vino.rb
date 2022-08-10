class Vino < ApplicationRecord
    has_many :vino_cepas
    has_many :cepas, through: :vino_cepas
    validates :nombre, presence: true
end
