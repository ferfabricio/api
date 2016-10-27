defmodule Api.EventControllerTest do
  use Api.ConnCase

  test "GET /events", %{conn: conn} do
    conn = get conn, "/events"
    assert json_response(conn, 200) == %{
      "events" => [%{
        "title" => ,
        "description" => todo.description,
        "date" => "",
        "url" => "",
        "venue" => %{
            "name" => "",
            "address" => "",
            "city" => "",
            "observation" => ""
        },
        "status" => ""
      }]
    }
  end
end
