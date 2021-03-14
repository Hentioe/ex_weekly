defmodule ExWeeklyWeb.PageController do
  use ExWeeklyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
