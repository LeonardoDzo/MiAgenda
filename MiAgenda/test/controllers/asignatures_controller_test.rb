require 'test_helper'

class AsignaturesControllerTest < ActionController::TestCase
  setup do
    @asignature = asignatures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asignatures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asignature" do
    assert_difference('Asignature.count') do
      post :create, asignature: { semester: @asignature.semester, tittle: @asignature.tittle }
    end

    assert_redirected_to asignature_path(assigns(:asignature))
  end

  test "should show asignature" do
    get :show, id: @asignature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asignature
    assert_response :success
  end

  test "should update asignature" do
    patch :update, id: @asignature, asignature: { semester: @asignature.semester, tittle: @asignature.tittle }
    assert_redirected_to asignature_path(assigns(:asignature))
  end

  test "should destroy asignature" do
    assert_difference('Asignature.count', -1) do
      delete :destroy, id: @asignature
    end

    assert_redirected_to asignatures_path
  end
end
