module ApplicationHelper
  include HtmlBuilder

  def document_title
    if @title.present?
      "#{@title} - dev_relation"
    else
      "Baukis2"
    end
  end
end
