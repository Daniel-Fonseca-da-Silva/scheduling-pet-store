require 'rails_helper'

RSpec.describe Api::PetsController, type: :routing do
  it { should route(:get, 'api/pets').to(action: :index, format: :json) }
  it { should route(:get, 'api/pets/1').to(action: :show, id: 1, format: :json) }

  it { should route(:put, 'api/pets/1').to(action: :update, id: 1, format: :json) }
  it { should route(:patch, 'api/pets/1').to(action: :update, id: 1, format: :json) }

  it { should route(:delete, 'api/pets/1').to(action: :destroy, id: 1, format: :json) }

  it { should route(:post, 'api/pets').to(action: :create, format: :json) }

  # it "routes to #index" do
  # expect(get: "/users").to route_to("users#index")
  # end

  # it "routes to #show" do
  # expect(get: "/users/1").to route_to("users#show", id: "1")
  # end


  # it "routes to #create" do
  # expect(post: "/users").to route_to("users#create")
  # end

  # it "routes to #update via PUT" do
  # expect(put: "/users/1").to route_to("users#update", id: "1")
  # end

  # it "routes to #update via PATCH" do
  # expect(patch: "/users/1").to route_to("users#update", id: "1")
  # end

  # it "routes to #destroy" do
  # expect(delete: "/users/1").to route_to("users#destroy", id: "1")
  # end
end
