require 'spec_helper'

describe BlizzardAPI do

  context 'Boss Service Tests' do

    before(:each) do
      @blizzardapi = BlizzardAPI.new
      @boss = @blizzardapi.boss_service
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
      p @boss
    end

  end

end
