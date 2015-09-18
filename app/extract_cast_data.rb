class ExtractCastData
  def initialize(episode, char_seperator='/')
    @episode = episode
    @char_seperator = char_seperator
  end

  def extract
    puts @episode.member_characters

    members_and_chars = eval(@episode.member_characters).map do |s|
      pair = s.split('=>').map(&:strip)
      [pair[0], pair[1]]
    end

    members_and_chars.each do |array|
      characters = array.last.split(@char_seperator).map(&:strip)
      characters.each do |char|
        Cast.create({
          full_name: array.first,
          character_name: char,
          episode_id: @episode.id
        })
      end
    end
  end
end
