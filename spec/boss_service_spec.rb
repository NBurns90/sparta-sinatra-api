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

    it "Boss should be type of hash" do
      p @boss.get_class
      expect(@boss.get_class).to be_instance_of(Hash)
    end

  end

end
