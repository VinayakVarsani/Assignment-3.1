class Physician < ApplicationRecord
    has_many :appointments
  has_many :patients, through: :appointments
  validates :name, presence: true
    validates :email, presence: true
    validates_uniqueness_of :email
    before_create :add_unique_id

    private
        def add_unique_id
            unique = SecureRandom.uuid
            while Physician.where(unique_id: unique).length != 0
                unique = SecureRandom.uuid
            end
            p unique
            self.unique_id = unique
            p self.unique_id
        
        end
end
