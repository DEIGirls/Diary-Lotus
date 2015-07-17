require 'spec_helper'
require_relative '../../../../apps/web/controllers/authentication/index'

describe Web::Controllers::Authentication::Index do
  let(:action) { Web::Controllers::Authentication::Index.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
