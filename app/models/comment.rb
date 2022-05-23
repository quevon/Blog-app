class Comment < ApplicationRecord
  belongs_to :article


  before_create :set_comment_article
    


  def set_comment_article
      if body.blank?
          self.body = "Default comments"
      end
  end
end
