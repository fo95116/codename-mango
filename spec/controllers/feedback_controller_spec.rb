require 'spec_helper'

  describe FeedbacksController do

    describe "get index" do
      it "should assign @feedbacks" do
        feedback = Feedback.create(comment: "This was awesome", narrative_id: 1)
        get :index
        expect(assigns(:feedbacks)).to eq([feedback])
      end

    end

  # describe "post create" do

    # context "valid params are sent" do
    #   it "should add feedback to database" do
    #     expect{post :create,
    #       feedback: {comment: "This was awesome", narrative_id: 1}}.to change(Feedback, :count).by(1)
    #   end

    # end

    context "invalid params are sent" do
      it "should not add feedback to database" do
        expect{post :create,
          feedback: {comment: "This was awesome"}}.to_not change(Feedback, :count)
      end
    end
  end

  end