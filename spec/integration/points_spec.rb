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
  
  context "with points" do
    let(:other_user) { Factory(:user) }
    let(:point_delta) { Factory(:point_delta, :from_user => user,
      :to_user => other_user, :reason => "For being awesome.") }
    it "should have a point div" do
      visit points_path
      page.should have_selector(".points")
    end
  end
      
end