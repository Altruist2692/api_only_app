require 'test_helper'

class TagKindsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_kind = tag_kinds(:one)
  end

  test "should get index" do
    get tag_kinds_url, as: :json
    assert_response :success
  end

  test "should create tag_kind" do
    assert_difference('TagKind.count') do
      post tag_kinds_url, params: { tag_kind: { name: @tag_kind.name } }, as: :json
    end

    assert_response 201
  end

  test "should show tag_kind" do
    get tag_kind_url(@tag_kind), as: :json
    assert_response :success
  end

  test "should update tag_kind" do
    patch tag_kind_url(@tag_kind), params: { tag_kind: { name: @tag_kind.name } }, as: :json
    assert_response 200
  end

  test "should destroy tag_kind" do
    assert_difference('TagKind.count', -1) do
      delete tag_kind_url(@tag_kind), as: :json
    end

    assert_response 204
  end
end
