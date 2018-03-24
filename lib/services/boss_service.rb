require 'httparty'
require 'json'

class BossService
  include HTTParty

  base_uri 'https://eu.api.battle.net/wow/boss'

  def initialize
    @bossjson = JSON.parse(self.class.get("/24723?locale=en_GB&apikey=bh6xvswtpajh4u33actdcssnurbpzqp6").body)
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
