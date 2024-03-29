require "rails_helper"

RSpec.describe "Posts", type: :request do

before do
    Post.create(name: "First Post", body: "This is the first post")
    Post.create(name: "Second Post", body: "This is the second post")
    Post.create(name: "Third Post", body: "This is the third post")
    Post.create(name: "Fourth Post", body: "This is the fourth post")
end

scenario "Get all posts and checks the array length" do

    get "http://localhost:3000/posts"
    expect(response).to have_http_status(:success)
    posts = JSON.parse(response.body)
    expect(posts.length).to eq(4)


end
end
