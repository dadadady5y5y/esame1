require "application_system_test_case"

class ToursTest < ApplicationSystemTestCase
  setup do
    @tour = tours(:one)
  end

  test "visiting the index" do
    visit tours_url
    assert_selector "h1", text: "Tours"
  end

  test "creating a Tour" do
    visit tours_url
    click_on "New Tour"

    fill_in "Denominazione", with: @tour.denominazione
    fill_in "Descrizione", with: @tour.descrizione
    fill_in "Descrizione1", with: @tour.descrizione1
    fill_in "Durata", with: @tour.durata
    fill_in "Giorni", with: @tour.giorni
    fill_in "Luogo", with: @tour.luogo
    fill_in "Numero", with: @tour.numero
    click_on "Create Tour"

    assert_text "Tour was successfully created"
    click_on "Back"
  end

  test "updating a Tour" do
    visit tours_url
    click_on "Edit", match: :first

    fill_in "Denominazione", with: @tour.denominazione
    fill_in "Descrizione", with: @tour.descrizione
    fill_in "Descrizione1", with: @tour.descrizione1
    fill_in "Durata", with: @tour.durata
    fill_in "Giorni", with: @tour.giorni
    fill_in "Luogo", with: @tour.luogo
    fill_in "Numero", with: @tour.numero
    click_on "Update Tour"

    assert_text "Tour was successfully updated"
    click_on "Back"
  end

  test "destroying a Tour" do
    visit tours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tour was successfully destroyed"
  end
end
