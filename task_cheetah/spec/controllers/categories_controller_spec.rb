# require "rails_helper"

# RSpec.describe CategoriesController do
#   describe "GET #index" do
#     before :each do
#       @request.host = 'localhost:3000'
#     end
    # def host
    #   'localhost:3000'
    # end

    # @request.host = 'localhost:3000'

#     subject { get :index }
#
#     it "renders the index template" do
#       byebug
#       expect(subject).to render_template(:index)
#     end
#   end
# end

# RSpec.describe CategoriesController, type: :controller do
#   let(:valid_attributes) do
#     {name: "Home Improvement"}
#   end
#
#   let(:invalid_attributes) do
#     {name: nil}
#   end
#
#   describe "Basic Viewing" do
#     let(:category) {Category.create!(valid_attributes)}
#
#     it "renders the index template" do
#       get :index
#       expect(assigns(:categories)).to eq([categories])
#     end
#
#     it "render the specific category template" do
#       get :show, {id: category.id}
#       expect(assings(:category)).to eq([category])
#     end
#   end
# end
