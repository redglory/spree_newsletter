require 'spec_helper'

describe 'Newsletters' do
  context 'as admin user' do
    stub_authorization!

    context 'listing newsletter users' do
      it 'shows an export button' do
        visit admin_newsletters_path
        expect(page).to have_selector(:css, '#btn-export')
      end
    end
  end
end
