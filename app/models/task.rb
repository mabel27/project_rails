class Task < ActiveRecord::Base
  belongs_to :team
  has_and_belongs_to_many :user
end
