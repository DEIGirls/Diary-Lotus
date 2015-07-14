require 'spec_helper'
require_relative '../../../../apps/web/controllers/entries/create'

describe Web::Controllers::Entries::Create do
  let(:action) { Web::Controllers::Entries::Create.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
