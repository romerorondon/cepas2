require "application_system_test_case"

class VinoCepasTest < ApplicationSystemTestCase
  setup do
    @vino_cepa = vino_cepas(:one)
  end

  test "visiting the index" do
    visit vino_cepas_url
    assert_selector "h1", text: "Vino Cepas"
  end

  test "creating a Vino cepa" do
    visit vino_cepas_url
    click_on "New Vino Cepa"

    click_on "Create Vino cepa"

    assert_text "Vino cepa was successfully created"
    click_on "Back"
  end

  test "updating a Vino cepa" do
    visit vino_cepas_url
    click_on "Edit", match: :first

    click_on "Update Vino cepa"

    assert_text "Vino cepa was successfully updated"
    click_on "Back"
  end

  test "destroying a Vino cepa" do
    visit vino_cepas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vino cepa was successfully destroyed"
  end
end
