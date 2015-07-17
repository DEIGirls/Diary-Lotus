require 'spec_helper'
require_relative '../../../../apps/web/views/entries/authentication'

describe Web::Views::Entries::Authentication do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/entries/authentication.html.erb') }
  let(:view)      { Web::Views::Entries::Authentication.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
