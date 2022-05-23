require 'rails_helper'

RSpec.describe Article,type: :model do
            it 'is not a unique title' do
                first_article = Article.create(title: 'My title', content: 'My content')
                second_article = Article.create(title: 'My title' , content: 'content')
 
                 expect(second_article).to_not be_valid
                 expect(second_article.errors).to be_present
                 expect(second_article.errors.to_hash.keys).to include(:title)
                 expect(second_article.errors[:title]).to include("has already been taken")
             end
end