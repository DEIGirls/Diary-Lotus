require 'spec_helper'
require_relative '../../../../apps/web/controllers/entries/index'

describe Web::Controllers::Entries::Index do
  let(:action) { Web::Controllers::Entries::Index.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
