require 'rails_helper'


describe 'form page' do
  it 'form renders with the new action' do
    visit new_school_path
    expect(page).to have_content("School Form")
  end

  it 'new form submits content and renders form content' do
    visit new_school_path

    fill_in 'school_title', with: "Software Engineering"
    fill_in 'school_room_number', with: 10

    click_on "Create School"

    expect(page).to have_content("Software Engineering")
  end

  it 'edit form submits content and renders form content' do
    @edit_school = School.create(title: "Computer Science", room_number: 5)

    visit edit_school_path(@edit_school)

    fill_in 'school_title', with: "Risk Analysis"
    fill_in 'school_room_number', with: 10

    click_on "Update School"

    expect(page).to have_content("Risk Analysis")
  end

  it 'submitted new form creates a record in the database' do
    visit new_school_path

    fill_in 'school_title', with: "Sabermetrics"
    fill_in 'school_room_number', with: 42

    click_on "Create School"

    expect(School.last.title).to eq("Sabermetrics")
  end

  it 'submitted edit form creates a record in the database' do
    @edit_db_school = School.create(title: "Computer Science", room_number: 5)

    visit edit_school_path(@edit_db_school)

    fill_in 'school_title', with: "Machine Learning"
    fill_in 'school_room_number', with: 11

    click_on "Update School"

    expect(School.last.title).to eq("Machine Learning")
  end
end

describe 'Show page' do
  let(:school) { School.create(title: "Computer Science", room_number: 5) }

  it 'renders properly' do
    visit school_path(school)
    expect(page.status_code).to eq(200)
  end

  it 'renders the school title' do
    visit school_path(school)
    expect(page).to have_content("Computer Science")
  end
end
