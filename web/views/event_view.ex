defmodule Api.EventView do
    use Api.Web, :view

    def render("event.json", %{events: events}) do
        events
    end
end