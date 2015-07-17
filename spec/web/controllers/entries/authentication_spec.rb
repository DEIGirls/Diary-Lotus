require 'spec_helper'
require_relative '../../../../apps/web/controllers/entries/authentication'

describe Web::Controllers::Entries::Authentication do
  let(:action) { Web::Controllers::Entries::Authentication.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
