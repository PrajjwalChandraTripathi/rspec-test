# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
posts = Post.create([
    {name: "jai sai deepak", body: "This is my first post"},
    {name: "prajjwal", body: "This is my second post"},
    {name: "akshay", body: "This is my third post"},
    {name: "aayush", body: "This is my fourth post"},

])
