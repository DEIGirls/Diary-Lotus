require 'spec_helper'
require_relative '../../../../apps/web/views/entries/authenticate'

describe Web::Views::Entries::Authenticate do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/entries/authenticate.html.erb') }
  let(:view)      { Web::Views::Entries::Authenticate.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
