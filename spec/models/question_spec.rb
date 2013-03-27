require 'spec_helper'

describe Question do
  
  describe "update_tags" do
    it "updates the tags popularity count" do
      tag = Tag.create_or_find("test")
      count = tag.count
      question = Question.create(image_url: "http://placehold.it/100x100&text=[img]", title: "why", tag_ids: [tag.id])
      question.update_tags
      expect(question.tags.first.count).to eq (count + 1)
    end

  end
end
