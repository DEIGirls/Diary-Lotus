require 'spec_helper'
require_relative '../../../../apps/web/controllers/entries/update'

describe Web::Controllers::Entries::Update do
  let(:action) { Web::Controllers::Entries::Update.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
