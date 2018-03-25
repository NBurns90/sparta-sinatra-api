require 'httparty'
require 'json'

class BossService
  include HTTParty

  base_uri 'https://eu.api.battle.net/wow/boss'

  def single_boss_response(bossid, locale)
    @bossjson = JSON.parse(self.class.get("/#{bossid}?locale=#{locale}&apikey=bh6xvswtpajh4u33actdcssnurbpzqp6").body)
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

  def get_zoneId
    @bossjson['zoneId']
  end

  def get_journalId
    @bossjson['journalId']
  end

end
