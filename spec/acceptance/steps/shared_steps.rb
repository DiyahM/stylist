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
