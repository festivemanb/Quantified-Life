require 'test_helper'

class DailyEntriesControllerTest < ActionController::TestCase
  setup do
    @daily_entry = daily_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_entry" do
    assert_difference('DailyEntry.count') do
      post :create, daily_entry: { activity: @daily_entry.activity, coffee: @daily_entry.coffee, date: @daily_entry.date, drinks: @daily_entry.drinks, mood: @daily_entry.mood, notes: @daily_entry.notes, people_talked: @daily_entry.people_talked, rating: @daily_entry.rating, text: @daily_entry.text }
    end

    assert_redirected_to daily_entry_path(assigns(:daily_entry))
  end

  test "should show daily_entry" do
    get :show, id: @daily_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_entry
    assert_response :success
  end

  test "should update daily_entry" do
    patch :update, id: @daily_entry, daily_entry: { activity: @daily_entry.activity, coffee: @daily_entry.coffee, date: @daily_entry.date, drinks: @daily_entry.drinks, mood: @daily_entry.mood, notes: @daily_entry.notes, people_talked: @daily_entry.people_talked, rating: @daily_entry.rating, text: @daily_entry.text }
    assert_redirected_to daily_entry_path(assigns(:daily_entry))
  end

  test "should destroy daily_entry" do
    assert_difference('DailyEntry.count', -1) do
      delete :destroy, id: @daily_entry
    end

    assert_redirected_to daily_entries_path
  end
end
