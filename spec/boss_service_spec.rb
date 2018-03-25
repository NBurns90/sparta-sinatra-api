require 'spec_helper'

describe BlizzardAPI do

  context 'Boss Service Tests' do

    before(:each) do
      @boss = BlizzardAPI.new.single_boss_service
      @boss.single_boss_response('26532', 'en_GB')
    end

    it "Boss ID should be of type Integer" do
      expect(@boss.get_id).to be_instance_of(Integer)
    end

    it "Boss name should be of type String" do
      expect(@boss.get_name).to be_instance_of(String)
    end

    it "Boss description should be of type String" do
      expect(@boss.get_description).to be_instance_of(String)
    end

    it "Boss level should be of type Integer" do
      expect(@boss.get_level).to be_instance_of(Integer)
    end

    it "Boss level should be of type Integer" do
      expect(@boss.get_zoneId).to be_instance_of(Integer)
    end

    it "Boss level should be of type Integer" do
      expect(@boss.get_journalId).to be_instance_of(Integer)
    end

    it "Boss should be type of hash" do
      # p @boss.class
      expect(@boss.class).to be_kind_of(BossService)
    end

  end

end
