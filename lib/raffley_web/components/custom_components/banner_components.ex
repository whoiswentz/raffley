defmodule RaffleyWeb.CustomComponents.BannerComponents do
  use RaffleyWeb, :html

  slot :inner_block, required: true
  slot :details

  def banner(assigns) do
    assigns = assign(assigns, :emoji, ~w(😀 😍 😇) |> Enum.random())

    ~H"""
    <div class="banner">
      <h1>
        <%= render_slot(@inner_block) %>
      </h1>
      <div :for={detail <- @details} class="details">
        <%= render_slot(detail, @emoji) %>
      </div>
    </div>
    """
  end
end
