module CinemasHelper
	def format_total_gross(cinema)
      if cinema.flop?
          content_tag(:strong, 'Flop!')
      else
          # number_to_currency(cinema.total_gross.to_f.round(2))
          number_to_currency(cinema.total_gross)
      end
  end

  def image_for(movie)    

    if cinema.image_file_name.blank?
      image_tag('placeholder.png')
    else
      image_tag(cinema.image_file_name)
    end
  end
  
  def format_average_stars(cinema)
    if cinema.average_stars.nil?
        content_tag(:strong, 'No reviews')
    else
        # "*" * cinema.average_stars.round
        pluralize(number_with_precision(cinema.average_stars, precision: 1) , 'star')
    end
  end

end