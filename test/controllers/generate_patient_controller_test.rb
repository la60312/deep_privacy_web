require "test_helper"

class GeneratePatientControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get generate_patient_index_url
    assert_response :success
  end
end
