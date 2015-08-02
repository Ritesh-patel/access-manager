class Group < ActiveRecord::Base
  belongs_to :parent, class_name: "Group", foreign_key: "group_id"
  has_many :child, class_name: "Group", foreign_key: "group_id"
end
