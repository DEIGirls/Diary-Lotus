require 'spec_helper'
require_relative '../../../../apps/web/views/entries/logout'

describe Web::Views::Entries::Logout do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/entries/logout.html.erb') }
  let(:view)      { Web::Views::Entries::Logout.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
