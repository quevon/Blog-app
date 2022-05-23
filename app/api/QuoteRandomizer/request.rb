# require 'rest-client'

# module QuoteRandomizer
#     class Request
#         BASE_URL = 'https://uselessfacts.jsph.pl/'
#         def self.call(http_method:,endpoint:)
#             result = RestClient::Request.execute(
#                 method: http_method,
#                 url: "#{BASE_URL}#{endpoint}",
#                 headers: {'Content-Type'=>'application/json'}
#             )
#             {code: result.code, status: 'Successs', data: JSON.parse(result)}
#         rescue RestClient::ExceptionWithResponse => error
#             {code: error.http_code, status: error.message,data:Error.map(error.http_code)}
#         end
#     end
# end

# module QuoteRandomizer
#     class Request
#         BASE_URL = 'https://newsapi.org/'
#         def self.call(http_method:,endpoint:,apiKey:)
#             result = RestClient::Request.execute(
#                 method: http_method,
#                 url: "#{BASE_URL}#{endpoint}#{apiKey}",
#                 headers: {'Content-Type'=>'application/json'}
#             )
#             {code: result.code, status: 'ok', data: JSON.parse(result)}
#         rescue RestClient::ExceptionWithResponse => error
#             {code: error.http_code, status: error.message,data:Error.map(error.http_code)}
#         end
#     end
# end
# https://newsapi.org/v2/everything?q=tesla&from=2022-03-27&sortBy=publishedAt&apiKey=f20b23311d054fb6954a298483bfa91c
# https://newsapi.org/v2/everything?q=tesla&from=2022-03-28&sortBy=publishedAt&apiKey=71898e5282af40429db9e2f052a532c0