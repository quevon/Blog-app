# module QuoteRandomizer
#     class Client
#         def self.randomize
#             response = Request.call(http_method:'get', endpoint:'/random.json')
#         end
#         def self.error_call
#             response = Request.call(http_method:'get', endpoint:'/random1234.json')
#         end
#     end
# end


# module QuoteRandomizer
#     class Client
#         def self.everything
#             response = Request.call(http_method:'get', endpoint:'/v2/everything?q=tesla&from=2022-03-28&sortBy=publishedAt&',apiKey:'apiKey=71898e5282af40429db9e2f052a532c0')
#         end
#         def self.headlines
#             response = Request.call(http_method:'get', endpoint:'/v2/top-headlines?country=us&category=business&',apiKey:'apiKey=71898e5282af40429db9e2f052a532c0')
#         end
#         def self.error_call
#             response = Request.call(http_method:'get', endpoint:'/random1234.json')
#         end
#     end
# end