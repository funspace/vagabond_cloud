require 'sinatra'
require 'json'

get '/' do
  'hello!!'
end

get '/coupang/centos-6.4-with-dev-tool' do
  content_type :json
  {
      description: 'This is Centos 6.4 Vagrant box for coupang service',
      short_description: 'Centos 6.4 for coupang service',
      name: 'coupang/centos-6.4-with-dev-tool',
      versions: [
          {
              version: '1.0.0',
              status: 'active',
              description_html: nil,
              description_markdown: '',
              providers: [
                  {
                      name: 'virtualbox',
                      url: 'http://192.168.33.24/coupang/centos-6.4-with-dev-tool/version/1/provider/virtualbox.box'
                  }
              ]
          }
      ]
  }.to_json
end
