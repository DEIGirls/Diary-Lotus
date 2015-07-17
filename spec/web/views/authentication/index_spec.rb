require 'spec_helper'
require_relative '../../../../apps/web/views/authentication/index'

describe Web::Views::Authentication::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/authentication/index.html.erb') }
  let(:view)      { Web::Views::Authentication::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
