class Comment < ActiveRecord::Base
  belongs_to :article, :foreign_key =>"article_id"
  belongs_to :author
  
  validates_presence_of :body
  #validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[\w]{2,})\Z/i
  before_create :time_in
  
  cattr_reader :per_page
  @@per_page = 1
  
  def time_in
    self.comment_date = Time.now
  end
end

# == Schema Information
#
# Table name: comments
#
#  id           :integer(4)      not null, primary key
#  email        :string(255)
#  body         :text
#  comment_date :datetime
#  article_id   :integer(4)
#  created_at   :datetime
#  updated_at   :datetime
#

