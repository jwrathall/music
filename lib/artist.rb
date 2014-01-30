class Artist
  #TODO create a base class of Artists and rename this to search_artist and inherit from artist
  attr_accessor :relevance, :id, :type ,:name, :country_id, :country_id, :country_name, :area_id, :area_name, :start, :stop, :members, :genre, :description
  def relevance=(relevance)
    @relevance = relevance
  end
  def id=(id)
     @id = id
  end
  def name=(name)
    @name = name
  end
  def type=(type)
    @type = type
  end
  def country_id=(id)
    @country_id=id
  end
  def country_name=(country_name)
    @country_name = country_name
  end
  def area_id=(id)
    @area_id = id
  end
  def area_name=(area_name)
    @area_name = area_name
  end
  def start=(start)
    @start = start
  end
  def stop=(stop)
    @stop = stop
  end
  def members=(members)
    @members = members
  end
  def genre=(genre)
    #needs to be an array to hold the tag types
    @genre = genre
  end

  def description=(description)
    @description = description
  end

end