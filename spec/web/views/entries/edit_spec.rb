require 'spec_helper'
require_relative '../../../../apps/web/views/entries/edit'

describe Web::Views::Entries::Edit do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/entries/edit.html.erb') }
  let(:view)      { Web::Views::Entries::Edit.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
