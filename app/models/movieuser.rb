class Movieuser < ActiveRecord::Base

  has_many :movies, :through => :reviews
  
  def self.create_with_omniauth(auth)
    Movieuser.create!(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"])
  end
end
# == Schema Information
#
# Table name: movieusers
#
#  id         :integer         not null, primary key
#  info       :integer
#  name       :string
#  provider   :string
#  uid        :string
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

