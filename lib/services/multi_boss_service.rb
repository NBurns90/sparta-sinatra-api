require 'httparty'
require 'json'

class MultiBossService
  include HTTParty

  base_uri 'https://eu.api.battle.net/wow/boss'

  def multi_boss_response(locale)
    @bossjson = JSON.parse(self.class.get("/?locale=#{locale}&apikey=bh6xvswtpajh4u33actdcssnurbpzqp6").body)
  end

  def get_id
    @bossjson['id']
  end

  def get_name
    @bossjson['name']
  end

  def get_description
    @bossjson['description']
  end

  def get_level
    @bossjson['level']
  end

end
