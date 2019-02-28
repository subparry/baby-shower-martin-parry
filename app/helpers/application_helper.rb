module ApplicationHelper
  def available_in_text(gift)
    if gift.taken
      'No disponible!'
    else
      'Disponible!'
    end
  end

  def taken_class(gift)
    if gift.taken
      'taken'
    end
  end
end
