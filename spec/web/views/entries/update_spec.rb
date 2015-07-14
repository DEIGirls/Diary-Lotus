require 'spec_helper'
require_relative '../../../../apps/web/views/entries/update'

describe Web::Views::Entries::Update do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/entries/update.html.erb') }
  let(:view)      { Web::Views::Entries::Update.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
