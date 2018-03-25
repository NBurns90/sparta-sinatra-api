require 'spec_helper'

describe BlizzardAPI do

  context 'Multi Boss Service Tests' do

    before(:each) do
      @multiboss = BlizzardAPI.new.multi_boss_service
      @multiboss.multi_boss_response('en_GB')
    end

    it 'Instantiaion of Multiboss should be of type Hash' do
      p @multiboss.get_class.class
      expect(@multiboss.get_class.class).to be_kind_of(Hash)
    end

    it 'Each boss hash should contain an npcs array' do
      p @multiboss.get_npcs_class(7).class
      expect(@multiboss.get_npcs_class(7).class).to be_kind_of(Array)
    end

  end

end
