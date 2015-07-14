require 'spec_helper'
require_relative '../../../../apps/web/controllers/entries/edit'

describe Web::Controllers::Entries::Edit do
  let(:action) { Web::Controllers::Entries::Edit.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
