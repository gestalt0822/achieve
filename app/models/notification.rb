class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :comment
  enum read: {未読:false, 既読:true}
end
