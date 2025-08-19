class Perfume < ApplicationRecord
  belongs_to :user, optional: true  # user_idが存在する前提

  before_save :generate_code

  def generate_code
    self.code = [question1, question2, question3, question4, question5].compact.join
  end
end
