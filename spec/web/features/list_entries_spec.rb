require 'features_helper'

describe 'List entries' do
  before do
    EntryRepository.clear

    EntryRepository.create(Entry.new(title: 'PoEEA', author: 'Martin Fowler', description: 'lalalaaaaaa'))
    EntryRepository.create(Entry.new(title: 'TDD', author: 'Kent Beck', description: 'badger badger badger'))
  end

  it 'shows a entry element for each entry' do
    visit '/'
    expect( page ).to have_css( '.entry' , :minimum =>2 ), "Expected to find 2 entries"
  end
end
