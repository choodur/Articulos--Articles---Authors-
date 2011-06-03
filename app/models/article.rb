class Article < ActiveRecord::Base
  belongs_to :author,  :foreign_key =>"author_id"
  has_many :comments, :dependent => :destroy
  
  VALID = ["draft", "posted"]
   
  order_me "title"
  validates_presence_of :title, :body
  validates_inclusion_of :status, :in => VALID
  before_save :set_date_posted
  
  def set_date_posted
    self.date_posted = self.status.downcase == "posted" ? Time.now : nil
  end
  
end

# == Schema Information
#
# Table name: articles
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  body        :text
#  status      :text
#  date_posted :datetime
#  author_id   :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

