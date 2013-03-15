step "I visit :path" do |path|
  visit(path)
end

step "there is a question titled :question" do |question|
  User.first.questions.create(title: question, image_url: "http://placehold.it/100x100&text=[img]",
                  description: "Pls answer my question")
end

step "I click the :name button for question :question" do |name, question|
  find(:xpath, "//div[2]/div[contains(.,'#{question}')]/div/div[1]/div/a[contains(.,'#{name}')]").click
end

step "I am viewing question :question with a reply :reply" do |question, reply|
  q = User.first.questions.create(title: question, image_url: "http://placehold.it/100x100&text=[img]",
                  description: "Pls answer my question")
  a = User.first.answers.create(reply: reply)
  q.answers << a
  visit("/questions/#{q.id}")
end

step "I should see :text" do |text|
  page.should have_content(text)
end
