require 'spec_helper'
require_relative '../../../../apps/web/views/home/index'

describe Web::Views::Home::Index do
  let(:exposures) { Hash[books: []] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/home/index.html.erb') }
  let(:view)      { Web::Views::Home::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #index" do
    view.entries.must_equal exposures.fetch(:entries)
  end

  describe 'when there are no entries' do
    it 'shows a placeholder message' do
      rendered.must_include('<p class="placeholder">There are no entries yet.</p>')
    end
  end

  describe 'when there are entries' do
    let(:entry1)     { Entry.new(title: 'PoEEA', author: 'Martin Fowler', description: 'lalalaaaaaa', created_at: Date.today, updated_at: Date.today) }
    let(:entry2)     { Entry.new(title: 'TDD', author: 'Kent Beck', description: 'badger badger badger', created_at: Date.today, updated_at: Date.today) }
    let(:exposures) { Hash[entries: [entry1, entry2]] }

    it 'lists them all' do
      rendered.scan(/class="entry"/).count.must_equal 2
      rendered.must_include('Refactoring')
      rendered.must_include('Domain Driven Design')
    end

    it 'hides the placeholder message' do
      view.render.wont_include('<p class="placeholder">There are no entries yet.</p>')
    end
  end
end
