# DOCS
# class created by: Sebastián Delgado
# date 12/08/2017
# dev contact: sebasdeldi@hotmail.com
# description: message related data modeling

class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :recipient, class_name: 'User'
end
