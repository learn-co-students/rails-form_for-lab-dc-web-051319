require 'rails_helper'


describe SchoolsController do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new school" do
        expect{
          post :create, params: { :school => { :title => "Computer Science", :room_number => 5 } }
        }.to change(School,:count).by(1)
      end

      it "redirects to the new school" do
        post :create, params: { :school => { :title => "Computer Science", :room_number => 5 } }
        expect(response).to redirect_to School.last
      end
    end
  end

end
