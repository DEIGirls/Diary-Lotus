require 'spec_helper'
require_relative '../../../../apps/web/controllers/entries/destroy'

describe Web::Controllers::Entries::Destroy do
  let(:action) { Web::Controllers::Entries::Destroy.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
