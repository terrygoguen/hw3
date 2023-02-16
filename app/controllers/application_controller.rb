class ApplicationController < ActionController::Base
end

def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post["title"] = params["post"]["title"]
    @post["description"] = params["post"]["description"]
    @post.save
    redirect_to "/posts"
  end    

# create_table "posts", force: :cascade do |t|
#     t.string "title"
#     t.text "description"
#     t.date "posted_on"
#     t.integer "place_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

# end
