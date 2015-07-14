require 'spec_helper'
require_relative '../../../../apps/web/views/entries/new'

describe Web::Views::Entries::New do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/entries/new.html.erb') }
  let(:view)      { Web::Views::Entries::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
