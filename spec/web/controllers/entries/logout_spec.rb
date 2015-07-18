require 'spec_helper'
require_relative '../../../../apps/web/controllers/entries/logout'

describe Web::Controllers::Entries::Logout do
  let(:action) { Web::Controllers::Entries::Logout.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
