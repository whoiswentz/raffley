defmodule RaffleyWeb.RaffleLive.Index do
  alias Raffley.Raffles
  use RaffleyWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, :raffles, Raffles.list_raffles())
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="raffle-index">
      <div class="raffles">
        <div :for={raffle <- @raffles} class="card">
          <img src={raffle.image_path} alt={raffle.description} />
          <h2><%= raffle.prize %></h2>
          <div class="details">
            <div class="price">
              $<%= raffle.ticket_price %> / tickets
            </div>
            <div class="badge">
              <%= raffle.status %>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end
end
