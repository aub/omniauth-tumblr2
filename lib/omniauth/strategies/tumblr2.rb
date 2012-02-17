require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Tumblr2 < OmniAuth::Strategies::OAuth

      option :name, 'tumblr2'
      option :client_options, {:site => 'http://www.tumblr.com'}

      uid { raw_info['name'] }

      info do
        {
          :nickname => raw_info['name'],
          :name => raw_info['name'],
          :blogs => raw_info['blogs'].map do |b|
            { :name => b['name'], :url => b['url'], :title => b['title'] }
          end
        }
      end

      extra do
        { 'raw_info' => raw_info }
      end

      def raw_info
        url = 'http://api.tumblr.com/v2/user/info'
        @raw_info ||= MultiJson.decode(@access_token.get(url).body)['response']['user']
      end
    end
  end
end
