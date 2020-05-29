feature 'view hit points' do
  before do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
  end
  scenario 'display hit points' do
    visit('/score')
    expect(page).to have_content 'Mittens has 1'
  end
end
