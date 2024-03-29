require 'spec_helper'

describe "posts/edit.html.erb" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :user_id => 1,
      :title => "MyString",
      :slug => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "input#post_user_id", :name => "post[user_id]"
      assert_select "input#post_title", :name => "post[title]"
      assert_select "input#post_slug", :name => "post[slug]"
      assert_select "textarea#post_body", :name => "post[body]"
    end
  end
end
