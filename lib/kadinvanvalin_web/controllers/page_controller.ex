defmodule KadinvanvalinWeb.PageController do
  use KadinvanvalinWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
