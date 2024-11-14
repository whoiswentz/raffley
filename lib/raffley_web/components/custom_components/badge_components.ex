defmodule RaffleyWeb.CustomComponents.BadgeComponents do
  use RaffleyWeb, :html

  attr :status, :atom, values: [:open, :closed, :upcomming], default: :upcomming
  attr :class, :string, default: nil
  attr :rest, :global

  def status_badge(assigns) do
    ~H"""
    <div
      class={[
        "rounded-md px-2 py-1 text-xs font-medium uppercase inline-block border",
        @status == :open && "text-lime-600 border-lime-600",
        @status == :upcomming && "text-amber-600 border-amber-600",
        @status == :closed && "text-gray-600 border-gray-600",
        @class
      ]}
      {@rest}
    >
      <%= @status %>
    </div>
    """
  end
end
