class RockPaperScissors

  class NoSuchStrategyError < Exception
  end

  def winner(player1, player2)
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" if  !(/[RPS]/ =~ player1[1]) or !(/[RPS]/ =~ player2[1])
    if player1[1]== player2[1] or (player1[1]=="P" and player2[1]=="R") or (player1[1]=="R" and player2[1]=="S") or
        (player1[1]=="S" and player2[1]=="P")
      player1[0]
    else
      player2[0]
    end
  end
end
