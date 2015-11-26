module ApplicationHelper
  def markdown(text)
    rc = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    rc.render(text)
  end
end
