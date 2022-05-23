# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'json'
require 'rest-client'


# url ='https://hacker-news.firebaseio.com/v0/topstories.json'
# post_ids = open(url).read
# posts = JSON.parse(post_ids)


# 10.times do |index|
#     post_id = posts[index]
#     url_post = "https://hacker-news.firebaseio.com/v0/item/#{post_id}.json"
#     post_info = open(url_post).read
#     post = JSON.parse(post_info)
#     new_post = Article.create(
#         title: post['title']
#     )
# end


url = RestClient.get("https://newsapi.org/v2/everything?q=tesla&from=2022-03-27&sortBy=publishedAt&apiKey=f20b23311d054fb6954a298483bfa91c")

articles = JSON.parse(url)

articles.each do |article|
   Article.create(
       title: article[0]["title"]
   )
end


