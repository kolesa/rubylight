module Rubylight
  module LightHelpers
    def lightbox_tag thumb, pic, title=nil, collection=nil, html_options = {}
      basename = File.basename(pic, ".*")
      if collection
        rel << "[#{collection}]"
      end
      html_options.merge!({:title => title,  'data-lightbox' => pic})
      link_to(image_tag(thumb), pic, html_options,)
    end

    def lightbox_tag thumb, url_options = {}, title=nil, collection=nil, html_options = {}
      basename = File.basename(url_options, ".*")
      if collection
        rel << "[#{collection}]"
      end
      html_options.merge!({:title => title, 'data-lightbox' => basename})
      link_to(image_tag(thumb), url_options, html_options)
    end

  end
end
