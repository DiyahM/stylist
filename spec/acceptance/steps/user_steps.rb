step "I already have an account" do
end

step "I click the :name link" do |name|
  click_link(name)
end

step "I log in via facebook" do
  click_link("log in with facebook")
end

step "I click the :name button" do |name|
  click_link(name)
end

step "I create a question titled :question" do |question|
  within("#new_question") do
    fill_in "Title", :with => question
    fill_in "Image url", :with => "http://placehold.it/100x100&text=[img]"
    fill_in "Description", :with => "Please answer my question"
    click_on("Create Question")
  end
end

step "I should see my question :question" do |question|
  page.should have_content(question)
end
