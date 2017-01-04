require 'test_helper'

class LikemoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @likemovie = likemovies(:one)
  end

  test "should get index" do
    get likemovies_url
    assert_response :success
  end

  test "should get new" do
    get new_likemovie_url
    assert_response :success
  end

  test "should create likemovie" do
    assert_difference('Likemovie.count') do
      post likemovies_url, params: { likemovie: { director: @likemovie.director, movie_length: @likemovie.movie_length, rating: @likemovie.rating, synopsis: @likemovie.synopsis, title: @likemovie.title } }
    end

    assert_redirected_to likemovie_url(Likemovie.last)
  end

  test "should show likemovie" do
    get likemovie_url(@likemovie)
    assert_response :success
  end

  test "should get edit" do
    get edit_likemovie_url(@likemovie)
    assert_response :success
  end

  test "should update likemovie" do
    patch likemovie_url(@likemovie), params: { likemovie: { director: @likemovie.director, movie_length: @likemovie.movie_length, rating: @likemovie.rating, synopsis: @likemovie.synopsis, title: @likemovie.title } }
    assert_redirected_to likemovie_url(@likemovie)
  end

  test "should destroy likemovie" do
    assert_difference('Likemovie.count', -1) do
      delete likemovie_url(@likemovie)
    end

    assert_redirected_to likemovies_url
  end
end
