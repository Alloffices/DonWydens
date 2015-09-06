class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :projects, class_name: "Project", foreign_key: "recipient_id"
   has_many :sent_projects, class_name: "Project", foreign_key: "sender_id"

  after_create :send_notification

  def send_notification
  	AdminMailer.new_user(self).deliver_now
  end


# class User < ActiveRecord::Base
#    has_many :messages, class_name: "Message", foreign_key: "recipient_id"
#    has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
# end


end
