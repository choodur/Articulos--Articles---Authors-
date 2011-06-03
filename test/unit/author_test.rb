require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  #test "the truth" do
  #  assert true
  #end
    def setup
      @author = authors :one
      @author2 = authors :two
    end
  
    def test_first_name_should_be_present
      assert @author.save, "Author must have first name."
     # assert @author2.save, "This author should not be saved."
    end
    
    def test_last_name_should_be_present
      assert @author.save, "Author must have last name."
     # assert @author2.save, "This author should not be saved."
    end
    
end

# == Schema Information
#
# Table name: authors
#
#  id                     :integer(4)      not null, primary key
#  first_name             :string(255)
#  last_name              :string(255)
#  remarks                :text
#  birthday               :date
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(128)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer(4)      default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  password_salt          :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  failed_attempts        :integer(4)      default(0)
#  unlock_token           :string(255)
#  locked_at              :datetime
#  authentication_token   :string(255)
#  photo_file_name        :string(255)
#  photo_content_type     :string(255)
#  photo_file_size        :integer(4)
#  photo_updated_at       :datetime
#

