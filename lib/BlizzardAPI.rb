require_relative './services/boss_service'
require_relative './services/multi_boss_service'

class BlizzardAPI

  def single_boss_service
    BossService.new
  end

  def multi_boss_service
    MultiBossService.new
  end

end
