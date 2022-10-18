defmodule FirehoseWeb.QuotationView do
  use FirehoseWeb, :view
  alias FirehoseWeb.QuotationView

  def render("index.json", %{qutations: qutations}) do
    %{data: render_many(qutations, QuotationView, "quotation.json")}
  end

  def render("show.json", %{quotation: quotation}) do
    %{data: render_one(quotation, QuotationView, "quotation.json")}
  end

  def render("quotation.json", %{quotation: quotation}) do
    %{
      id: quotation.id,
      author: quotation.author,
      text: quotation.text
    }
  end
end
