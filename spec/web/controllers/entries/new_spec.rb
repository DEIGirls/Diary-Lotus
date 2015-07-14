require 'spec_helper'
require_relative '../../../../apps/web/controllers/entries/new'

describe Web::Controllers::Entries::New do
  let(:action) { Web::Controllers::Entries::New.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
