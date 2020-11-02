
require 'spec_helper'
require 'rails_helper'
require 'pages_controller'

RSpec.describe 'PagesController' do
    context 'Ожидается число большее из двух' do
        it 'Больший параметр - строка' do
            expect(PagesController.max(5,'7')).to eq '7'
        end
        it{expect(PagesController.max(5,4)).to eq 5}
        it{expect(PagesController.max(8,7)).to eq 8}
    end
    context 'false' do
        it{expect(PagesController.max('','')).not_to eq 5}
    end
end