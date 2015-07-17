require 'spec_helper'
require_relative '../../../../apps/web/controllers/entries/authenticate'

describe Web::Controllers::Entries::Authenticate do
  let(:action) { Web::Controllers::Entries::Authenticate.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
