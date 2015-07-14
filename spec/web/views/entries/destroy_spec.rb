require 'spec_helper'
require_relative '../../../../apps/web/views/entries/destroy'

describe Web::Views::Entries::Destroy do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/entries/destroy.html.erb') }
  let(:view)      { Web::Views::Entries::Destroy.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
