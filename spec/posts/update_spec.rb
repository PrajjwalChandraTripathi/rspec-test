require "rails_helper"

RSpec.describe "Posts", type: :request do

    before do 
        Post.create(name: "First Post", body: "This is the first post")

    end

    scenario "Sends a put request to update a post" do



        patch "http://localhost:3000/posts/1", params: {post: {name: "First Post", body: "I have updated the post"}}
        expect(response).to have_http_status(:success)
        post = JSON.parse(response.body)
        expect(post["name"]).to eq("First Post")
        expect(post["body"]).to eq("I have updated the post")

    end
end