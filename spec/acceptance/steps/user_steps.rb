step "I am logged in" do
  step "I visit '/'"
  step "I click the 'login' link"
  step "I log in via facebook"
end

step "I already have an account" do
end

step "I click the :name link" do |name|
  click_link(name)
end

step "I log in via facebook" do
  click_link("log in with facebook")
end

step "I click the :name button" do |name|
  click_on(name)
end

step "I create a question titled :question" do |question|
  fill_in "Question", :with => question
  fill_in "Image url", :with => "http://placehold.it/100x100&text=[img]"
  fill_in "Description", :with => "Please answer my question"
end

step "I should see my question :question" do |question|
  page.should have_content(question)
end

step "I answer with :answer" do |answer|
  fill_in "Reply", :with => answer
  click_on("Create Answer")
end

step "I should see my image posted with my question" do
  page.should have_xpath("//img[@src=\'http://placehold.it/100x100&text=[img]']")
end

step "I should see the :name link" do |name|
  page.should have_xpath("//a[contains(.,'#{name}')]")
end

step "I am not already logged in" do
  visit ('/signout')
end

step "I should return to :path" do |path|
  current_path.should == path
end

step "I click the vote up button for reply :reply" do |reply|
  find(:xpath, "//div[@class='replies'][contains(.,'#{reply}')]/div[2]/div[1]/div/a/div[@class='up-arrow']").click
end

step "reply :reply should have :number points" do |reply, number|
  find(:xpath, "//div[@class='replies'][contains(.,'#{reply}')]/div[2]/div[1]/div[@class='row points']").text.should == number
end


step "I post question :question with tag :tag1 and :tag2" do |question, tag1, tag2|
  step "I am logged in"
  step "I click the 'Ask a style question' button"
  fill_in "Question", :with => question
  fill_in "Image url", :with => "http://placehold.it/100x100&text=[img]"
  fill_in "Description", :with => "Please answer my question"
  fill_in "tag-field", :with => "#{tag1} #{tag2}"
  step "I click the 'Create Question' button"
end

step "I should see my tags :tag1 and :tag2 posted with my question" do |tag1, tag2|
  page.should have_content(tag1)
  page.should have_content(tag2)
end 
