module ApplicationHelper
  # def redcarpet(text)
  #   options = {
  #     autolink: true,
  #     tables: true,
  #     strikethrough: true,
  #     fenced_code_blocks: true
  #   }
  #   markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,options)
  #   msg = markdown.render(text)
  #   raw Sanitize.document(msg, Sanitize::Config::RELAXED)
  # end


  # Ref. https://www.lukeko.com/11/using-rouge-with-redcarpet
  def markdown(text)
    options = {
      filter_html: true,
      hard_wrap:   true
    }
    extensions = {
      autolink:           true,
      tables:             true,
      superscript:        true,
      fenced_code_blocks: true,
      strikethrough: true
    }
    # renderer = Redcarpet::Render::HTML.new(options)
    renderer = Rouge::Renderer.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)
    markdown.render(text).html_safe
  end

  def stripdown(text)
    require 'redcarpet/render_strip'
    Redcarpet::Markdown.new(Redcarpet::Render::StripDown).render(text)
  end

end
