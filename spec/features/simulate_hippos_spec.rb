require 'rails_helper'

RSpec.feature "SimulateHippos", type: :feature do
  context 'Creating a hippo for simulating' do
    Steps 'Creating a hippo' do
      Given 'I am on the landing page' do
        visit '/'
      end
      When 'I fill in the hippo color and name' do
        fill_in 'name', with: 'Juanita'
        fill_in 'color', with: 'gray'
        fill_in 'age', with: '35'
      end
      And 'I can submit my hippo' do
        click_button 'Simulate Hippo'
      end
      Then 'I can see my hippos info' do
        expect(page).to have_content('Color')
        expect(page).to have_content('Name')
        expect(page).to have_content('Age')
      end
      And 'I can see the swimming speed of the hippo' do
        expect(page).to have_content('Swimming Speed: 0')
      end
      And 'I can toggle the jaws of my hippo to open and close' do
        click_button 'Toggle Jaws'
      end
      And 'The age increases annually ever 60 seconds' do
        expect(page).to have_content('Age')
      end
    end

  end
end
