require "application_system_test_case"

class DenemesTest < ApplicationSystemTestCase
  setup do
    @deneme = denemes(:one)
  end

  test "visiting the index" do
    visit denemes_url
    assert_selector "h1", text: "Denemes"
  end

  test "creating a Deneme" do
    visit denemes_url
    click_on "New Deneme"

    fill_in "Ad", with: @deneme.AD
    fill_in "Adres", with: @deneme.ADRES
    fill_in "Emaİl", with: @deneme.EMAİL
    fill_in "Soyad", with: @deneme.SOYAD
    fill_in "Yas", with: @deneme.YAS
    click_on "Create Deneme"

    assert_text "Deneme was successfully created"
    click_on "Back"
  end

  test "updating a Deneme" do
    visit denemes_url
    click_on "Edit", match: :first

    fill_in "Ad", with: @deneme.AD
    fill_in "Adres", with: @deneme.ADRES
    fill_in "Emaİl", with: @deneme.EMAİL
    fill_in "Soyad", with: @deneme.SOYAD
    fill_in "Yas", with: @deneme.YAS
    click_on "Update Deneme"

    assert_text "Deneme was successfully updated"
    click_on "Back"
  end

  test "destroying a Deneme" do
    visit denemes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deneme was successfully destroyed"
  end
end
