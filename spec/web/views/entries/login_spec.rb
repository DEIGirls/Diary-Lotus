require 'spec_helper'
require_relative '../../../../apps/web/views/entries/login'

describe Web::Views::Entries::Login do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/entries/login.html.erb') }
  let(:view)      { Web::Views::Entries::Login.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
