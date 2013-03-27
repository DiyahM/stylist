require 'spec_helper'

describe Tag do
  it { should validate_uniqueness_of(:title) }

  describe "create_or_find" do
    it "create or finds a tag by title" do
      t = Tag.create_or_find("test")
      expect(t).to be_kind_of(Tag)
      expect(t.title).to eq "test"
    end
  end
end
