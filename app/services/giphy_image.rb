class GiphyImage < OpenStruct

  def url_for(style= :static)
    case style
      when :static
        self.images.fixed_width.url
      when :source
        self.url
      when :gif
        self.images.original.url
      else
        nil
    end
  end
end
