require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "VersionString" do
  
  describe "0.2.4" do
    before do
      @vs = VersionString.new('0.2.4')
    end

    it "should be > 0.1" do
      (@vs > VersionString.new('0.1')).should be_true
    end
    
    it "should be > 0.2.3" do
      (@vs > VersionString.new('0.2.3')).should be_true
    end

    it "should be > 0.2.3.9" do
      (@vs > VersionString.new('0.2.3.9')).should be_true
    end

    it "should be == 0.2.4" do
      (@vs == VersionString.new('0.2.4')).should be_true
    end

    it "should be < 0.2.4.4" do
      (@vs < VersionString.new('0.2.4.4')).should be_true
    end

    it "should be < 0.2.5" do
      (@vs < VersionString.new('0.2.5')).should be_true
    end

    it "should be < 0.2.12" do
      (@vs < VersionString.new('0.2.12')).should be_true
    end

    it "should be < 0.3" do
      (@vs < VersionString.new('0.3')).should be_true
    end
  end

end

