require 'spec_helper'
require_relative '../../../../apps/web/views/entries/show'

describe Web::Views::Entries::Show do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/entries/show.html.erb') }
  let(:view)      { Web::Views::Entries::Show.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
