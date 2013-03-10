step "I visit the homepage" do
  visit("/")
end

step "I visit the questions page" do
  visit("/questions")
end

step "there is a question titled :question" do |question|
  User.first.questions.create(title: question, image_url: "http://placehold.it/100x100&text=[img]",
                  description: "Pls answer my question")
end

step "I click the :name button for question :question" do |name, question|
  find(:xpath, "//div[2]/div[contains(.,'#{question}')]/div[2]/div[2]/div/a[contains(.,'#{name}')]").click
end
