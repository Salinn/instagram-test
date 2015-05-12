require 'test_helper'

class ImageLibrariesControllerTest < ActionController::TestCase
  setup do
    @image_library = image_libraries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_libraries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_library" do
    assert_difference('ImageLibrary.count') do
      post :create, image_library: { name: @image_library.name }
    end

    assert_redirected_to image_library_path(assigns(:image_library))
  end

  test "should show image_library" do
    get :show, id: @image_library
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_library
    assert_response :success
  end

  test "should update image_library" do
    patch :update, id: @image_library, image_library: { name: @image_library.name }
    assert_redirected_to image_library_path(assigns(:image_library))
  end

  test "should destroy image_library" do
    assert_difference('ImageLibrary.count', -1) do
      delete :destroy, id: @image_library
    end

    assert_redirected_to image_libraries_path
  end
end
