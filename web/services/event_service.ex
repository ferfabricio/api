defmodule Api.EventService do
  use Api.Web, :service

  def get(conn) do
  	url = conn.host <> ":" <> Integer.to_string(conn.port) <> "/json/events.json"
    response = HTTPotion.get  url
    if HTTPotion.Response.success?(response) do
    	Poison.decode!(response.body)
    else
    	%{"error": %{"code": 404, "message": "events not found"}}
    end
  end
end
