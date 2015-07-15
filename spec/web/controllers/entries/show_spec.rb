require 'spec_helper'
require_relative '../../../../apps/web/controllers/entries/show'

describe Web::Controllers::Entries::Show do
  let(:action) { Web::Controllers::Entries::Show.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
