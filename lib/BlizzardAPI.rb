require_relative './services/boss_service'
# require_relative './services/multiple_postcodes_service'

class BlizzardAPI

  def boss_service
    BossService.new
  end

end
