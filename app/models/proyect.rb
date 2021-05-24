class Proyect < ApplicationRecord


    has_many :user_proyects
    belongs_to :leads
    


    validates :name, presence: true
    validates :type_proyect, presence: true
    validates :city_name, presence: true
    validates :proyect_address, presence: true
    validates :price, presence: true
    validates :area, presence: true
    validates :vis_value, presence: true
    validates :bathrooms_numbres, presence: true
    validates :parking_lot, presence: true
    validates :sales_email, presence: true
end
