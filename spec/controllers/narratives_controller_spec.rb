require 'spec_helper'

describe NarrativesController do
  describe "get index" do
    it "should assign new narrative" do
      narrative = Narrative.create(title: 'Grapes', story: "I ate the grapes", writer_id: 4)
      get :index
      expect(assigns(:narratives)).to eq([narrative])
    end

    it "should render index.html.erb" do
      get :index
      expect(response).to render_template :index
    end

  end

end
