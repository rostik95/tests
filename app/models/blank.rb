class Blank < ActiveRecord::Base
	has_many :lists
	has_many :users, :through => :lists
	has_many :comments, dependent: :destroy

	has_many :questions
end
