require 'spec_helper'
require_relative '../../../../apps/web/controllers/entries/login'

describe Web::Controllers::Entries::Login do
  let(:action) { Web::Controllers::Entries::Login.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
