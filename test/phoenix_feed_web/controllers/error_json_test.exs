defmodule PhoenixFeedWeb.ErrorJSONTest do
  use PhoenixFeedWeb.ConnCase, async: true

  test "renders 404" do
    assert PhoenixFeedWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert PhoenixFeedWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
