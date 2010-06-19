module HoboFields

  class RawMarkdownString < HoboFields::Text

    HoboFields.register_type(:raw_markdown, self)

    def to_html(xmldoctype = true)
      blank? ? "" : RDiscount.new(self).to_html
    end

  end

end
