require "rails_helper"

RSpec.describe "Posts", type: :request do

before do
    Post.create(name: "First Post", body: "This is the first post")
    Post.create(name: "Second Post", body: "This is the second post")
    Post.create(name: "Third Post", body: "This is the third post")
    Post.create(name: "Fourth Post", body: "This is the fourth post")
end

    scenario "gets the first post" do 

        get "http://localhost:3000/posts/1"

        expect(response).to have_http_status(:success)
        post = JSON.parse(response.body)
        expect(post["name"]).to eq("First Post")
        expect(post["body"]).to eq("This is the first post")

    end

    scenario "gets the second post" do 

        get "http://localhost:3000/posts/2"

        expect(response).to have_http_status(:success)
        post = JSON.parse(response.body)
        expect(post["name"]).to eq("Second Post")
        expect(post["body"]).to eq("This is the second post")

    end
end