module ApplicationHelper
  def available_in_text(gift)
    if gift.taken
      'No disponible!'
    else
      'Disponible!'
    end
  end
end
