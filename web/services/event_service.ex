defmodule Api.EventService do
  use Api.Web, :service

  def get() do
    response = HTTPotion.get "http://localhost:4000/json/events.json"
    if HTTPotion.Response.success?(response) do
    	Poison.decode!(response.body)
    else
    	%{"error": %{"code": 404, "message": "events not found"}}
    end
  end
end
