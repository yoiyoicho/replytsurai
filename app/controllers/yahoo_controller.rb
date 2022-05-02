class YahooController < ApplicationController
  require 'net/http'
  require 'json'

  def show
    @userid = params[:userid]
    @authorname = params[:authorname]
    @text = params[:text]
    @reply = get_reply(@text)
  end

  private

  def get_reply(text)
    yahoo_url = 'https://jlp.yahooapis.jp/NLUService/V1/analyze'
    appid = ENV['YAHOO_APP_ID']
    method = 'SAY'

    escape_text =  URI.escape(text)
    url = yahoo_url + '?appid=' + appid + '&intext=' + escape_text + '&sample0=' + method + ',' + escape_text
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)

    json_response_body = JSON.parse(response.body)
    if response.code == '200' && json_response_body['result']['method'] == 'SAY'
      reply = json_response_body['result']['param_text']
    else
      reply = 'AIもリプライを思いつきませんでした。自分で考えよう！'
    end
    reply
  end
end
