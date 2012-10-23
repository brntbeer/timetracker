class LineItem < ActiveRecord::Base
  belongs_to :invoice

  validates :rate, :presence => true
end
