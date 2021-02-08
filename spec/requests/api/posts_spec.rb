require 'rails_helper'

RSpec.describe "Api::Posts", type: :request do

  describe "GET /api/posts" do
    context "on success" do
      before do
        response = {
          :status => 'success',
          :data => [
            {
              "userId": 1,
              "id": 1,
              "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
              "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
            },
            {
              "userId": 1,
              "id": 2,
              "title": "qui est esse",
              "body": "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla"
          }]
        }
        stub_request(:get, "https://jsonplaceholder.typicode.com/posts").
        to_return(status: 200, body: response.to_json)
      end
      let(:response_body) { JSON.parse(response.body) }
      
      it "works! (now write some real specs)" do
        get api_posts_path
        expect(response).to have_http_status(200)
        expect(response_body).to be_kind_of(Hash)
        expect(response_body).to have_key("data")
      end
    end

    context "on failure" do
      before do
        stub_request(:get, "https://jsonplaceholder.typicode.com/posts").
        to_return(status: 404, body: '{data: "URL not found"}')
      end
      it "works! (now write some real specs)" do
        get api_posts_path
        expect(response).to have_http_status(404)
      end
    end
  end
end
