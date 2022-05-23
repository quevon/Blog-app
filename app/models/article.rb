class Article < ApplicationRecord
    # scope :long_title, -> (min_length) {where("LENGTH(title) > ? " ,min_length)}

    has_many :comments , dependent: :destroy
    # validates :content, presence:true
    # validates :title, presence:true  , uniqueness: true
    has_many :article_advertisements
    has_many :advertisements, through: :article_advertisements

    before_save :set_comment_article
    
    def set_comment_article
        self.comments.build(body: 'Default comments') 
    end
   
    # before_create  :set_author_name
    # before_save  :set_author_name
    # before_validation  :set_author_name




    # def set_author_name
    #     if author.blank?
    #         self.author = "Default author"
    #     end
    # end
    # validate    :check_length

    # def check_length
    #     if !self.content.nil? && self.content.length > 5
    #         errors.add(:different_content, "Too long")
    #     end
    # end
end


# , uniqueness: true