module GamesHelper
  
  def genre_names
    [
      ['Action', 'Action'],
      ['Adventure', 'Adventure'],
      ['Fighting', 'Fighting'],
      ['Racing', 'Racing'],
      ['RPG', 'RPG'],
      ['Sports', 'Sports'],
      ['Strategy', 'Strategy'],
      ['Other', 'Other']
    ]
  end
  def rating_list
    [
      ['EC', 'EC'],
      ['E','E'],
      ['E10','E10'],
      ['T','T'],
      ['M','M'],
      ['AO','AO'],
      ['RP','RP']
    ]
  end
  def add
    List.create(game_id: @game.id, user_id: @current.id, gone_out: false, time: Date.today)
  end
  
end
