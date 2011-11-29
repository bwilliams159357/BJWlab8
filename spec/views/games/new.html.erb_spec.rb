require 'spec_helper'

describe "games/new.html.erb" do
  before(:each) do
    assign(:game, stub_model(Game,
      :name => "MyString",
      :release => "MyString",
      :image => "MyString",
      :rating => 1.5,
      :total_ratings => 1.5,
      :num_ratings => 1
    ).as_new_record)
  end

  it "renders new game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path, :method => "post" do
      assert_select "input#game_name", :name => "game[name]"
      assert_select "input#game_release", :name => "game[release]"
      assert_select "input#game_image", :name => "game[image]"
      assert_select "input#game_rating", :name => "game[rating]"
      assert_select "input#game_total_ratings", :name => "game[total_ratings]"
      assert_select "input#game_num_ratings", :name => "game[num_ratings]"
    end
  end
end
