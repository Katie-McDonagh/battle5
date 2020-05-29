feature 'view hit points' do
    # visit('/play')
    # fill_in :value, with: 1
    # click_button 'Attack'
  scenario 'display hit points' do
    sign_in_and_play
    visit('/play')
    expect(page).to have_content 'Mittens has 1'
  end
end
