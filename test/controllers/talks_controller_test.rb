require 'test_helper'

class TalksControllerTest < ActionController::TestCase
  setup do
    @talk = talks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:talks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create talk" do
    assert_difference('Talk.count') do
      post :create, talk: { notes: @talk.notes, speaker_biography: @talk.speaker_biography, speaker_company: @talk.speaker_company, speaker_email: @talk.speaker_email, speaker_name: @talk.speaker_name, speaker_twitter: @talk.speaker_twitter, talk_abstract: @talk.talk_abstract, talk_duration: @talk.talk_duration, talk_title: @talk.talk_title }
    end

    assert_redirected_to talk_path(assigns(:talk))
  end

  test "should show talk" do
    get :show, id: @talk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @talk
    assert_response :success
  end

  test "should update talk" do
    patch :update, id: @talk, talk: { notes: @talk.notes, speaker_biography: @talk.speaker_biography, speaker_company: @talk.speaker_company, speaker_email: @talk.speaker_email, speaker_name: @talk.speaker_name, speaker_twitter: @talk.speaker_twitter, talk_abstract: @talk.talk_abstract, talk_duration: @talk.talk_duration, talk_title: @talk.talk_title }
    assert_redirected_to talk_path(assigns(:talk))
  end

  test "should destroy talk" do
    assert_difference('Talk.count', -1) do
      delete :destroy, id: @talk
    end

    assert_redirected_to talks_path
  end
end
