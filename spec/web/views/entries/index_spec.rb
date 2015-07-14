require 'spec_helper'
require_relative '../../../../apps/web/views/entries/index'

describe Web::Views::Entries::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/entries/index.html.erb') }
  let(:view)      { Web::Views::Entries::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
