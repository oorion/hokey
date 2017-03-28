class HokeyPokey
  def verse(number)
    body_part = BodyPart.for(number)

    "You put your #{body_part.side(number)}#{body_part.specific_body_part(number)} in\n" +
    "You put your #{body_part.side(number)}#{body_part.specific_body_part(number)} out\n" +
    "You put your #{body_part.side(number)}#{body_part.specific_body_part(number)} in\n" +
    "And you shake it all about\n" +
    "You do the Hokey Pokey and you turn yourself around\n" +
    "That's what it's all about!\n"
  end

  def song
    (1..6).map { |number| verse(number) }.join("\n")
  end
end

class BodyPart
  def self.for(number)
    case number
    when 1, 2
      Foot
    when 3, 4
      Hand
    when 5
      Head
    when 6
      Self
    end.new
  end

  def side(number)
    if number % 2 == 1
      "right "
    else
      "left "
    end
  end
end

class Foot < BodyPart
  def specific_body_part(number)
    "foot"
  end
end

class Hand < BodyPart
  def specific_body_part(number)
    "hand"
  end
end

class Head < BodyPart
  def specific_body_part(number)
    "head"
  end

  def side(number)
    ""
  end
end

class Self < BodyPart
  def specific_body_part(number)
    "self"
  end

  def side(number)
    "whole "
  end
end
