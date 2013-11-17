require "spec_helper"

steps_for :interface do
  step "I visit the main page" do
    visit "/"
  end

  step "I visit any page" do
    rand_str = rand(36**7).to_s(36)
    visit "/" + rand_str
  end

  step "I am redirected to the :name page" do |name|
    current_path.should == "/" + name
  end

  step "I see the maintenance message" do
    expect(page).to have_content 'Under maintenance'
  end
end
