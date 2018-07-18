defmodule NewParadyme.ChannelsController do
    use NewParadyme.Web, :controller

    def index(conn, _params) do
        render conn, "channels.html"
    end
end