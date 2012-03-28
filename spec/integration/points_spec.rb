describe "Points" do
  let(:user) { Factory(:user) }
  
  before do
    visit new_user_session_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Sign in"
  end
  
  it "should have a list of point deltas" do
    visit points_path
    page.should have_selector("#points-list")
  end
end